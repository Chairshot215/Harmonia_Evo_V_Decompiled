.class public Lcom/google/android/voicesearch/GservicesBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GservicesBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    .line 46
    .local v1, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v2

    .line 47
    .local v2, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v3

    .line 48
    .local v3, languagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v4

    .line 50
    .local v4, personalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceImeLanguageUpdater()Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;

    move-result-object v5

    .line 52
    .local v5, voiceImeLangUpdater:Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    invoke-virtual {v2, p1}, Lcom/google/android/voicesearch/GservicesHelper;->handleGservicesChange(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v3, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->handleGservicesChange(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v4, p1}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->handleGservicesChange(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v5}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->updateLanguages()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-virtual {v3}, Lcom/google/android/voicesearch/LanguagePrefManager;->handleDeviceLanguageChange()V

    goto :goto_0
.end method
