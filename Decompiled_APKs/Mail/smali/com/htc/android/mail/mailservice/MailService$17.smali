.class Lcom/htc/android/mail/mailservice/MailService$17;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/mailservice/MailService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mailservice/MailService;

.field final synthetic val$accBundle:Landroid/os/Bundle;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;Landroid/os/Bundle;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$17;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput-object p2, p0, Lcom/htc/android/mail/mailservice/MailService$17;->val$accBundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/htc/android/mail/mailservice/MailService$17;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 427
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService$17;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v2}, Lcom/htc/android/mail/mailservice/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/MailService$17;->val$accBundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/htc/android/mail/Account;->createAccountByEmail(Landroid/content/Context;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    .line 428
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acount uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.action.MAIL_SERVICE_ACCOUNT_CREATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, i:Landroid/content/Intent;
    const-string v2, "privoder"

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/MailService$17;->val$accBundle:Landroid/os/Bundle;

    const-string v4, "provider"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v2, "email"

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/MailService$17;->val$accBundle:Landroid/os/Bundle;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService$17;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/mailservice/MailService;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService$17;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #calls: Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/MailService;->access$800(Lcom/htc/android/mail/mailservice/MailService;)V

    .line 434
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService$17;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/MailService;->access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/mailservice/MailService$17;->val$startId:I

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 435
    return-void
.end method
