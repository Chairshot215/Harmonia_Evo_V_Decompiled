.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;",
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
    .line 667
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private specialErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 672
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 5
    .parameter "params"

    .prologue
    .line 687
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 688
    .local v1, easAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxSetAccountBase"

    const-string v4, "PostProfileTask()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_profileBody(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, body:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/htc/android/mail/huxservice/HuxProvController;->postProfile(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v2

    .line 693
    .local v2, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, [Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->doInBackground([Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 3
    .parameter "finalResult"

    .prologue
    .line 677
    iget-boolean v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->specialErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
