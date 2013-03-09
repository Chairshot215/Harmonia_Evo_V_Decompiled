.class Lcom/htc/omadm/test/TestGUIActivity$2;
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
    .line 115
    iput-object p1, p0, Lcom/htc/omadm/test/TestGUIActivity$2;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 118
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/omadm/libdo/system/SysLib;->setPowerAcquire(Z)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.omadm.core.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, i:Landroid/content/Intent;
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "SESSION_ID"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "com.redbend.vdmc"

    const-string v2, "com.htc.omadm.core.DMService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity$2;->this$0:Lcom/htc/omadm/test/TestGUIActivity;

    invoke-virtual {v1}, Lcom/htc/omadm/test/TestGUIActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void
.end method
