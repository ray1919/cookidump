# cookidump

Easily dump cookidoo recipes from the official website

### Description ###

This program allows you to dump all recipes on [Cookidoo.com.cn](https://cookidoo.com.cn) websites for offline and posticipate reading.
Those recipes are valid in particular for [Thermomix/Bimby](https://en.wikipedia.org/wiki/Thermomix) devices.
In order to dump the recipes, a valid subscription is needed.

The initial concept of this program was based on [auino/cookidump](https://github.com/auino/cookidump).

### Installation ###


1. Clone the repository:

```
git clone https://github.com/ray1919/cookidump.git
```

2. `cd` into the download folder

3. Install [Python](https://www.python.org) requirements:

```
pip install -r requirements.txt
```

4. Install the [Google Chrome](https://chrome.google.com) browser, if not already installed

5. Download the [Chrome WebDriver](https://sites.google.com/a/chromium.org/chromedriver/) and **unzip** it to the `cookidump` folder

6. You are ready to dump your recipes

### Usage ###

Simply run the following command to start the program in **Linux** terminal. The program is interactive to simplify it's usage.

```
python cookidump.py <webdriverfile> <outputdir>
```

where:
* `webdriverfile` identifies the path to the downloaded [Chrome WebDriver](https://sites.google.com/a/chromium.org/chromedriver/) (for instance, `./chromedriver` for Linux and macOS hosts)
* `outputdir` identifies the path of the output directory

The program will open a [Google Chrome](https://chrome.google.com) window and wait until you are logged in into your [Cookidoo](https://cookidoo.co.uk) account (different countries are supported).
After that, press return in the command line and it will search for all recipes IDs and download them as HTML files.

When running again in the same path, it will only download the missing recipes.

### Other approaches ###

A different approach, previously adopted, is based on the retrieval of structured data on recipes.
More information can be found on the [datastructure branch](https://github.com/auino/cookidump/tree/datastructure).
Output is represented in this case in a different (structured) format, hence, it has to be interpreted. Such interpretation is not implemented in the linked previous commit.

### TODO ###

* Parse downloaded recipes to store them on a database or to generate readable output files (e.g. HTML, PDF, etc.)
* Make Chrome run headless for better speeds
* Set up a dedicated container for the program

### Disclaimer ###

The authors of this program are not responsible of the usage of it.
This program is released only for research and dissemination purposes.
Also, the program provides users the ability to locally and temporarily store recipes accessible through a legit subscription.
Before using this program, check Cookidoo subscription terms of service, according to the country related to the exploited subscription. 
Sharing of the obtained recipes is not a legit activity and the authors of this program are not responsible of any illecit and sharing activity accomplished by the users.

### Contacts ###

You can find me using issue.
