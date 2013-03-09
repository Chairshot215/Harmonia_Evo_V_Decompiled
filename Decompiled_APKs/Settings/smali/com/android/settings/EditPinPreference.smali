.class Lcom/android/settings/EditPinPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$onCreateDialogListener;,
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 149
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 117
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 119
    const v2, 0x1020003

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 122
    .local v1, editText:Landroid/widget/EditText;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 135
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 136
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 138
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 140
    new-array v0, v3, [Landroid/text/InputFilter;

    .line 141
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 145
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    :cond_0
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 81
    const v1, 0x7f04005c

    invoke-virtual {p0, v1}, Lcom/android/settings/EditPinPreference;->setDialogLayoutResource(I)V

    .line 84
    invoke-super {p0}, Lcom/htc/preference/HtcEditTextPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, dialog:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/EditPinPreference;->mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/EditPinPreference;->mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

    invoke-interface {v1, v0}, Lcom/android/settings/EditPinPreference$onCreateDialogListener;->onCreateDialog(Landroid/view/View;)V

    .line 90
    :cond_0
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public setOnCreateDialogListener(Lcom/android/settings/EditPinPreference$onCreateDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

    .line 71
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    .line 66
    return-void
.end method

.method public showPinDialog()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 162
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 165
    :cond_1
    return-void
.end method
