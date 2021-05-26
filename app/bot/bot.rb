
require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
  access_token: EAAExNqrdVS4BACGWtN5eCxAavPOT1z7zjWgsZAP1O8o2cntEdTVZAkvtnOE7aYmgN5b7zvpiCb5FGgIZCIcKZAlMw9RdgEXh7p1aRiCqmdE0rTWntOZB2eELZAtC37rYLmAXe4mfDkc2gcSvVOZBz7gNKJu49cwPslUctMf3jneTLudO5C0HUPF,
  subscribed_fields: %w[feed mention name]
)

Faceboook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end