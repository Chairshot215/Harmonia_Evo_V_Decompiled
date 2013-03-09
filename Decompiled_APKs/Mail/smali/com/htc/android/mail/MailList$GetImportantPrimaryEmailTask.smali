.class Lcom/htc/android/mail/MailList$GetImportantPrimaryEmailTask;
.super Lcom/htc/android/mail/util/DelayedProgressDialogTask;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetImportantPrimaryEmailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/android/mail/util/DelayedProgressDialogTask",
        "<[",
        "Ljava/lang/String;",
        "Lcom/htc/android/mail/MailList;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V
    .locals 0
    .parameter "target"
    .parameter "handler"

    .prologue
    .line 3858
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 3859
    return-void
.end method


# virtual methods
.method protected bridge synthetic doHeavyTask()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3855
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$GetImportantPrimaryEmailTask;->doHeavyTask()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doHeavyTask()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 3863
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 3864
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3866
    :goto_0
    return-object v0

    .line 3865
    :cond_0
    #getter for: Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/database/ImportantMailStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/database/ImportantMailStore;->getImportantPrimaryEmailArray()[Ljava/lang/String;

    move-result-object v0

    .line 3866
    .local v0, emailArray:[Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic doPostTask(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3855
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailList$GetImportantPrimaryEmailTask;->doPostTask([Ljava/lang/String;)V

    return-void
.end method

.method protected doPostTask([Ljava/lang/String;)V
    .locals 4
    .parameter "emailArray"

    .prologue
    .line 3871
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 3872
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_1

    .line 3881
    :cond_0
    :goto_0
    return-void

    .line 3873
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3874
    .local v0, compose_intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3875
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3876
    const-string v2, "accountID"

    #getter for: Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4500(Lcom/htc/android/mail/MailList;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3877
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3878
    iget-boolean v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mIsCanceled:Z

    if-nez v2, :cond_0

    .line 3879
    invoke-virtual {v1, v0}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
