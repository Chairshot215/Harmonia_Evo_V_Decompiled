.class public Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;
.super Landroid/app/Fragment;
.source "HtcExternalSdCardMountToggleSettings.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field static final MIN_PASSWORD_QUALITY:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "HtcExternalSdCardMountToggleSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 43
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 44
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 45
    const/4 v2, 0x0

    .line 49
    :goto_0
    return v2

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f0c0a66

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0c0a67

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 59
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 66
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.MOUNT_SD_CARD_VOLUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 31
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;->runKeyguardConfirmation(I)Z

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
