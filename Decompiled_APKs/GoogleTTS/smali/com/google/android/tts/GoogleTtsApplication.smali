.class public Lcom/google/android/tts/GoogleTtsApplication;
.super Landroid/app/Application;
.source "GoogleTtsApplication.java"


# instance fields
.field private mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

.field private mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

.field private mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

.field private mTtsConfig:Lcom/google/android/tts/TtsConfigImpl;

.field private mUrlRewriter:Lcom/google/android/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/tts/GoogleTtsApplication;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/GoogleTtsApplication;

    return-object v0
.end method


# virtual methods
.method public getLangCountryHelper()Lcom/google/android/tts/local/LangCountryHelper;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

    return-object v0
.end method

.method public getMetadataManager()Lcom/google/android/tts/voicepack/MetadataManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    return-object v0
.end method

.method public getTtsConfig()Lcom/google/android/tts/TtsConfig;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mTtsConfig:Lcom/google/android/tts/TtsConfigImpl;

    return-object v0
.end method

.method public getUrlRewriter()Lcom/google/android/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mUrlRewriter:Lcom/google/android/common/base/Function;

    return-object v0
.end method

.method public getVoiceDataManager()Lcom/google/android/tts/voicepack/VoiceDataManager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    return-object v0
.end method

.method public getVoiceDownloadManager()Lcom/google/android/tts/voicepack/VoiceDownloadHelper;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    new-instance v0, Lcom/google/android/tts/voicepack/VoiceDataManager;

    invoke-direct {v0, p0}, Lcom/google/android/tts/voicepack/VoiceDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    .line 25
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    invoke-virtual {v0}, Lcom/google/android/tts/voicepack/VoiceDataManager;->updateAvailableLangs()V

    .line 27
    new-instance v0, Lcom/google/android/tts/TtsConfigImpl;

    invoke-direct {v0, p0}, Lcom/google/android/tts/TtsConfigImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mTtsConfig:Lcom/google/android/tts/TtsConfigImpl;

    .line 28
    new-instance v0, Lcom/google/android/tts/GservicesUrlRewriter;

    invoke-direct {v0, p0}, Lcom/google/android/tts/GservicesUrlRewriter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mUrlRewriter:Lcom/google/android/common/base/Function;

    .line 29
    new-instance v0, Lcom/google/android/tts/voicepack/MetadataManager;

    iget-object v1, p0, Lcom/google/android/tts/GoogleTtsApplication;->mTtsConfig:Lcom/google/android/tts/TtsConfigImpl;

    iget-object v2, p0, Lcom/google/android/tts/GoogleTtsApplication;->mUrlRewriter:Lcom/google/android/common/base/Function;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/tts/voicepack/MetadataManager;-><init>(Landroid/content/Context;Lcom/google/android/tts/TtsConfig;Lcom/google/android/common/base/Function;)V

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    .line 30
    new-instance v0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    iget-object v1, p0, Lcom/google/android/tts/GoogleTtsApplication;->mTtsConfig:Lcom/google/android/tts/TtsConfigImpl;

    invoke-direct {v0, p0, v1}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;-><init>(Landroid/content/Context;Lcom/google/android/tts/TtsConfig;)V

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    .line 31
    new-instance v0, Lcom/google/android/tts/local/LangCountryHelper;

    iget-object v1, p0, Lcom/google/android/tts/GoogleTtsApplication;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    iget-object v2, p0, Lcom/google/android/tts/GoogleTtsApplication;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-direct {v0, v1, v2}, Lcom/google/android/tts/local/LangCountryHelper;-><init>(Lcom/google/android/tts/voicepack/VoiceDataManager;Lcom/google/android/tts/voicepack/MetadataManager;)V

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

    .line 32
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    invoke-virtual {v0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->onClose()V

    .line 65
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsApplication;->mTtsConfig:Lcom/google/android/tts/TtsConfigImpl;

    invoke-virtual {v0}, Lcom/google/android/tts/TtsConfigImpl;->onClose()V

    .line 66
    return-void
.end method
