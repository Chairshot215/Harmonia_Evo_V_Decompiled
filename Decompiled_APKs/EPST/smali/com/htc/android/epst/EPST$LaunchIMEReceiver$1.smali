.class Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "EPST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;->this$0:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;->this$0:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    iget v1, v0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->retryCount:I

    .line 898
    iget-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;->this$0:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    #getter for: Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->access$1500(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 899
    iget-object v1, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;->this$0:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->access$1502(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;->this$0:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    #getter for: Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->access$1500(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;->this$0:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    #getter for: Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->targetView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->access$1600(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->access$1700()Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 902
    invoke-static {}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->access$1700()Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 903
    return-void
.end method
