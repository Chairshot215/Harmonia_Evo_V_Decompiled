.class public Lcom/htc/omadm/gui/ext/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Receiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    const-string v1, "libgo"

    const-string v2, "new receiver"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/Receiver;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.andorid.omadm.dialog.resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, sendIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/Receiver;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.omadm.gui.ext.BaseDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .end local v0           #sendIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
