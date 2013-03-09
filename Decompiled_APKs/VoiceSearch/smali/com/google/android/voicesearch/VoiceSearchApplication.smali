.class public Lcom/google/android/voicesearch/VoiceSearchApplication;
.super Landroid/app/Application;
.source "VoiceSearchApplication.java"


# static fields
.field private static final APP_RECEIVER:Landroid/content/BroadcastReceiver;

.field private static final APP_RECEIVER_ACTIONS:[Ljava/lang/String;

.field private static final LOG_RECEIVER:Landroid/content/BroadcastReceiver;

.field private static mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;


# instance fields
.field private mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

.field private mSoundManager:Lcom/google/android/voicesearch/SoundManager;

.field private mVoiceSearchContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER_ACTIONS:[Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/google/android/voicesearch/AppNotificationReceiver;

    invoke-direct {v0}, Lcom/google/android/voicesearch/AppNotificationReceiver;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER:Landroid/content/BroadcastReceiver;

    .line 44
    new-instance v0, Lcom/google/android/voicesearch/logging/LoggingReceiver;

    invoke-direct {v0}, Lcom/google/android/voicesearch/logging/LoggingReceiver;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->LOG_RECEIVER:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    return-void
.end method

.method public static getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    return-object v0
.end method

.method public static setContainer(Lcom/google/android/voicesearch/VoiceSearchContainer;)V
    .locals 0
    .parameter "voiceSearchContainer"

    .prologue
    .line 108
    sput-object p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    .line 109
    return-void
.end method


# virtual methods
.method public getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mVoiceSearchContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    goto :goto_0
.end method

.method public getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/voicesearch/SoundManager;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    sget-object v6, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    if-nez v6, :cond_0

    .line 59
    new-instance v6, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;

    invoke-direct {v6, p0}, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mVoiceSearchContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    .line 62
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v2, intentFilter:Landroid/content/IntentFilter;
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER_ACTIONS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 64
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v5           #s:Ljava/lang/String;
    :cond_1
    const-string v6, "package"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 67
    sget-object v6, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/google/android/voicesearch/VoiceSearchApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, logFilter:Landroid/content/IntentFilter;
    sget-object v6, Lcom/google/android/voicesearch/VoiceSearchApplication;->LOG_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/google/android/voicesearch/VoiceSearchApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->LOG_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/SoundManager;->release()V

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 88
    return-void
.end method
