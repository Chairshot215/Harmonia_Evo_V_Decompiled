.class Lcom/htc/omadm/test/TestGUIActivity$1;
.super Landroid/os/Handler;
.source "TestGUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/test/TestGUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/test/TestGUIActivity;


# direct methods
.method constructor <init>(Lcom/htc/omadm/test/TestGUIActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/omadm/test/TestGUIActivity$1;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity$1;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    #getter for: Lcom/htc/omadm/test/TestGUIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/omadm/test/TestGUIActivity;->access$000(Lcom/htc/omadm/test/TestGUIActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage:status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",option:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity$1;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    iget-object v1, v1, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    sget-boolean v1, Lcom/htc/omadm/gui/SprintGuiPrototype;->bTriggerDSS:Z

    if-eqz v1, :cond_2

    .line 68
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, ActIntent:Landroid/content/Intent;
    const-string v1, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "com.sprint.dsa.url"

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "com.sprint.dsa.source"

    const-string v2, "HFA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity$1;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    iget-object v1, v1, Lcom/htc/omadm/test/TestGUIActivity;->mCONTEXT:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity$1;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    iget-object v1, v1, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/omadm/gui/SprintGuiPrototype;->bTriggerDSS:Z

    .line 77
    .end local v0           #ActIntent:Landroid/content/Intent;
    :cond_2
    return-void
.end method
