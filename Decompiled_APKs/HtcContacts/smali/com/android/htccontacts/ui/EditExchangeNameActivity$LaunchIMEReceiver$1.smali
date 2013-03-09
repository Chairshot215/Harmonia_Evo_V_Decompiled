.class Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "EditExchangeNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 627
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    iget v1, v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->retryCount:I

    .line 628
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    #getter for: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$500(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$502(Lcom/android/htccontacts/ui/EditExchangeNameActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    #getter for: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$500(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    #getter for: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mFNEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$600(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    #getter for: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$700(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 637
    :cond_1
    return-void
.end method
