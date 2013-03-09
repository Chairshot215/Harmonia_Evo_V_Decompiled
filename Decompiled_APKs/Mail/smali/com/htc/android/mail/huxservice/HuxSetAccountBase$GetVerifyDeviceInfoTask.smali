.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetVerifyDeviceInfoTask"
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
    .line 518
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    #calls: Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->resetFailedConnection(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->access$000(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    .line 523
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 4
    .parameter "params"

    .prologue
    .line 560
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    .line 561
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxSetAccountBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetVerifyDeviceInfoTask() mAfterGetVerifyDeviceInfoAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->getVerifyDeviceInfo(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 566
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 4
    .parameter "finalResult"

    .prologue
    const/4 v3, 0x2

    .line 527
    iget-boolean v1, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v1, :cond_4

    .line 528
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->reset()V

    .line 530
    iget-object v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 531
    .local v0, info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 533
    iget-object v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    .line 535
    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 536
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v2, ""

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->doNextAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .end local v0           #info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :goto_0
    return-void

    .line 538
    .restart local v0       #info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0

    .line 542
    .end local v0           #info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    #calls: Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->resetFailedConnection(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->access$000(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    .line 543
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v2, "GET/snc/user/authTwo/verifyDevice"

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->doNextAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v2, "GET/snc/user/authTwo/verifyDevice"

    #calls: Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isUnauthorized(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;Ljava/lang/String;)Z
    invoke-static {v1, p1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->access$100(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 549
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v2, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    goto :goto_0

    .line 553
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    #calls: Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->resetFailedConnection(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->access$000(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    .line 554
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
