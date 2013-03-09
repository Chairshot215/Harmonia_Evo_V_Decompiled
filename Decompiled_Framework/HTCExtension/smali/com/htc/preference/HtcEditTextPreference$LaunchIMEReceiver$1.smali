.class Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "HtcEditTextPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget v1, v0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/preference/HtcEditTextPreference;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/preference/HtcEditTextPreference;->access$002(Lcom/htc/preference/HtcEditTextPreference;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    #getter for: Lcom/htc/preference/HtcEditTextPreference;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/preference/HtcEditTextPreference;->access$000(Lcom/htc/preference/HtcEditTextPreference;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    #getter for: Lcom/htc/preference/HtcEditTextPreference;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/preference/HtcEditTextPreference;->access$000(Lcom/htc/preference/HtcEditTextPreference;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    #getter for: Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/htc/preference/HtcEditTextPreference;->access$100(Lcom/htc/preference/HtcEditTextPreference;)Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    #getter for: Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/htc/preference/HtcEditTextPreference;->access$100(Lcom/htc/preference/HtcEditTextPreference;)Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
