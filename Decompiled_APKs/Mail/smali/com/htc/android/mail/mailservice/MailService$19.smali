.class Lcom/htc/android/mail/mailservice/MailService$19;
.super Landroid/content/BroadcastReceiver;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mailservice/MailService;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;)V
    .locals 0
    .parameter

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$19;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast received action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1268
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$19;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v1, v2}, Lcom/htc/android/mail/mailservice/MailService;->access$1602(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    .line 1269
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MailService"

    const-string v2, "get action_screen_on intent"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :cond_1
    return-void
.end method
