.class public Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkButtonQueryTextWatcher"
.end annotation


# instance fields
.field beforeLen:I

.field currentLen:I

.field final synthetic this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 901
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->beforeLen:I

    .line 903
    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->currentLen:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x5004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    const/4 v2, 0x0

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->refreshCompanyDirectoryList(Z)V
    invoke-static {v1, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1900(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Z)V

    .line 915
    new-instance v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v3, v3, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/widget/EditText;)V

    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$2702(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;)Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    .line 916
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->launchIME(Landroid/widget/EditText;)V

    .line 919
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 921
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->beforeLen:I

    .line 922
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 906
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;->currentLen:I

    .line 907
    return-void
.end method
