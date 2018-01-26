project do
  model_version '4.0.0'

  id 'com.github.jkutner:pdfbox4r:1.0.0'
  name 'pdfbox4r'
  packaging 'pom'

  description 'PDFBox wrapper for Ruby'

  build do
    plugins do
      plugin 'org.apache.maven.plugins:maven-dependency-plugin', '3.0.2' do
        execute_goals( 'copy' ) do
          id 'copy'
          phase 'package'
          configuration('artifactItems' => {
                          'artifactItem' => {
                            'groupId' => 'org.apache.pdfbox',
                            'artifactId' => 'pdfbox-app',
                            'version' => '2.0.8',
                            'destFileName' => "pdfbox.jar"
                          }
                        }, 'outputDirectory' => '${project.basedir}/lib' )
        end
      end
    end
  end
end
