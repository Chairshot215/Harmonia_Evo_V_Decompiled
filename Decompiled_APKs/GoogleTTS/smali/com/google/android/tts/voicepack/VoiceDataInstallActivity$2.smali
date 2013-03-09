.class Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;
.super Landroid/os/AsyncTask;
.source "VoiceDataInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->handleDeleteVoice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

.field final synthetic val$voiceLocale:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    iput-object p2, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->val$voiceLocale:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;
    invoke-static {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$300(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/voicepack/VoiceDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->val$voiceLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/tts/voicepack/VoiceDataManager;->deleteVoiceData(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;
    invoke-static {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$700(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/local/LangCountryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/tts/local/LangCountryHelper;->updateLocaleList()V

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 206
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #calls: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->onActiveDownloadSetChanged()V
    invoke-static {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$000(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)V

    .line 217
    return-void
.end method
