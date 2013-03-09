.class public Lcom/google/android/voicesearch/VoiceSearchContainerImpl;
.super Ljava/lang/Object;
.source "VoiceSearchContainerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/VoiceSearchContainer;


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private final mContext:Landroid/content/Context;

.field private final mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

.field private final mDeviceCapabilityManager:Lcom/google/android/voicesearch/DeviceCapabilityManager;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private final mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private final mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

.field private mVoiceImeLanguageUpdater:Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;

.field private final mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/google/android/voicesearch/GservicesHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 59
    new-instance v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 60
    new-instance v0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;Lcom/google/android/voicesearch/logging/VoiceSearchLogger;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 62
    new-instance v0, Lcom/google/android/voicesearch/LanguagePrefManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 63
    new-instance v0, Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/util/AccountHelper;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 64
    new-instance v0, Lcom/google/android/voicesearch/util/CookieStore;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/util/CookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    .line 65
    new-instance v0, Lcom/google/android/voicesearch/DeviceCapabilityManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mDeviceCapabilityManager:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    .line 66
    new-instance v0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceImeLanguageUpdater:Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;

    .line 68
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/LocationHelperImpl;->hasGoogleSettingsProvider(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/google/android/voicesearch/LocationHelperImpl;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/LocationHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/DummyLocationHelper;

    invoke-direct {v0}, Lcom/google/android/voicesearch/DummyLocationHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized createRecognitionController()Lcom/google/android/voicesearch/speechservice/RecognitionController;
    .locals 6

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v2

    new-instance v3, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    iget-object v4, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;

    iget-object v5, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ServerConnector;Lcom/google/android/voicesearch/speechservice/MicrophoneManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    return-object v0
.end method

.method public getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    return-object v0
.end method

.method public getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mDeviceCapabilityManager:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    return-object v0
.end method

.method public getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    return-object v0
.end method

.method public getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    return-object v0
.end method

.method public getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    return-object v0
.end method

.method public getPersonalizationPrefManager()Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    return-object v0
.end method

.method public declared-synchronized getVoiceImeLanguageUpdater()Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceImeLanguageUpdater:Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    return-object v0
.end method
