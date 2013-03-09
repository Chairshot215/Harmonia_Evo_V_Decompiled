.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostTokenTask"
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
    .line 571
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterPostTokenAction:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    #calls: Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->resetFailedConnection(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->access$000(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    .line 575
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "params"

    .prologue
    .line 603
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iput-object v3, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterPostTokenAction:Ljava/lang/String;

    .line 604
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HuxSetAccountBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostTokenTask() mAfterPostTokenAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterPostTokenAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    const/4 v2, 0x1

    aget-object v0, p1, v2

    .line 608
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 609
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsId:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_getToken(ILjava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 612
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/htc/android/mail/huxservice/HuxProvController;->postToken(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v1

    .line 614
    .local v1, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 571
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 5
    .parameter "finalResult"

    .prologue
    const/4 v4, 0x0

    .line 579
    iget-boolean v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v2, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->reset()V

    .line 581
    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;

    iget-object v0, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;->token:Ljava/lang/String;

    .line 582
    .local v0, token:Ljava/lang/String;
    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;

    iget-object v1, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;->tokenExpiry:Ljava/lang/String;

    .line 584
    .local v1, tokenExpiry:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 586
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 599
    .end local v0           #token:Ljava/lang/String;
    .end local v1           #tokenExpiry:Ljava/lang/String;
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v3, "POST/snc/user/authTwo/getToken"

    #calls: Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isUnauthorized(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;Ljava/lang/String;)Z
    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->access$100(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v3, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    goto :goto_0

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->reset()V

    .line 597
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 571
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
