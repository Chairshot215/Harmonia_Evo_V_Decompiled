.class Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "EditStructuredNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 618
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    .line 620
    .local v0, activity:Lcom/android/htccontacts/ui/EditStructuredNameActivity;
    if-eqz v0, :cond_1

    .line 621
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    iget v2, v1, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->retryCount:I

    .line 622
    #getter for: Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->access$200(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 624
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->access$202(Lcom/android/htccontacts/ui/EditStructuredNameActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 627
    :cond_0
    #getter for: Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->access$300(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->access$200(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    #getter for: Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mFNEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->access$300(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 629
    #getter for: Lcom/android/htccontacts/ui/EditStructuredNameActivity;->mResultReceiver:Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->access$400(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 632
    :cond_1
    return-void
.end method
