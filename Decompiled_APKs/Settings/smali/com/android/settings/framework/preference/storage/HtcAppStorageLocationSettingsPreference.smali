.class public Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAppStorageLocationSettingsPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 119
    new-instance v0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 119
    new-instance v0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 119
    new-instance v0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->init()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->updateStatus()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 80
    return-void
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->setEnabled(Z)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f0c00f9

    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 135
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->updateStatus()V

    .line 109
    return-void
.end method
