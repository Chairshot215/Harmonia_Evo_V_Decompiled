.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetEndpointTask"
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
    .line 746
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 4
    .parameter "params"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->postGetEndpointAction:Ljava/lang/String;

    .line 760
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxSetAccountBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetEndpointTask() postGetEndpointAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->postGetEndpointAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->getEndpoints(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 763
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 3
    .parameter "finalResult"

    .prologue
    .line 749
    iget-boolean v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    .line 751
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v1, ""

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->postGetEndpointAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->doNextAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 746
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
