.class Lcom/htc/android/mail/mailservice/MailService$13;
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

.field final synthetic val$mailboxId:J

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$13;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput-wide p2, p0, Lcom/htc/android/mail/mailservice/MailService$13;->val$mailboxId:J

    iput p4, p0, Lcom/htc/android/mail/mailservice/MailService$13;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 388
    invoke-static {}, Lcom/htc/android/mail/Account;->find139Account()J

    move-result-wide v1

    .line 389
    .local v1, syncId:J
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$13;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/MailService$13;->val$mailboxId:J

    iget v5, p0, Lcom/htc/android/mail/mailservice/MailService$13;->val$startId:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/mailservice/MailService;->startCheck(JJI)V

    goto :goto_0
.end method
