.class Lcom/htc/android/mail/mailservice/MailService$14;
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

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$mailboxId:J

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$14;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput-object p2, p0, Lcom/htc/android/mail/mailservice/MailService$14;->val$email:Ljava/lang/String;

    iput-wide p3, p0, Lcom/htc/android/mail/mailservice/MailService$14;->val$mailboxId:J

    iput p5, p0, Lcom/htc/android/mail/mailservice/MailService$14;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 397
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$14;->val$email:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/mail/Account;->findAccountByEmail(Ljava/lang/String;)J

    move-result-wide v1

    .line 398
    .local v1, syncId:J
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$14;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/MailService$14;->val$mailboxId:J

    iget v5, p0, Lcom/htc/android/mail/mailservice/MailService$14;->val$startId:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/mailservice/MailService;->startCheck(JJI)V

    goto :goto_0
.end method
