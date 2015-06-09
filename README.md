#Site Uploader

Users currently have the ability to create new sites in our system by sending a
list of domains in a POST to ```/sites```. The JSON payload would look like the
following:

```
  {
    "domains": ["google.com", "espn.com", "yahoo.com"],
    "uploader": "example_user@pk4media.com"
  }
```

We would like to save the ```alexa_rank``` for each site after it has been
created using the [page_rankr gem](https://github.com/blatyo/page_rankr). Then
when all the sites have been updated with an alexa rank, we want to send an email
to the uploader notifying them that the sites have been updated. Since
this could be slow, we want this work to be done in the background after we have
responded to the user.

Your task is to implement this feature using the background job processor of your
choice. Some popular Ruby background job processors are:

* [Sidekiq](https://github.com/mperham/sidekiq)
* [Resque](https://github.com/resque/resque)
* [Delayed Job](https://github.com/collectiveidea/delayed_job)
