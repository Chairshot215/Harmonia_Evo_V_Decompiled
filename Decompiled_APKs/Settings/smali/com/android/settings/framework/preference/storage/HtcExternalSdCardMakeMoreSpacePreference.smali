.class public Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcExternalSdCardMakeMoreSpacePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.sdcardwizard"

    const-string v2, "com.htc.sdcardwizard.SDCardWizardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "FREE_SD_STORAGE"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0c00f4

    return v0
.end method

.method updateState()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;->setEnabled(Z)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;->setEnabled(Z)V

    goto :goto_0
.end method
