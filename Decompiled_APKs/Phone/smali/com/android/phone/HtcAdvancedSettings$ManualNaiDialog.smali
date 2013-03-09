.class Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcAdvancedSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManualNaiDialog"
.end annotation


# static fields
.field static final BUTTON_SUBMIT:I = -0x1


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/HtcAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/HtcAdvancedSettings;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    .line 754
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 755
    iput-object p3, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 756
    return-void
.end method

.method private checkDomainIsNum(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 853
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, domain:Ljava/lang/String;
    const-string v1, "[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private checkPwdString(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 839
    const-string v0, "^[A-Za-z0-9_!#$%&\\(\\)\\*\\+-\\.\\/:;<>=\\?@\\[\\]\\{\\}]{0,16}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkString(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 833
    const-string v0, "^[A-Za-z0-9][A-Za-z0-9_\\.\\-\\/]{0,22}[A-Za-z0-9]@[A-Za-z0-9][A-Za-z0-9_\\.\\-]{1,18}[A-Za-z0-9]$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[A-Za-z0-9]@[A-Za-z0-9][A-Za-z0-9_\\.\\-]{1,18}[A-Za-z0-9]$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->checkDomainIsNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateConfirmButtonEnable()V
    .locals 2

    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 884
    .local v0, enableState:Z
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 885
    return-void

    .line 882
    .end local v0           #enableState:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInputGuard()V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->updateUidErrorTip()V

    .line 860
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->updatePwdErrorTip()V

    .line 861
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->updateConfirmButtonEnable()V

    .line 862
    return-void
.end method

.method private updatePwdErrorTip()V
    .locals 3

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->checkPwdString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0192

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUidErrorTip()V
    .locals 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0192

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 871
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v2, -0x1

    .line 811
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 813
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 822
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->updateInputGuard()V

    .line 823
    return-void

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 829
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 807
    return-void

    .line 803
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    .line 762
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setView(Landroid/view/View;)V

    .line 763
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setInverseBackgroundForced(Z)V

    .line 765
    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 767
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f0e0193

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setTitle(I)V

    .line 768
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v2, 0x7f080109

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v3, 0x7f08010a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    #setter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/android/phone/HtcAdvancedSettings;->access$602(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 770
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v3, 0x7f08010c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    #setter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/android/phone/HtcAdvancedSettings;->access$702(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 772
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 773
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 774
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 776
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 777
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 778
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 780
    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 781
    const/4 v1, -0x2

    const/high16 v2, 0x104

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 784
    invoke-virtual {p0, p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 786
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v2, 0x7f08010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 789
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 908
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->updateInputGuard()V

    .line 903
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 794
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStart()V

    .line 796
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Lcom/android/phone/HtcAdvancedSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Lcom/android/phone/HtcAdvancedSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Lcom/android/phone/HtcAdvancedSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 890
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->updateInputGuard()V

    .line 896
    const/4 v0, 0x0

    return v0
.end method
