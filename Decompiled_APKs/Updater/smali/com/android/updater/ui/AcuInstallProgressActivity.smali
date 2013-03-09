.class public Lcom/android/updater/ui/AcuInstallProgressActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "AcuInstallProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | AcuInstallProgressActivity"


# instance fields
.field private mCloseAcuInstallProgressActivityListener:Landroid/content/BroadcastReceiver;

.field private mDownloadState:Landroid/widget/TextView;

.field private mInstallAppListener:Landroid/content/BroadcastReceiver;

.field private mProgressBar:Lcom/htc/widget/HtcProgressBar;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mUndeterminate:Lcom/htc/widget/HtcProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/updater/ui/AcuInstallProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/AcuInstallProgressActivity$1;-><init>(Lcom/android/updater/ui/AcuInstallProgressActivity;)V

    iput-object v0, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mCloseAcuInstallProgressActivityListener:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lcom/android/updater/ui/AcuInstallProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/AcuInstallProgressActivity$2;-><init>(Lcom/android/updater/ui/AcuInstallProgressActivity;)V

    iput-object v0, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mInstallAppListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setInstallState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 112
    const-string v2, "Progress"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, progress:Ljava/lang/String;
    const v2, 0x7f060061

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mDownloadState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const v3, 0x7f060060

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/AcuInstallProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 171
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 173
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v5, 0x8

    .line 55
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuInstallProgressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, progressView:Landroid/view/View;
    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    .line 60
    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    .line 61
    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mDownloadState:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 65
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcProgressBar;->setIndeterminate(Z)V

    .line 66
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 69
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuInstallProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuInstallProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuInstallProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuInstallProgressActivity;->setupAlert()V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 181
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 184
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/AcuInstallProgressActivity;->setIntent(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuInstallProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p0, v0}, Lcom/android/updater/ui/AcuInstallProgressActivity;->setInstallState(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 84
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v1, mInstallFilter:Landroid/content/IntentFilter;
    const-string v2, "android.server.checkin.APP_NOTIFY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.server.checkin.APP_DOWNLOAD_TRIGGERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mInstallAppListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/updater/ui/AcuInstallProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, mCloseAcuProgressActivityFilter:Landroid/content/IntentFilter;
    const-string v2, "android.server.checkin.APPUPDATE_FAIL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mCloseAcuInstallProgressActivityListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/updater/ui/AcuInstallProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuInstallProgressActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mInstallAppListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuInstallProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    iget-object v1, p0, Lcom/android/updater/ui/AcuInstallProgressActivity;->mCloseAcuInstallProgressActivityListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuInstallProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 167
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | AcuInstallProgressActivity"

    const-string v2, "weird! unregisterReceiver fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
