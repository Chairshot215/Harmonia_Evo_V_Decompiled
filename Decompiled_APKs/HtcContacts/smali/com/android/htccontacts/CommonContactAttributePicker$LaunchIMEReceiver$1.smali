.class Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2531
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->access$3300(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2534
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->access$3408(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)I

    .line 2535
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2500(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2502(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 2538
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2500(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->access$3300(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2540
    invoke-static {}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3100()Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2541
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v2, v2, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1100(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/widget/EditText;)V

    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3102(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    .line 2544
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3100()Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 2547
    :cond_2
    return-void
.end method
