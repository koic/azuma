# russian_roulette

Decide the order of lightning talkers.

## USAGE

```ruby
talkers = %w(
  岩本
  杉野
  馬場
)

roulette = RussianRoulette.entry(talkers)

roulette.next_talker
```

## LICENCE

The MIT Licence

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
