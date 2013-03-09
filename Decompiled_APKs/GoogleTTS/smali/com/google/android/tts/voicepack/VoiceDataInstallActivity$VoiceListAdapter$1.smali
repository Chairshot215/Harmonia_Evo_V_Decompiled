.class Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$1;
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
    .line 172
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$1;->this$1:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;

    iput-object p2, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$1;->val$voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$1;->this$1:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;

    iget-object v0, v0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$1;->val$voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    invoke-virtual {v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->handleDeleteVoice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$400(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Ljava/lang/String;)V

    .line 176
    return-void
.end method
