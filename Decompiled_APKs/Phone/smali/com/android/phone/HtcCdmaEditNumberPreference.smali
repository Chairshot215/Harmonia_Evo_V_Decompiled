.class public Lcom/android/phone/HtcCdmaEditNumberPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "HtcCdmaEditNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcCdmaEditNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/HtcCdmaEditNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Plus Code Dialing"


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/HtcCdmaEditNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mGetDefaultNumberListener:Lcom/android/phone/HtcCdmaEditNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mResetNumberButton:Landroid/widget/Button;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    const v1, 0x7f03004d

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setDialogLayoutResource(I)V

    .line 124
    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f0d0034

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 127
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 128
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 225
    const v1, 0x7f08012b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 229
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 230
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 233
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 184
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mButtonClicked:I

    .line 186
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 191
    .local v0, editText:Landroid/widget/EditText;
    const v1, 0x7f08012d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mResetNumberButton:Landroid/widget/Button;

    .line 194
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 201
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mResetNumberButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mResetNumberButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/HtcCdmaEditNumberPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference$1;-><init>(Lcom/android/phone/HtcCdmaEditNumberPreference;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_2
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindView(Landroid/view/View;)V

    .line 152
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 158
    iget v3, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 159
    iget-boolean v3, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 169
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const/4 v2, 0x0

    .line 175
    .local v2, vis:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 162
    :cond_2
    iget-object v3, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    .line 165
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 172
    :cond_5
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    iput p2, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mButtonClicked:I

    .line 296
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 297
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 304
    iget v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/HtcCdmaEditNumberPreference;

    .line 307
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setText(Ljava/lang/String;)V

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/HtcCdmaEditNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/HtcCdmaEditNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/HtcCdmaEditNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/HtcCdmaEditNumberPreference;I)V

    .line 317
    :cond_1
    return-void

    .line 310
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 240
    iget v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 241
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mChecked:Z

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 363
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/HtcCdmaEditNumberPreference;

    .line 365
    return-void

    .line 363
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/HtcCdmaEditNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/HtcCdmaEditNumberPreference$OnDialogClosedListener;

    .line 264
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 259
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/HtcCdmaEditNumberPreference;
    .locals 5
    .parameter "number"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 343
    iget-object v2, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setText(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 346
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cdma_plus_code_dialing_number_key"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 348
    const-string v2, "Plus Code Dialing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO save PLUS CODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->notifyChanged()V

    .line 354
    return-object p0
.end method

.method public setSummaryOff(I)Lcom/android/phone/HtcCdmaEditNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/HtcCdmaEditNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/HtcCdmaEditNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 396
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->notifyChanged()V

    .line 399
    :cond_0
    return-object p0
.end method

.method public setSummaryOn(I)Lcom/android/phone/HtcCdmaEditNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/HtcCdmaEditNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/HtcCdmaEditNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 373
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->notifyChanged()V

    .line 376
    :cond_0
    return-object p0
.end method

.method public showPhoneNumberDialog()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaEditNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 420
    return-void
.end method
