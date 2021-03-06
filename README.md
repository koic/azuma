# azuma (雷) [![Build Status](https://travis-ci.org/koic/azuma.svg)](https://travis-ci.org/koic/azuma) [![Gem Version](https://badge.fury.io/rb/azuma.svg)](http://badge.fury.io/rb/azuma)

Decide the order of Lightning Talkers.

## INSTALL

```
$ gem install azuma
```

## USAGE

```
azuma --talkers="小栗虫太郎,夢野久作,塔晶夫" --lang=ja
Ctrl-D to exit
> press enter to show next talker
次は塔晶夫さんの番です。
> press enter to show next talker
次は小栗虫太郎さんの番です。
> press enter to show next talker
次は夢野久作さんの番です。
> press enter to show next talker
すべての発表が終わりました。お疲れ様でした。
```

### OPTIONS

```
Usage: azuma [options]
    -t, --talkers="NAME1,NAME2..."
    -l, --lang=ja (DEFAULT en)
```

## LICENCE

azuma (雷) is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
