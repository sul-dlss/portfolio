[![Build Status](https://travis-ci.org/sul-dlss/portfolios.svg)](https://travis-ci.org/sul-dlss/portfolios) [![Coverage Status](https://coveralls.io/repos/sul-dlss/portfolios/badge.svg?branch=master&service=github)](https://coveralls.io/github/sul-dlss/portfolios?branch=master) [![Dependency Status](https://gemnasium.com/sul-dlss/portfolios.svg)](https://gemnasium.com/sul-dlss/portfolios)

# SUL Portfolios

Similar to Exhibits, Portfolios is a SUL Spotlight application. In fact, this is just a copy of Exhibits code with different configuration and data.
It is literally still `Exhibits::Application`.

## Configuration

Exhibits need to provide the following configuration files:

* `config/database.yml` - Standard Rails database configuration
* `config/blacklight.yml` - Blacklight solr configuration
* `config/gdor.yml` - gdor indexer configuration (i.e. url of dor-fetcher service and purl url basenames), use `config/gdor.yml.example` as a template
* `config/exhibit.yml` - Exhibit indexing directives (in addition to the indexer configuration above). It can contain environment-specific sets that should be synchronized using the `rake spotlight:reindex` task. E.g.:
```yaml
production:
  sets:
    - is_member_of_oo000oo0000
    - is_member_of_oo000oo0001
```

* `config/initializers/secret_token.rb` - Rails secret token
* `config/initializers/squash.rb` - Squash error reporting configuration
* `public/.htaccess` - An Apache .htaccess file with the necessary passenger configuration, e.g.:

```
PassengerBaseURI /my-exhibit
PassengerAppRoot /home/lyberadmin/exhibits/my-exhibit/current
WebAuthLdapPrivgroup dlss:exhibits-admin
```

## Reindexing content

A rake task is provided to (re)index content into the Solr index. It uses the configured sets in `config/exhibit.yml`.

```bash
$ rake spotlight:reindex
```

A `whenever`-based cron task is configured to run nightly to keep the exhibit synchronized with the latest upstream changes. At this time, the task only adds or modifies records, and does not remove records that have been deleted or disassociated with the given OAI set.

## Development

You can spin up the rails server, jetty, and populate the solr index using this command:

```bash
$ REMOTE_USER="archivist1@example.com" rake server
```

`REMOTE_USER` should match the name of the user you create when prompted. This will allow you to bypass the webauth authentication.

Note that the `blacklight-spotlight` gem requires `mini_magick` which requires ImageMagick to be installed (e.g., `brew install imagemagick`)
