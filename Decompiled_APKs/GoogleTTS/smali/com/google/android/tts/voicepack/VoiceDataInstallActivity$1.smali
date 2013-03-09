.class Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$1;
.super Landroid/database/DataSetObserver;
.source "VoiceDataInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;


# direct methods
.method constructor <init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$1;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$1;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #calls: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->onActiveDownloadSetChanged()V
    invoke-static {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$000(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)V

    .line 53
    return-void
.end method
