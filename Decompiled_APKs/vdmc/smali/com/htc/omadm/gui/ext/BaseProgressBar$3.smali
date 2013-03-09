.class Lcom/htc/omadm/gui/ext/BaseProgressBar$3;
.super Lcom/htc/app/HtcProgressDialog;
.source "BaseProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/gui/ext/BaseProgressBar;->setProgressBarDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$3;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    invoke-direct {p0, p2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$3;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    const-string v1, "com.htc.andorid.omadm.dialog.back"

    #calls: Lcom/htc/omadm/gui/ext/BaseProgressBar;->callCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$300(Lcom/htc/omadm/gui/ext/BaseProgressBar;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$3;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #calls: Lcom/htc/omadm/gui/ext/BaseProgressBar;->callDismissFinish()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$400(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    .line 171
    invoke-super {p0, p1}, Lcom/htc/app/HtcProgressDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$3;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #getter for: Lcom/htc/omadm/gui/ext/BaseProgressBar;->mDisableTouchEvent:Z
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$500(Lcom/htc/omadm/gui/ext/BaseProgressBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcProgressDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
