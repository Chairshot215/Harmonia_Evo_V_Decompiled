.class Lcom/htc/omadm/gui/ext/BaseDialog$6;
.super Lcom/htc/widget/HtcAlertDialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/gui/ext/BaseDialog;->setAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseDialog;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/BaseDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$6;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 676
    const-string v1, "libgo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event.getKeyCode() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 678
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$6;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableBackKey:Z
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1100(Lcom/htc/omadm/gui/ext/BaseDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return v0

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$6;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendButtonCallback(I)V
    invoke-static {v1, v4}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1200(Lcom/htc/omadm/gui/ext/BaseDialog;I)V

    .line 681
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$6;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->setupFinishFunction()V
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1300(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    .line 683
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_3

    .line 684
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$6;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableSearchKey:Z
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1400(Lcom/htc/omadm/gui/ext/BaseDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$6;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableTouchEvent:Z
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1500(Lcom/htc/omadm/gui/ext/BaseDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
