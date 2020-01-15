# New Website

The Belfast Elixir Group's new website.

During the meetup of the 21st November 2019 the group decided to make a meetup clone
due to the upcoming price [introduction](https://www.theverge.com/2019/10/15/20893343/meetup-users-furious-new-rsvp-payment-test)..

It was decided to split the project up into two distinct parts:

1. The website (this app)
2. An [API](https://github.com/belfastelixir/event_list) to track members of upcoming/past events

The website will then injest this API.

## Developing

### Natively

  
  * export your env vars via `local.env.template` (this isn't loaded so amend, copy, paste and execute). 
  * `mix deps.get`
  * `mix ecto.setup`
  * `cd assets && npm install`
  * `mix phx.server`

### Docker

  * `docker-compose build`
  * `docker-compose up`

Visit [`localhost:4000`](http://localhost:4000).

## Premise

We want to build a new website for the belfast elixir meetup group for several
reasons:

- [meetup.com](https://www.meetup.com) are now starting to
  [charge](https://www.theverge.com/2019/10/15/20893343/meetup-users-furious-new-rsvp-payment-test)
per RSVP.

- The site is currently just a blog, written in jekyll. It is no longer
  actively maintained.

- We want to add new sections/features to the site that will enhance the
  website for both users and admins easily, which requires more than a 'markup
blog'

## What are the features you want?

We want to replace meetup. Meetup is really, at the guts of it - a website that
allows you send out emails to a particular group and for the recipients to RSVP
to the aforementioned meetup.

So with that thinking (this is up for discussion)  we would like the following:

- Several 'static' pages:

  - Home 
  - About Us
  - Code of Conduct 
  - Contact Us
  
- Medium posts for writeups on meetups 

- TIL - some sort of oauth integration 


### Several Static Pages

Nothing fancy - just pages that don't need to be dynamically generated
everytime.

### Medium 

This [https://medium.com/retainable/how-to-embed-medium-on-your-website-the-easy-way-41ac0a13231e](article) seems to be a good place to start.

### TIL

As above


