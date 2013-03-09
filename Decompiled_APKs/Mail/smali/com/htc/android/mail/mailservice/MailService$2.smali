.class Lcom/htc/android/mail/mailservice/MailService$2;
.super Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
.source "MailService.java"


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

.field final synthetic val$checkid:J

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;JIZJI)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$2;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput-wide p6, p0, Lcom/htc/android/mail/mailservice/MailService$2;->val$checkid:J

    iput p8, p0, Lcom/htc/android/mail/mailservice/MailService$2;->val$startId:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;-><init>(JIZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$2;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iget-wide v1, p0, Lcom/htc/android/mail/mailservice/MailService$2;->val$checkid:J

    const-wide/16 v3, -0x1

    iget v5, p0, Lcom/htc/android/mail/mailservice/MailService$2;->val$startId:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/mailservice/MailService;->startCheck(JJI)V

    .line 257
    return-void
.end method
