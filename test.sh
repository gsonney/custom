#!/bin/bash

grep -r -l 'au.com.siteminder.model.test.SiteminderModelDefinitions' . | sort | uniq | xargs perl -e "s/au.com.siteminder.model.test.SiteminderModelDefinitions/com.siteminder.test.ChannelManagerModelDefinitions/" -pi;
grep -r -l 'au.com.siteminder.model.test.ModelFactory' . | sort | uniq | xargs perl -e "s/au.com.siteminder.model.test.ModelFactory/com.siteminder.test.ModelFactory/" -pi;
grep -r -l 'new SiteminderModelDefinitions().initialize()' . | sort | uniq | xargs perl -e "s/SiteminderModelDefinitions\(\).initialize/ChannelManagerModelDefinitions\(\).initialize/" -pi;


