"RSpec test conditions for each category"



User - refers to the actual SNPPR user
Categories - refers to the categories that users can place images (web-hosted or personal) and webs (web site links) into
Images - refers to web-hosted images (i.e. images that are already online and linked from other sites)
URL - refers to the custom URL generated after a user creates a SNPPR output page.  This URL is specific to each output page
Personals - refers to locally-hosted images on a user machine that need to be hosted on our end before they go up to the output page
Webs - refers to the actual web sites and links that can be included on the input page

Categories
has_many :urls
Is the User logged in?
Can pictures and webs be placed into categories?
Are there picture and webs-specific categories?


Images
belongs_to :urls, :personals
describe
it "should have an image_path (address)"

What categories does an image have?
A URL (i.e. www.site.com/fancy.jpg)
A filename (fancy.jpg)
Image size (file size, pixel size)
It should be format JPG
What happens if it is PNG / GIF / Other?
Does this have alt-text?




Personals
has_many :images
Can the user upload images from their computer?
Not directly related, though can the user drag-and-drop pictures to the input page


Urls
has_many :images
belongs_to :users, :categories
Does the URL lead to the proper output page?
Does the URL shorten correctly?



Users
has_many :urls, :categories
Can the user login?
Can the user add images/links to the input page whether logged-in or not?


Webs
belongs_to :categories
Does the link lead to a working page?
Does the link lead to a safe/suspicious page?
Does the link contain metadata/screenshot that can be scraped?


Sessions(?)
