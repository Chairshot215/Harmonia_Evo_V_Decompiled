.class Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;
.super Ljava/lang/Object;
.source "SipLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->relaunchIme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;


# direct methods
.method constructor <init>(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;->this$0:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;->this$0:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    invoke-static {v0}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->access$008(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)I

    .line 71
    iget-object v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;->this$0:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    #getter for: Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mImManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->access$200(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;->this$0:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    #getter for: Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->access$100(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;->this$0:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;->this$0:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->send(ILandroid/os/Bundle;)V

    .line 74
    :cond_0
    return-void
.end method
