#Site Uploader
Users currently have the ability to create new sites in our system by sending a
list of domains in a POST to ```/sites```. We would like to populate the ```alexa_rank```
and ```google_rank``` for each site after it has been created using the
[page_rankr gem](https://github.com/blatyo/page_rankr). Since this could be slow,
we want the page ranking work to be done in the background after we have responded
to the user.

Your task is to implement this feature using the background job processor of your
choice.
