.class public abstract Lcom/android/htccontacts/app/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/BaseActivity$BaseHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final MSG_DELAY_ON_RESUME:I = 0x1389

.field private static mBackgroundHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field private mBaseHandler:Landroid/os/Handler;

.field private mHandleStuffOnResumeDelay:I

.field protected mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsDestroyed:Z

.field protected mIsForegroundActivity:Z

.field protected mManagedDialogWeakRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSyncControl:Lcom/htc/util/contacts/SyncControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/app/BaseActivity;->mBackgroundHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mManagedDialogWeakRefList:Ljava/util/ArrayList;

    .line 77
    return-void
.end method


# virtual methods
.method public cleanManagedDialog()V
    .locals 5

    .prologue
    .line 249
    iget-object v4, p0, Lcom/android/htccontacts/app/BaseActivity;->mManagedDialogWeakRefList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 250
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseActivity;->mManagedDialogWeakRefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 251
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 252
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 257
    .end local v0           #d:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 256
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseActivity;->mManagedDialogWeakRefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 257
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    return-void
.end method

.method public closeCursorInBackground(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 261
    sget-object v0, Lcom/android/htccontacts/app/BaseActivity;->mBackgroundHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    if-eqz v0, :cond_1

    .line 262
    sget-object v0, Lcom/android/htccontacts/app/BaseActivity;->mBackgroundHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/android/htccontacts/app/BaseActivity;->mBackgroundHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v0}, Lcom/android/htccontacts/BackgroundWorkerHandler;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected handleSearch()Z
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->obtainDefaultPeopleSearchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    const/4 v1, 0x1

    return v1
.end method

.method protected handleStuffAfterOnResume()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected isSyncEnabled()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public manageDialog(Landroid/app/Dialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseActivity;->mManagedDialogWeakRefList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 242
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 243
    .local v0, dialogRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mManagedDialogWeakRefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v2

    .line 246
    .end local v0           #dialogRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    :cond_0
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected obtainDefaultPeopleSearchIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->isUseServoSearchClient(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getlaunchServoSearchClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 274
    .local v1, sevoIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 283
    .end local v1           #sevoIntent:Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 279
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.htccontact.action.people_search"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v1, v0

    .line 283
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 121
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    .line 122
    sget-object v0, Lcom/android/htccontacts/app/BaseActivity;->mBackgroundHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/htccontacts/app/BaseActivity;->mBackgroundHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 126
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 127
    const-string v0, "People"

    invoke-static {v0}, Lcom/htc/util/contacts/SyncControl;->getSyncControl(Ljava/lang/String;)Lcom/htc/util/contacts/SyncControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    .line 134
    new-instance v0, Lcom/android/htccontacts/app/BaseActivity$BaseHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/BaseActivity$BaseHandler;-><init>(Lcom/android/htccontacts/app/BaseActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mBaseHandler:Landroid/os/Handler;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    .line 175
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->cleanManagedDialog()V

    .line 176
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mBaseHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->removeAutoCancel()V

    .line 165
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->startPendingSync()V

    .line 166
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->resumeEASSync(Landroid/content/Context;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isDBAccessable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x104039d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 144
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->finish()V

    .line 157
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-boolean v3, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->isSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, v3}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    .line 152
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v2, "gmail-ls"

    invoke-virtual {v1, v2, v3}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    .line 153
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v2, "calendar"

    invoke-virtual {v1, v2, v3}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    .line 154
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->pauseEASSync(Landroid/content/Context;)V

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mBaseHandler:Landroid/os/Handler;

    const/16 v2, 0x1389

    iget v3, p0, Lcom/android/htccontacts/app/BaseActivity;->mHandleStuffOnResumeDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseActivity;->handleSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x1

    .line 212
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
    .line 187
    iput p1, p0, Lcom/android/htccontacts/app/BaseActivity;->mHandleStuffOnResumeDelay:I

    .line 188
    return-void
.end method
