#!/usr/bin/env groovy
@Grapes(
@Grab('org.codenarc:CodeNarc:1.5')
)
@GrabExclude('org.codehaus.groovy:groovy-xml')
import org.codenarc.CodeNarc

org.codenarc.CodeNarc.main([
 "-basedir=${args[0]}",
 "-includes=**/${args[1]}",
 "-rulesetfiles=StarterRuleSet-AllRulesByCategory.groovy.txt",
 "-report=console"
] as String[])

