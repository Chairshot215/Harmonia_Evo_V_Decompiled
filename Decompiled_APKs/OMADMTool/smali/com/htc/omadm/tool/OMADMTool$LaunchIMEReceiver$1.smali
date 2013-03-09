.class Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "OMADMTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget v1, v0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->retryCount:I

    .line 550
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/htc/omadm/tool/OMADMTool;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/omadm/tool/OMADMTool;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/omadm/tool/OMADMTool;->access$1002(Lcom/htc/omadm/tool/OMADMTool;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 551
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$1000(Lcom/htc/omadm/tool/OMADMTool;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->targetView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/omadm/tool/OMADMTool;->access$1100(Lcom/htc/omadm/tool/OMADMTool;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/htc/omadm/tool/OMADMTool;->access$000(Lcom/htc/omadm/tool/OMADMTool;)Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 553
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver$1;->this$1:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$000(Lcom/htc/omadm/tool/OMADMTool;)Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 554
    return-void
.end method
