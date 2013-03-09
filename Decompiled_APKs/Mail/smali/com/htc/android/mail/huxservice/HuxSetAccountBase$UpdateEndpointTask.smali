.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateEndpointTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
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
    .line 793
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 806
    aget-object v0, p1, v11

    check-cast v0, Lcom/htc/android/mail/Account;

    .line 807
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, emailAddr:Ljava/lang/String;
    const-string v4, ""

    .line 809
    .local v4, password:Ljava/lang/String;
    aget-object v8, p1, v9

    if-eqz v8, :cond_0

    aget-object v4, p1, v9

    .end local v4           #password:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 810
    .restart local v4       #password:Ljava/lang/String;
    :cond_0
    sget-boolean v8, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "HuxSetAccountBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateEndpointTask() email:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_1
    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v8, v8, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/android/mail/huxservice/HuxProvController;->getEndpoints(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v5

    .line 814
    .local v5, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-boolean v8, v5, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v8, :cond_2

    .line 815
    iget-object v7, v5, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 816
    .local v7, userEndPointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v8, v8, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/htc/android/mail/huxservice/HUXUTIL;->matchUserEndPointId(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v6

    .line 817
    .local v6, userEndPointId:I
    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v8, v8, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 818
    .local v3, endPointId:I
    invoke-static {v2, v4, v3, v6, v11}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_endpoint(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, body:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v8, v8, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->putEndpoints(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v5

    .line 823
    .end local v1           #body:Ljava/lang/String;
    .end local v3           #endPointId:I
    .end local v6           #userEndPointId:I
    .end local v7           #userEndPointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    :cond_2
    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->doInBackground([Ljava/lang/Object;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 3
    .parameter "finalResult"

    .prologue
    .line 796
    iget-boolean v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 793
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
