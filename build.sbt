import java.nio.file.Path

scalaVersion := "2.11.12"
version := "0.0.4"

enablePlugins(SparkPackagePlugin)
name := "spark-packages-test"
javacOptions ++= Seq("--release", "11")
crossPaths := false

// spark packages stuff
spName := "venikkin/spark-packages-test"
spAppendScalaVersion := false

sparkVersion := "2.1.0"

credentials += Credentials("Spark Packages Realm",
  "spark-packages.org",
  "venikkin",
  "XXX")

licenses += "Apache-2.0" -> url("http://opensource.org/licenses/Apache-2.0")
spIncludeMaven := false