import Flutter
import UIKit
import iDenfySDK
import idenfycore
import idenfyviews

public class SwiftIdenfySdkFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "idenfy_sdk_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftIdenfySdkFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
                   /**
                    * Changing common idenfy colors
                    */
                    IdenfyCommonColors.idenfyBackgroundColorV2 = Color.init(hexString: "FFFFFF")
                    IdenfyCommonColors.idenfyMainColorV2 = Color.init(hexString: "0F52FF")
                    IdenfyCommonColors.idenfyMainDarkerColorV2 = Color.init(hexString: "0F52FF")
                    IdenfyCommonColors.idenfySecondColorV2 = Color.init(hexString: "030039")
               //     IdenfyCommonColors.idenfyMainColor50percentV2 = UIColor(fromHex: "#800F52FF")
               //     IdenfyCommonColors.idenfySecondColor6percentV2 = UIColor(fromHex: "#0F0F52FF")
               //     IdenfyCommonColors.idenfySecondColor20percentV2 = UIColor(fromHex: "#440F52FF")
               //       IdenfyCommonColors.idenfySecondColor50percentV2
               //       IdenfyCommonColors.idenfySecondColor80percentV2
               //     IdenfyCommonColors.idenfyInactiveColorV2 = IdenfyCommonColors.idenfyMainColorV2
             //       IdenfyCommonColors.idenfyTransparentCameraOverlayV2 = Color.init(hexString: "4D030039")
    //                IdenfyCommonColors.idenfyErrorRedColorV2 = Color.init(hexString: "FF005C")
                    IdenfyCommonColors.idenfyErrorLightRedColorV2 = Color.init(hexString: "FBE7EF")
    //                IdenfyCommonColors.idenfyGreenColorV2 = Color.init(hexString: "00A351")
    //                IdenfyCommonColors.idenfyPhotoResultBackgroundColor = IdenfyCommonColors.idenfySecondColorV2
    //                IdenfyCommonColors.idenfyHelpSheetOverlay = Color.init(hexString: "99030039")
    //                IdenfyCommonColors.idenfyCameraBackArrowResultsColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionsVideoBackgroundColor = Color.init(hexString: "B9BEBF")
                    IdenfyCommonColors.idenfyBlack = IdenfyCommonColors.idenfySecondColorV2

                    IdenfyToolbarUISettingsV2.idenfyLogoHeight = 26
                    IdenfyToolbarUISettingsV2.idenfyLogoWidth = 199

    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyInstructionDocumentsCameraSessionInformationTextViewColor = Color.init(hexString: "ffffff")
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyInstructionDocumentsCameraSessionTitleColor = Color.init(hexString: "ffffff")
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyInstructionDocumentsCameraSessionBackArrowColor = Color.init(hexString: "ffffff")
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyInstructionDocumentsCameraSessionBackTextViewColor = Color.init(hexString: "ffffff")
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyInstructionFaceCameraSessionInformationTextViewColor = Color.init(hexString: "ffffff")
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyInstructionFaceCameraSessionBackArrowColor = Color.init(hexString: "ffffff")
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyInstructionFaceCameraSessionBackTextViewColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionExpandTopLayoutButtonColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionCurrentInstructionContentTextColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionCurrentInstructionContentTitleColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionNextInstructionPageButtonColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionPreviousInstructionPageButtonColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionDoneInstructionPageButtonColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionInactiveDotColor = Color.init(hexString: "ffffff")
    //                IdenfyCommonColors.idenfyInstructionSelectedDotColor = Color.init(hexString: "CFD9EF")

                    /** Android : idenfy_colors_country_selection_ciew */
    //                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryRecyclerViewBackgroundColor = IdenfyCommonColors.idenfyWhite

                    /** Android : idenfy_colors_document_camera_preview_session */
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionExpandButtonTintColor = IdenfyCommonColors.idenfyWhite
    //                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionCurrentInstructionContentTextColor = IdenfyCommonColors.idenfyWhite

                    /** Android : idenfy_colors_document_selection_view */
    //                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewRecyclerViewBackgroundColor = IdenfyCommonColors.idenfyWhite
                    IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewContinueButtonDisabledTextColor = IdenfyCommonColors.idenfyWhite

                    /** Android : idenfy_colors_face_camera_session */
    //                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionExpandButtonTintColor = IdenfyCommonColors.idenfyWhite
    //                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionCurrentInstructionContentTextColor = IdenfyCommonColors.idenfyWhite
    //                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionLivenessMaskColor = IdenfyCommonColors.idenfyBlack
    //                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionInstructionLivenessMaskColor = IdenfyCommonColors.idenfyBlack

                    /** Android : idenfy_colors_idenfy_buttons */
                    IdenfyButtonsUISettingsV2.idenfyGradientButtonColorEnd = IdenfyCommonColors.idenfyMainDarkerColorV2

                    /** Android : idenfy_colors_provider_selection_view */
    //                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderRecyclerViewBackgroundColor = IdenfyCommonColors.idenfyWhite

        if call.method == "getPlatformVersion" {
          result("iOS " + UIDevice.current.systemVersion)
        } else if call.method == "start" {
            if let arguments = call.arguments as? [String: Any],
               let authToken = arguments["authToken"] as? String {

                /**
                 * Camera rectangle will be hidden ONLY for French driving license
                 */
                var countryDocumentMap: [String: [DocumentTypeEnum]] = [:]
                countryDocumentMap["FR"] = [DocumentTypeEnum.DRIVER_LICENSE]

                let documentCameraFrameVisibility = DocumentCameraFrameVisibility.hiddenForSpecificCountriesAndDocumentTypes(countryDocumentMap: countryDocumentMap)

                let idenfyUISettingsV2 = IdenfyUIBuilderV2()
                    /**
                    * Camera rectangle will be hidden ONLY for Lithuanian passport
                    */
                    .withDocumentCameraFrameVisibility(documentCameraFrameVisibility).build()

                let idenfySettingsV2 = IdenfyBuilderV2()
                    .withAuthToken(authToken)
                    .withUISettingsV2(idenfyUISettingsV2)
                    .build()

                let idenfyController = IdenfyController.shared
                idenfyController.initializeIdenfySDKV2WithManual(idenfySettingsV2: idenfySettingsV2)
                let idenfyVC = idenfyController.instantiateNavigationController()

                UIApplication.shared.keyWindow?.rootViewController?.present(idenfyVC, animated: true, completion: nil)

                idenfyController.handleIdenfyCallbacksWithManualResults(idenfyIdentificationResult: {
                    idenfyIdentificationResult
                    in
                    do {
                        let jsonEncoder = JSONEncoder()
                        let jsonData = try jsonEncoder.encode(idenfyIdentificationResult)
                        let string = String(data: jsonData, encoding: String.Encoding.utf8)
                        result(string)
                    } catch {
                    }
                })
            }
        } else if call.method == "startFaceAuth" {
            if let arguments = call.arguments as? [String: Any],
               let withImmediateRedirect = arguments["withImmediateRedirect"] as? Bool,
               let authenticationToken = arguments["token"] as? String {
                let idenfyFaceAuthUISettings = IdenfySettingsDecoder.decodeFaceAuthUISettings(arguments["idenfyFaceAuthUISettings"] as? [String : AnyObject?])
                let idenfyController = IdenfyController.shared
                let faceAuthenticationInitialization = FaceAuthenticationInitialization(authenticationToken: authenticationToken, withImmediateRedirect: withImmediateRedirect, idenfyFaceAuthUISettings: idenfyFaceAuthUISettings)
                idenfyController.initializeFaceAuthentication(faceAuthenticationInitialization: faceAuthenticationInitialization)
                let idenfyVC = idenfyController.instantiateNavigationController()
                
                UIApplication.shared.keyWindow?.rootViewController?.present(idenfyVC, animated: true, completion: nil)
                
                idenfyController.handleIdenfyCallbacksForFaceAuthentication(faceAuthenticationResult: { faceAuthenticationResult in
                    do {
                        let jsonEncoder = JSONEncoder()
                        let jsonData = try jsonEncoder.encode(faceAuthenticationResult)
                        let string = String(data: jsonData, encoding: String.Encoding.utf8)
                        result(string)
                    } catch {
                    }
                })
            }
        }
    }
}

class IdenfySettingsDecoder {
    
    static func decodeFaceAuthUISettings(_ json: [String: AnyObject?]?) -> IdenfyFaceAuthUISettings {
        let faceAuthUISettings = IdenfyFaceAuthUISettings()
        if let unwrappedLanguageSelectionNeeded = json?["isLanguageSelectionNeeded"] as? Bool {
            faceAuthUISettings.isLanguageSelectionNeeded = unwrappedLanguageSelectionNeeded
        }
        if let unwrappedSkipOnBoardingView = json?["skipOnBoardingView"] as? Bool {
            faceAuthUISettings.skipOnBoardingView = unwrappedSkipOnBoardingView
        }
        return faceAuthUISettings
    }
}
