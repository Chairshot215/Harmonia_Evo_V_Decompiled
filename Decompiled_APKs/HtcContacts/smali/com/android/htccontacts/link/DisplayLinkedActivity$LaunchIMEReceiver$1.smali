.class Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "DisplayLinkedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1117
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->access$1400(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1119
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->access$1508(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)I

    .line 1120
    invoke-static {}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1600()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->access$1700(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1602(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 1123
    :cond_0
    invoke-static {}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1600()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->access$1400(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1125
    invoke-static {}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1800()Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 1127
    :cond_1
    return-void
.end method
