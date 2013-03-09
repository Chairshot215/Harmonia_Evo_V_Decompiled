.class Lcom/htc/cs/activity/accountactivities/CS_login$1;
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
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1283
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1284
    if-nez p2, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    const-string v1, "SIP_HEIGHT"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1288
    .local v0, sipHeight:I
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2400(Lcom/htc/cs/activity/accountactivities/CS_login;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "mIMERecever mOldSipHeight "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2400(Lcom/htc/cs/activity/accountactivities/CS_login;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1290
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "mIMERecever sipHeight "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1291
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I
    invoke-static {v1, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2402(Lcom/htc/cs/activity/accountactivities/CS_login;I)I

    .line 1292
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$1;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V
    invoke-static {v1, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2500(Lcom/htc/cs/activity/accountactivities/CS_login;I)V

    goto :goto_0
.end method
