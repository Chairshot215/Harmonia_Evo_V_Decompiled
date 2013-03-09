.class Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

.field final synthetic val$this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15929
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->val$this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15932
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->access$15700(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 15934
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->access$15608(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;)I

    .line 15935
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15936
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12702(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 15939
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->access$15700(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15941
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mResultReceiver:Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 15943
    :cond_1
    return-void
.end method
