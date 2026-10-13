import Foundation

/// Where this fork sends everything AssemblyAI's hosts would otherwise receive.
///
/// The server implements the same documented dictation routes the clients already speak
/// (`POST /v1/transcribe/live`, `GET /warm`, `GET /v2/transcript`), so `AssemblyAITranscriber` and
/// `APIKeyValidator` are unchanged apart from their default base URL. Read-aloud's two endpoints point here
/// too, so no request — audio, text or key — reaches AssemblyAI from this build.
public enum SelfHostedServer {
  public static let base = URL(staticString: "https://stt-lab-direct-ap-south-1-private.pipeshift.com")
  static let chatCompletions = URL(
    staticString: "https://stt-lab-direct-ap-south-1-private.pipeshift.com/v1/chat/completions")
  static let speechWebSocket = URL(staticString: "wss://stt-lab-direct-ap-south-1-private.pipeshift.com/v1/ws/")
}
