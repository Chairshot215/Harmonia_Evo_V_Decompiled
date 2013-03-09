.class Lcom/htc/omadm/gui/ext/ExistDialog$3;
.super Lcom/htc/widget/HtcAlertDialog;
.source "ExistDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/gui/ext/ExistDialog;->setAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/ExistDialog;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/ExistDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/ExistDialog$3;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$3;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$100(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$3;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #calls: Lcom/htc/omadm/gui/ext/ExistDialog;->callDismissFinish()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$300(Lcom/htc/omadm/gui/ext/ExistDialog;)V

    .line 190
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 192
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
