.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;
.super Ljava/lang/Object;
.source "HtcContactBlackListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->createInputNumbernDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

.field final synthetic val$InputNumberDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    iput-object p2, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;->val$InputNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;->val$InputNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;->val$InputNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;->val$InputNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1068
    :cond_0
    return-void

    .line 1066
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1075
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1082
    return-void
.end method
