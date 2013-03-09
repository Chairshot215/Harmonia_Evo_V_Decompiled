.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetMasterEndpointTask"
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
    .line 767
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 4
    .parameter "params"

    .prologue
    .line 783
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mNextAction:Ljava/lang/String;

    .line 784
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxSetAccountBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMasterEndpointTask() mNextAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mNextAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->getMasterEndpoint(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 787
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 767
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 4
    .parameter "finalResult"

    .prologue
    .line 770
    iget-boolean v1, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v1, :cond_0

    .line 771
    iget-object v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 772
    .local v0, info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 774
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 779
    .end local v0           #info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 767
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
