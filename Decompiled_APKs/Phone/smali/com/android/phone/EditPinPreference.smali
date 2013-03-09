.class public Lcom/android/phone/EditPinPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPinPreference$onCreateDialogListener;,
        Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mCreateDialogListener:Lcom/android/phone/EditPinPreference$onCreateDialogListener;

.field private mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method protected static validatePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 153
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 68
    const v2, 0x7f030050

    invoke-virtual {p0, v2}, Lcom/android/phone/EditPinPreference;->setDialogLayoutResource(I)V

    .line 70
    invoke-super {p0}, Lcom/htc/preference/HtcEditTextPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, dialog:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/EditPinPreference;->mCreateDialogListener:Lcom/android/phone/EditPinPreference$onCreateDialogListener;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/phone/EditPinPreference;->mCreateDialogListener:Lcom/android/phone/EditPinPreference$onCreateDialogListener;

    invoke-interface {v2, v0}, Lcom/android/phone/EditPinPreference$onCreateDialogListener;->onCreateDialog(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 79
    .local v1, textfield:Landroid/widget/EditText;
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 80
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 82
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/phone/EditPinPreference;Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public setOnCreateDialogListener(Lcom/android/phone/EditPinPreference$onCreateDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/EditPinPreference;->mCreateDialogListener:Lcom/android/phone/EditPinPreference$onCreateDialogListener;

    .line 140
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    .line 51
    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method
