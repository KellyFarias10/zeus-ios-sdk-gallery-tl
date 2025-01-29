Pod::Spec.new do |spec|
  spec.name          = "ZeusGalleryTl"
  spec.version       = "1.0.0"
  spec.summary       = "ZeusGalleryTl SDK"
  spec.description   = <<-DESC
  Framework for apply for tl.
                       DESC
  spec.homepage      = "https://sistemasinfraestructuraupx.jfrog.io"
  spec.license       = "MIT"
  spec.author        = { "Kelly Farias" => "kelly.farias@elektra.com.mx" }
  spec.platform      = :ios, "15.0"
  spec.swift_version = '5.9.2'

  spec.source        = { :git => "https://github.com/KellyFarias10/zeus-ios-sdk-gallery-tl.git", :branch => ENV['APP_ENVIRONMENT'] }
  spec.source_files  = "ZeusGalleryTl/**/*.{swift,plist}"
  spec.resource_bundles = {
    'ZeusWebviewsManager' => ['ZeusGalleryTl/**/*.{json,pdf,xcassets,svg}']
  }
  
  spec.dependency 'Alamofire', '4.9.1'
  spec.dependency 'ZeusSessionInfo', '2.0.1'
  spec.dependency 'TalentoZeusDesignSystem','1.6.0.rc1'
  spec.dependency 'ZeusCoreInterceptor', '1.0.14'
  spec.dependency 'UPAXNetworking','1.6.1'
  spec.dependency 'EmptyDataSet-Swift', '~> 5.0.0'
  spec.dependency 'Kingfisher', '~> 8.0'
  
  end
