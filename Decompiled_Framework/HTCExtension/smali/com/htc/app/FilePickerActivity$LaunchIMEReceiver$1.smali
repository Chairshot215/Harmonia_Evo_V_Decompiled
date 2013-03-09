.class Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->reLaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->access$3808(Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;)I

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$600(Lcom/htc/app/FilePickerActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerActivity;->access$602(Lcom/htc/app/FilePickerActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$800(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    new-instance v1, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v2, v2, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct {v1, v2}, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;-><init>(Lcom/htc/app/FilePickerActivity;)V

    #setter for: Lcom/htc/app/FilePickerActivity;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerActivity;->access$802(Lcom/htc/app/FilePickerActivity;Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;)Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$600(Lcom/htc/app/FilePickerActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$700(Lcom/htc/app/FilePickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/htc/app/FilePickerActivity;->access$800(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$800(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method
