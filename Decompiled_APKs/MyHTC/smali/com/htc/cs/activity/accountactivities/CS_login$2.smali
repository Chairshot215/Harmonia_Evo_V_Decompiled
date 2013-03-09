.class Lcom/htc/cs/activity/accountactivities/CS_login$2;
.super Landroid/content/BroadcastReceiver;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 1
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1301
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->logger:Lcom/htc/cs/util/Logger;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 1305
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1307
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->logger:Lcom/htc/cs/util/Logger;

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1308
    const-string v2, "com.htc.cs.connectedservice.SMSConfirmAccount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1309
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ConfirmAccountNotification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v1, mintent:Landroid/content/Intent;
    const-string v2, "com.htc.cs"

    const-string v3, "com.htc.cs.activity.accountactivities.CSConfirmDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->startActivity(Landroid/content/Intent;)V

    .line 1313
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1314
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2, v7}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 1322
    .end local v1           #mintent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    const-string v2, "com.htc.cs.connectedservice.SMSConfirmAccount.OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1317
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->confirmAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    :cond_2
    const-string v2, "com.htc.cs.connectedservice.SMSConfirmAccount.Cancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$2;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_0
.end method
