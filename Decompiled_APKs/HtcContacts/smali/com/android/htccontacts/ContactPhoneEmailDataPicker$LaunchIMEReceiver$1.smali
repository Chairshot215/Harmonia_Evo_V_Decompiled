.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 3188
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3192
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->access$4000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3195
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->access$4108(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)I

    .line 3196
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3197
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3102(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 3199
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->access$4000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3201
    invoke-static {}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3800()Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3202
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v2, v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/widget/EditText;)V

    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3802(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    .line 3205
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3800()Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 3208
    :cond_2
    return-void
.end method
