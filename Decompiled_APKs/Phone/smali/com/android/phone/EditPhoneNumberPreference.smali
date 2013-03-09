.class public Lcom/android/phone/EditPhoneNumberPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final CM_CONFIRM:I = 0x0

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mTime:Lcom/htc/widget/HtcSpinner;

.field private mTimeFieldVisible:Z

.field private timeArray:[I

.field private timeSeconds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->timeSeconds:I

    .line 105
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->timeArray:[I

    .line 496
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 139
    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f0d0034

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 151
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 152
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    return-void

    .line 105
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EditPhoneNumberPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTime()I
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->timeArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->timeArray:[I

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    aget v0, v0, v1

    .line 592
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->timeArray:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 284
    const v1, 0x7f08012b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 288
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 289
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 292
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 209
    const/4 v4, -0x2

    iput v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 211
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 216
    .local v2, editText:Landroid/widget/EditText;
    const v4, 0x7f08012e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    .line 217
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    const-string v5, "common_button_small"

    invoke-static {v4, v5}, Lcom/android/phone/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 219
    if-eqz v2, :cond_1

    .line 222
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v4, p0}, Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, defaultNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 225
    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 228
    .end local v1           #defaultNumber:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 233
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 234
    const/4 v4, 0x1

    invoke-static {v6, v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 236
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 240
    :cond_1
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    .line 241
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/phone/EditPhoneNumberPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/EditPhoneNumberPreference$1;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_2
    const v4, 0x7f08012f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 252
    .local v3, time_field:Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeFieldVisible:Z

    if-nez v4, :cond_3

    .line 253
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    :goto_0
    return-void

    .line 255
    :cond_3
    const v4, 0x7f080052

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcSpinner;

    iput-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070039

    const v6, 0x20900ee

    invoke-static {v4, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 266
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x20900ed

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 268
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 269
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    iget v5, p0, Lcom/android/phone/EditPhoneNumberPreference;->timeSeconds:I

    div-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindView(Landroid/view/View;)V

    .line 176
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 182
    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 183
    iget-boolean v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 192
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v2, 0x0

    .line 199
    .local v2, vis:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 196
    :cond_5
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 386
    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v1, v0, :cond_0

    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 391
    :cond_0
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 392
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 393
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 400
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 403
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V

    .line 413
    :cond_1
    return-void

    .line 406
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 1
    .parameter "pickedValue"

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 366
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 300
    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 305
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v1, :cond_2

    .line 306
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 327
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    const v1, 0x7f020064

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 329
    return-void

    .line 309
    .restart local v0       #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 316
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 317
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {p1, v4, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 320
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 466
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/phone/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 468
    return-void

    .line 466
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 500
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 343
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 338
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 348
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 350
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 356
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 357
    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 358
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 453
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 456
    return-object p0
.end method

.method public setSummaryOff(I)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 534
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 537
    :cond_0
    return-object p0
.end method

.method public setSummaryOn(I)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 510
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 513
    :cond_0
    return-object p0
.end method

.method public setTime(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 596
    iput p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->timeSeconds:I

    .line 597
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTime:Lcom/htc/widget/HtcSpinner;

    div-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 599
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 601
    :cond_0
    return-void
.end method

.method public setTimeFieldVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeFieldVisible:Z

    .line 583
    return-void
.end method

.method public setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "checked"

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 431
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 557
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 559
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 560
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, shouldDisable:Z
    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 484
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 489
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return v1

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->enableHtcTextSelection(ZI)V

    .line 381
    :cond_0
    return-void
.end method

.method public showPhoneNumberDialog()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 574
    return-void
.end method
