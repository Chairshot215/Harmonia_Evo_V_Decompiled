.class Lcom/htc/android/mail/mailservice/MailService$DelayHandler$3;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

.field final synthetic val$syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService$DelayHandler;Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$3;->this$1:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    iput-object p2, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$3;->val$syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$3;->val$syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->run()V

    .line 1235
    return-void
.end method
