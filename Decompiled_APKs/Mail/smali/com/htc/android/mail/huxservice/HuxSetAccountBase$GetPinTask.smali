.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPinTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 482
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    aget-object v3, p1, v5

    iput-object v3, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetPinAction:Ljava/lang/String;

    .line 483
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HuxSetAccountBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetPinTask() mAfterGetPinAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetPinAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    const/4 v1, 0x0

    .line 486
    .local v1, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 487
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "HuxSetAccountBase"

    const-string v3, "GetPinTask(): Airplane Mode On~"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_1
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local v1           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    invoke-direct {v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 489
    .restart local v1       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iput-boolean v5, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 490
    const/4 v2, -0x2

    iput v2, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    .line 491
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v3, 0x7f0b01e8

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    .line 512
    :cond_2
    :goto_0
    return-object v1

    .line 493
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->resetIsPinRetuned()V

    .line 494
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-static {v2, v3}, Lcom/htc/android/mail/huxservice/HuxProvController;->getPin(Landroid/content/Context;Ljava/lang/ref/WeakReference;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v1

    .line 496
    iget-boolean v2, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v2, :cond_2

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUnknowHostLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :try_start_1
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HuxSetAccountBase"

    const-string v4, "wait til timeout:20000 ms"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUnknowHostLock:Ljava/lang/Object;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 502
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 503
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->smsWaitTimeOut()V

    .line 505
    :cond_5
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, ie:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "HuxSetAccountBase"

    const-string v3, "getPIN timeout mechanism got interrupted"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->smsWaitTimeOut()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 469
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 1
    .parameter "finalResult"

    .prologue
    .line 473
    iget-boolean v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 469
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
