.class Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "DisplaySuggestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1264
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->access$2000(Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1266
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->access$2108(Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;)I

    .line 1267
    invoke-static {}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$2200()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->access$2300(Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$2202(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 1270
    :cond_0
    invoke-static {}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$2200()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->access$2000(Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1272
    invoke-static {}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$2400()Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 1274
    :cond_1
    return-void
.end method
