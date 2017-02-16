license = <<EOT
Copyright (C) 2011 GUI Cocoa, LLC.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
EOT

Pod::Spec.new do |s|
  s.name         = "Errbit-iOS"
  s.version      = "3.2.1"
  s.summary      = "A Airbrake Compatible Notifier for iOS."
  s.homepage     = "http://airbrake.io/pages/ios-notifier"
  s.author       = { "Airbrake" => "support@airbrake.io" }
  s.license      = { :type => 'MIT', :text => <<-LICENSE

                 Copyright (C) 2011 GUI Cocoa, LLC.
                 
                 Permission is hereby granted, free of charge, to any person obtaining a copy
                 of this software and associated documentation files (the "Software"), to deal
                 in the Software without restriction, including without limitation the rights
                 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
                 copies of the Software, and to permit persons to whom the Software is
                 furnished to do so, subject to the following conditions:
                 
                 The above copyright notice and this permission notice shall be included in
                 all copies or substantial portions of the Software.
                 
                 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
                 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
                 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
                 THE SOFTWARE.

LICENSE
}  
  s.source       = { :git => "https://github.com/airbrake/airbrake-ios.git", :tag => "3.1.0" }
  s.source_files = 'ErrbitNotifier/{notifier,gcalertview}/*.{h,m}'
  s.resources    = "ErrbitNotifier/notifier/*.lproj"
  s.frameworks   = 'SystemConfiguration'  
  s.libraries    = 'xml2'
  s.dependency   'KissXML', '5.0.3'
  s.dependency 	 'KissXML/libxml_module'
  s.xcconfig     = { 
  					'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"',
	  				'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
					}
  s.pod_target_xcconfig = { 
		'GCC_NO_COMMON_BLOCKS' => 'NO'
	  }
  s.requires_arc = true
end
