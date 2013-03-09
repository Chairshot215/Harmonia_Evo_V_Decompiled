.class Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlmostDoneRunnable"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field mEndMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "msg"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 119
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->mEndMessage:Landroid/os/Message;

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 126
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->mEndMessage:Landroid/os/Message;

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 131
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->mEndMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v0}, Lcom/htc/cs/util/CSStatusBarNotification;->cancelAll(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    goto :goto_0
.end method
