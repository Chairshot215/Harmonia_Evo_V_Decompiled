.class public Lcom/htc/android/mail/util/DelayedProgressDialogTask;
.super Landroid/os/AsyncTask;
.source "DelayedProgressDialogTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        "MyActivity:",
        "Landroid/app/Activity;",
        "MyHandler:",
        "Landroid/os/Handler;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DelayedProgressDialogTask"


# instance fields
.field private mDialog:Lcom/htc/app/HtcProgressDialog;

.field protected mIsCanceled:Z

.field private mIsNotified:Ljava/lang/Boolean;

.field private mShowDialogRunnable:Ljava/lang/Runnable;

.field protected final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TMyActivity;>;"
        }
    .end annotation
.end field

.field private mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TMyHandler;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMyActivity;TMyHandler;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    .local p1, target:Landroid/app/Activity;,"TMyActivity;"
    .local p2, handler:Landroid/os/Handler;,"TMyHandler;"
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mIsNotified:Ljava/lang/Boolean;

    .line 20
    iput-boolean v1, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mIsCanceled:Z

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 27
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 28
    iget-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0b028d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 30
    iget-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/android/mail/util/DelayedProgressDialogTask$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/util/DelayedProgressDialogTask$1;-><init>(Lcom/htc/android/mail/util/DelayedProgressDialogTask;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 36
    new-instance v0, Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;-><init>(Lcom/htc/android/mail/util/DelayedProgressDialogTask;)V

    iput-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/util/DelayedProgressDialogTask;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected doHeavyTask()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, result:Ljava/lang/Object;,"TResult;"
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    iget-object v3, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 51
    .local v2, target:Landroid/app/Activity;,"TMyActivity;"
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    .line 54
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->publishProgress([Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->doHeavyTask()Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, result:Ljava/lang/Object;,"TResult;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 60
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mIsNotified:Ljava/lang/Boolean;

    .line 61
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DelayedProgressDialogTask"

    const-string v4, "cactch excepiont"

    invoke-static {v3, v4, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected doPostTask(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 92
    .local v1, target:Landroid/app/Activity;,"TMyActivity;"
    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 94
    .local v0, handler:Landroid/os/Handler;,"TMyHandler;"
    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->doPostTask(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 70
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 71
    .local v1, target:Landroid/app/Activity;,"TMyActivity;"
    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 74
    .local v0, handler:Landroid/os/Handler;,"TMyHandler;"
    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mShowDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 81
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask<TResult;TMyActivity;TMyHandler;>;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mIsNotified:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 83
    :cond_0
    monitor-exit p0

    .line 87
    :goto_0
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DelayedProgressDialogTask"

    const-string v2, "cactch excepiont"

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
