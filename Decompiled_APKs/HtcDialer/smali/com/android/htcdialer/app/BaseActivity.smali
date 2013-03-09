.class public abstract Lcom/android/htcdialer/app/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final DEBUG:Z = true

.field private static final MSG_DELAY_ON_RESUME:I = 0x1389


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field private mBaseHandler:Landroid/os/Handler;

.field private mHandleStuffOnResumeDelay:I

.field protected mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsForegroundActivity:Z

.field private mSyncControl:Lcom/htc/util/contacts/SyncControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mIsForegroundActivity:Z

    .line 58
    new-instance v0, Lcom/android/htcdialer/app/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/app/BaseActivity$1;-><init>(Lcom/android/htcdialer/app/BaseActivity;)V

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mBaseHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected handleSearch()Z
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/app/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    const/4 v1, 0x1

    return v1
.end method

.method protected handleStuffAfterOnResume()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected isSyncEnabled()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mAppContext:Landroid/content/Context;

    .line 75
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/app/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 77
    const-string v0, "Dialer"

    invoke-static {v0}, Lcom/htc/util/contacts/SyncControl;->getSyncControl(Ljava/lang/String;)Lcom/htc/util/contacts/SyncControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    .line 78
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mIsForegroundActivity:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseActivity;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->removeAutoCancel()V

    .line 99
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->startPendingSync()V

    .line 100
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htcdialer/util/ContactsUtils;->resumeEASSync(Landroid/content/Context;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iput-boolean v2, p0, Lcom/android/htcdialer/app/BaseActivity;->mIsForegroundActivity:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseActivity;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    .line 86
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v1, "gmail-ls"

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    .line 87
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v1, "calendar"

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htcdialer/util/ContactsUtils;->pauseEASSync(Landroid/content/Context;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseActivity;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    iget v2, p0, Lcom/android/htcdialer/app/BaseActivity;->mHandleStuffOnResumeDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseActivity;->handleSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method protected setDelayForHandleStuffAfterOnResume(I)V
    .locals 0
    .parameter "delayMs"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/htcdialer/app/BaseActivity;->mHandleStuffOnResumeDelay:I

    .line 113
    return-void
.end method
