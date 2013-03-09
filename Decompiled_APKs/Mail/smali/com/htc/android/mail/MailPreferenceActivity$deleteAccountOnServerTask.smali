.class Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;
.super Landroid/os/AsyncTask;
.source "MailPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "deleteAccountOnServerTask"
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
.field final synthetic this$0:Lcom/htc/android/mail/MailPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailPreferenceActivity;Lcom/htc/android/mail/MailPreferenceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 3
    .parameter "params"

    .prologue
    .line 408
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 409
    .local v0, emailAddr:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$1000(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/android/mail/huxservice/HuxProvController;->deleteEndPointOnServer(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v1

    .line 410
    .local v1, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->doInBackground([Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 2
    .parameter "finalResult"

    .prologue
    .line 390
    iget-boolean v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #calls: Lcom/htc/android/mail/MailPreferenceActivity;->deleteAcctOnDevice()V
    invoke-static {v0}, Lcom/htc/android/mail/MailPreferenceActivity;->access$600(Lcom/htc/android/mail/MailPreferenceActivity;)V

    .line 404
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->removeDialog(I)V

    .line 394
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget v1, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    #setter for: Lcom/htc/android/mail/MailPreferenceActivity;->mErrorStatus:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->access$702(Lcom/htc/android/mail/MailPreferenceActivity;I)I

    .line 395
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget v1, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorCode:I

    #setter for: Lcom/htc/android/mail/MailPreferenceActivity;->mErrorCode:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->access$802(Lcom/htc/android/mail/MailPreferenceActivity;I)I

    .line 396
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget-object v1, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    #setter for: Lcom/htc/android/mail/MailPreferenceActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->access$902(Lcom/htc/android/mail/MailPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mErrorStatus:I
    invoke-static {v1}, Lcom/htc/android/mail/MailPreferenceActivity;->access$700(Lcom/htc/android/mail/MailPreferenceActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->showDialog(I)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 387
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
