.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 640
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private specialErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 645
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 3
    .parameter "params"

    .prologue
    .line 661
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxSetAccountBase"

    const-string v2, "GetProfileTask()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->getProfile(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 663
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 640
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->doInBackground([Ljava/lang/Void;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 3
    .parameter "finalResult"

    .prologue
    .line 650
    iget-boolean v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProfileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

    .line 652
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->specialErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 640
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
