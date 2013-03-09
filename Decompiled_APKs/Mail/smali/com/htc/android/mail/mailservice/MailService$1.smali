.class Lcom/htc/android/mail/mailservice/MailService$1;
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

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$1;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput p2, p0, Lcom/htc/android/mail/mailservice/MailService$1;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$1;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$1;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->accountId:J
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/MailService;->access$300(Lcom/htc/android/mail/mailservice/MailService;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/NewMailNotification;->clearNotification(Landroid/content/Context;J)I

    .line 219
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel notify>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService$1;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/MailService;->access$300(Lcom/htc/android/mail/mailservice/MailService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$1;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    invoke-static {v0}, Lcom/htc/android/mail/mailservice/MailService;->access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/mailservice/MailService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 221
    return-void
.end method
