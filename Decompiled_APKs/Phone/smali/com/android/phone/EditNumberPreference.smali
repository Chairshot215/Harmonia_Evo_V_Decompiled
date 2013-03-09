.class public Lcom/android/phone/EditNumberPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "EditNumberPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static POSITIVE_BUTTON_ID:I


# instance fields
.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEditText:Landroid/widget/EditText;

.field private mPositiveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x20200b2

    sput v0, Lcom/android/phone/EditNumberPreference;->POSITIVE_BUTTON_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mEditText:Landroid/widget/EditText;

    .line 19
    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mEditText:Landroid/widget/EditText;

    .line 19
    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mEditText:Landroid/widget/EditText;

    .line 19
    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    .line 27
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 42
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 46
    :cond_0
    return-void

    .line 43
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
    .line 52
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v1, p0, Lcom/android/phone/EditNumberPreference;->mDialog:Landroid/app/Dialog;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 87
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
    .line 58
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/EditNumberPreference;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 78
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/EditNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/android/phone/EditNumberPreference;->POSITIVE_BUTTON_ID:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/EditNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mPositiveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditNumberPreference;->mEditText:Landroid/widget/EditText;

    .line 70
    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 72
    iget-object v0, p0, Lcom/android/phone/EditNumberPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    :cond_1
    return-void
.end method
