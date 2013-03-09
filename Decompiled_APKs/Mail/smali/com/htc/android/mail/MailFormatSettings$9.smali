.class Lcom/htc/android/mail/MailFormatSettings$9;
.super Landroid/content/BroadcastReceiver;
.source "MailFormatSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailFormatSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailFormatSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailFormatSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/htc/android/mail/MailFormatSettings$9;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 618
    invoke-static {}, Lcom/htc/android/mail/MailFormatSettings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings$9;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    iget-object v0, v0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# get action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings$9;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    #calls: Lcom/htc/android/mail/MailFormatSettings;->update()V
    invoke-static {v0}, Lcom/htc/android/mail/MailFormatSettings;->access$700(Lcom/htc/android/mail/MailFormatSettings;)V

    .line 620
    return-void
.end method
