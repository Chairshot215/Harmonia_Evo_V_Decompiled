.class Lcom/htc/android/mail/mailservice/MailService$4;
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

.field final synthetic val$finalSyncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$4;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput-object p2, p0, Lcom/htc/android/mail/mailservice/MailService$4;->val$finalSyncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$4;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #calls: Lcom/htc/android/mail/mailservice/MailService;->setWifiLock()V
    invoke-static {v0}, Lcom/htc/android/mail/mailservice/MailService;->access$600(Lcom/htc/android/mail/mailservice/MailService;)V

    .line 275
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$4;->val$finalSyncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->run()V

    .line 276
    return-void
.end method
