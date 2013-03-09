.class public Lcom/android/phone/assist/EditEnhancedPlusCodePreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "EditEnhancedPlusCodePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/assist/EditEnhancedPlusCodePreference$GetDefaultNumberListener;,
        Lcom/android/phone/assist/EditEnhancedPlusCodePreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EditEnhancedPlusCodePreference"


# instance fields
.field private mButtonClicked:I

.field private mCountryListIntent:Landroid/content/Intent;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mParentActivity:Landroid/app/Activity;

.field private mPlusCodePickButton:Landroid/widget/ImageButton;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const v3, 0x7f03004b

    invoke-virtual {p0, v3}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->setDialogLayoutResource(I)V

    .line 77
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCountryListIntent:Landroid/content/Intent;

    .line 78
    iget-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCountryListIntent:Landroid/content/Intent;

    const-class v4, Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    iget-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCountryListIntent:Landroid/content/Intent;

    const-string v4, "diagId"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 82
    .local v2, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCurrentCountryIso:Ljava/lang/String;

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "countryIso"

    iget-object v4, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCountryListIntent:Landroid/content/Intent;

    const-string v4, "countryIso"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    sget-object v3, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v4, 0x7f0d0034

    invoke-virtual {p1, p2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    sget-object v3, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCountryListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mPrefId:I

    return v0
.end method


# virtual methods
.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 180
    const v1, 0x7f08012b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 185
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 188
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 133
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mButtonClicked:I

    .line 135
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 140
    .local v0, editText:Landroid/widget/EditText;
    const v2, 0x7f08012c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mPlusCodePickButton:Landroid/widget/ImageButton;

    .line 141
    iget-object v2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mPlusCodePickButton:Landroid/widget/ImageButton;

    const v3, 0x1080325

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, plusCodePrefixNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getPlusCodePrefixNumber()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 151
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 155
    .end local v1           #plusCodePrefixNumber:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mPlusCodePickButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mPlusCodePickButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;-><init>(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_3
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindView(Landroid/view/View;)V

    .line 110
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 116
    .local v0, sum:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v2, 0x0

    .line 123
    .local v2, vis:I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 120
    .restart local v0       #sum:Ljava/lang/CharSequence;
    :cond_1
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 226
    iput p2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mButtonClicked:I

    .line 227
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 228
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 233
    iget v0, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 234
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setPlusCodePrefixNumber(Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 238
    :cond_0
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setCurrentPrefixCountryIso(Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 240
    return-void
.end method

.method public onPickActivityResult(Landroid/content/Intent;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 201
    const-string v3, "diagResult"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, ret:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->retrievePrefixNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 205
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mParentActivity:Landroid/app/Activity;

    .line 193
    iput p2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mPrefId:I

    .line 194
    return-void
.end method

.method public setPlusCodePrefixNumber(Ljava/lang/String;)Lcom/android/phone/assist/EditEnhancedPlusCodePreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->setText(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setPlusCodePrefixNumber(Ljava/lang/String;)V

    .line 249
    return-object p0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/widget/HtcIfTextView;->enableHtcTextSelection(ZI)V

    .line 220
    :cond_0
    return-void
.end method
