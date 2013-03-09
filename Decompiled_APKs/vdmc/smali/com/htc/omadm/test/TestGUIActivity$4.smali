.class Lcom/htc/omadm/test/TestGUIActivity$4;
.super Landroid/os/Handler;
.source "TestGUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/test/TestGUIActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
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
    .line 162
    iput-object p1, p0, Lcom/htc/omadm/test/TestGUIActivity$4;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.omadm.core.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, i:Landroid/content/Intent;
    const-string v1, "SESSION_TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v1, "com.redbend.vdmc"

    const-string v2, "com.htc.omadm.core.DMService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity$4;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    invoke-virtual {v1}, Lcom/htc/omadm/test/TestGUIActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity$4;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    invoke-virtual {v1}, Lcom/htc/omadm/test/TestGUIActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    return-void
.end method
