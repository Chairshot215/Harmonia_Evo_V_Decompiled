.class Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;
.super Landroid/os/AsyncTask;
.source "HuxEditAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxEditAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/huxservice/HuxEditAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/huxservice/HuxEditAccount;Lcom/htc/android/mail/huxservice/HuxEditAccount$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;-><init>(Lcom/htc/android/mail/huxservice/HuxEditAccount;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 135
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxEditAccount"

    const-string v2, "doUpdateAccount bg>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 139
    .local v0, cp:Landroid/content/IContentProvider;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    #calls: Lcom/htc/android/mail/huxservice/HuxEditAccount;->gatherEditAcctValues()Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->access$100(Lcom/htc/android/mail/huxservice/HuxEditAccount;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    invoke-static {v1}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 145
    sget-object v1, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 146
    sget-object v1, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 147
    sget-object v1, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    invoke-virtual {v2}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 149
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->setResult(I)V

    .line 150
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->refresh()V

    .line 151
    return-object v5

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    const v1, 0x7f0b008c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->this$0:Lcom/htc/android/mail/huxservice/HuxEditAccount;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->finish()V

    .line 131
    return-void
.end method
