.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CarrierBillingPasswordDialogFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;

.field private mMainPasswordView:Landroid/view/View;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mProgressIndicator:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 140
    return-void
.end method

.method private createPasswordForgotHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    .locals 3
    .parameter "passwordPrompt"
    .parameter "passwordForgotUrl"

    .prologue
    .line 39
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;-><init>()V

    .line 40
    .local v1, fragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "password_prompt"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "password_forgot_url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method


# virtual methods
.method public clearPasswordField()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mPasswordEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public hideProgressIndicator()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mMainPasswordView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mProgressIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;->onCarrierBillingPasswordResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x2

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f040024

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, mainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 52
    .local v6, args:Landroid/os/Bundle;
    const-string v3, "password_prompt"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 53
    .local v11, passwordPrompt:Ljava/lang/String;
    const-string v3, "password_forgot_url"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, passwordForgotUrl:Ljava/lang/String;
    const v3, 0x7f08006a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mMainPasswordView:Landroid/view/View;

    .line 56
    const v3, 0x7f080058

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mProgressIndicator:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->hideProgressIndicator()V

    .line 60
    const v3, 0x7f08006c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 61
    .local v12, passwordPromptTextView:Landroid/widget/TextView;
    const v3, 0x7f08006e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 62
    .local v9, passwordForgotTextView:Landroid/widget/TextView;
    const v3, 0x7f08006d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 63
    const v3, 0x7f080069

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/ButtonBar;

    .line 64
    .local v7, buttonBar:Lcom/google/android/finsky/layout/ButtonBar;
    invoke-virtual {v7, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 65
    const v3, 0x7f07011d

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 66
    const/4 v3, 0x4

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/ButtonBar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v7, v13, v3, v13, v4}, Lcom/google/android/finsky/layout/ButtonBar;->setPadding(IIII)V

    .line 68
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070058

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 84
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v3, 0x5

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 85
    return-object v0

    .line 75
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    invoke-direct {p0, v10}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->createPasswordForgotHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, passwordForgotHtml:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public onNegativeButtonClick()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;->onCarrierBillingPasswordResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, enteredPassword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f07005b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    invoke-interface {v1, v2, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;->onCarrierBillingPasswordResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;

    .line 134
    return-void
.end method

.method public showProgressIndicator()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mMainPasswordView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->mProgressIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method
