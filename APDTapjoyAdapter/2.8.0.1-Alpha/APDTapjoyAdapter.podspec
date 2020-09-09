
Pod::Spec.new do |spec|
	spec.name  			= "APDTapjoyAdapter"
	spec.version 		= "2.8.0.1-Alpha"
	spec.summary 		= "Appodeal adapter for Tapjoy"
	spec.description = <<-DESC
    Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                   DESC
	spec.homepage     = "https://appodeal.com"
	spec.license      = { :type => "Copyright", :text => "Copyright 2019. Appodeal, Inc." }
	spec.author       = { "Appodeal, Inc" => "https://appodeal.com" }

	spec.platform     = :ios, "9.0"
	spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/Appodeal/Modular/APDTapjoyAdapter/#{spec.version}/APDTapjoyAdapter.zip" }
	
	spec.static_framework 		= true
	spec.vendored_libraries 	= "APDTapjoyAdapter.embeddedframework/*.a"
	spec.swift_versions 		= "4.0", "4.2", "5.0"
	spec.source_files 			= "Dummy.swift"

	spec.dependency "Appodeal", "2.8.0-Alpha"
	spec.dependency "TapjoySDK", "12.6.1"
end
	