.class Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$3;
.super Ljava/lang/Object;
.source "VoiceDataInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;

.field final synthetic val$voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;


# direct methods
.method constructor <init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$3;->this$1:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;

    iput-object p2, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$3;->val$voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$3;->this$1:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;

    iget-object v0, v0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;
    invoke-static {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$500(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$3;->val$voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->enqueueDownload(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;Z)V

    .line 197
    return-void
.end method
