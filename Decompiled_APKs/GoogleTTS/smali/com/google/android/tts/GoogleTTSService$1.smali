.class Lcom/google/android/tts/GoogleTTSService$1;
.super Ljava/lang/Object;
.source "GoogleTTSService.java"

# interfaces
.implements Lcom/google/android/tts/DownloadEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/GoogleTTSService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/GoogleTTSService;

.field final synthetic val$app:Lcom/google/android/tts/GoogleTtsApplication;

.field final synthetic val$metadataManager:Lcom/google/android/tts/voicepack/MetadataManager;


# direct methods
.method constructor <init>(Lcom/google/android/tts/GoogleTTSService;Lcom/google/android/tts/voicepack/MetadataManager;Lcom/google/android/tts/GoogleTtsApplication;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/tts/GoogleTTSService$1;->this$0:Lcom/google/android/tts/GoogleTTSService;

    iput-object p2, p0, Lcom/google/android/tts/GoogleTTSService$1;->val$metadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    iput-object p3, p0, Lcom/google/android/tts/GoogleTTSService$1;->val$app:Lcom/google/android/tts/GoogleTtsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enqueueDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "language"
    .parameter "country"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/tts/GoogleTTSService$1;->val$metadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/tts/voicepack/MetadataManager;->getMetadataFor(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    move-result-object v0

    .line 61
    .local v0, data:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/tts/GoogleTTSService$1;->val$app:Lcom/google/android/tts/GoogleTtsApplication;

    invoke-virtual {v1}, Lcom/google/android/tts/GoogleTtsApplication;->getVoiceDownloadManager()Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->enqueueDownload(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;Z)V

    .line 64
    :cond_0
    return-void
.end method
