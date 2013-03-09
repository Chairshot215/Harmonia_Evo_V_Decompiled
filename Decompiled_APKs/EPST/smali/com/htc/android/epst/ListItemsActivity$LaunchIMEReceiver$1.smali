.class Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    iget v1, v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->retryCount:I

    .line 1446
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/ListItemsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/android/epst/ListItemsActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/android/epst/ListItemsActivity;->access$1502(Lcom/htc/android/epst/ListItemsActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 1447
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$1500(Lcom/htc/android/epst/ListItemsActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->targetView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$1600(Lcom/htc/android/epst/ListItemsActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/htc/android/epst/ListItemsActivity;->access$1700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 1449
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;->this$1:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$1700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 1450
    return-void
.end method
