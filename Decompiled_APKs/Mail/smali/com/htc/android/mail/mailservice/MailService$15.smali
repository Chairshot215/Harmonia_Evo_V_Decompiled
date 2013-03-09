.class Lcom/htc/android/mail/mailservice/MailService$15;
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

.field final synthetic val$id:Ljava/lang/Long;

.field final synthetic val$mailboxId:J

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;Ljava/lang/Long;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$15;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput-object p2, p0, Lcom/htc/android/mail/mailservice/MailService$15;->val$id:Ljava/lang/Long;

    iput-wide p3, p0, Lcom/htc/android/mail/mailservice/MailService$15;->val$mailboxId:J

    iput p5, p0, Lcom/htc/android/mail/mailservice/MailService$15;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$15;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$15;->val$id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/MailService$15;->val$mailboxId:J

    iget v5, p0, Lcom/htc/android/mail/mailservice/MailService$15;->val$startId:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/mailservice/MailService;->startCheck(JJI)V

    .line 408
    return-void
.end method
