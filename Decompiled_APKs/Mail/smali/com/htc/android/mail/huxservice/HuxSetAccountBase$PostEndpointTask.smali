.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostEndpointTask"
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
    .line 697
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 5
    .parameter "params"

    .prologue
    .line 710
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iput-object v3, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mNextAction:Ljava/lang/String;

    .line 711
    const/4 v2, 0x1

    aget-object v0, p1, v2

    .line 712
    .local v0, body:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HuxSetAccountBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostEndpointTask() mNextAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mNextAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/htc/android/mail/huxservice/HuxProvController;->postEndpoints(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v1

    .line 715
    .local v1, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 697
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 3
    .parameter "finalResult"

    .prologue
    .line 700
    iget-boolean v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 697
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
