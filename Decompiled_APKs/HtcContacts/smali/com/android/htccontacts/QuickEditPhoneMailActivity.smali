.class public Lcom/android/htccontacts/QuickEditPhoneMailActivity;
.super Landroid/app/Activity;
.source "QuickEditPhoneMailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;
    }
.end annotation


# static fields
.field private static final MAIL_MODE:I = 0x1f

.field private static final PHONE_MODE:I = 0x1e

.field private static final TEXT_MODE:I = 0x20


# instance fields
.field private mContentTextWatcher:Landroid/text/TextWatcher;

.field private mIntent:Landroid/content/Intent;

.field private mMode:I

.field private mNumberText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;-><init>(Lcom/android/htccontacts/QuickEditPhoneMailActivity;Lcom/android/htccontacts/QuickEditPhoneMailActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mContentTextWatcher:Landroid/text/TextWatcher;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->doRevertAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->disableOkButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->enableOkButton()V

    return-void
.end method

.method private disableOkButton()V
    .locals 3

    .prologue
    .line 230
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 231
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 232
    return-void
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->setResult(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->finish()V

    .line 222
    return-void
.end method

.method private doSaveAction()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 194
    const/16 v4, 0x1e

    iget v5, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v4, v5, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, sPhoneNumber:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 197
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "NewNumber"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6, v4}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->setResult(ILandroid/content/Intent;)V

    .line 216
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #sPhoneNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->finish()V

    .line 217
    return-void

    .line 201
    :cond_1
    const/16 v4, 0x1f

    iget v5, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v4, v5, :cond_2

    .line 202
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, sMailAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v4, "NewMail"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6, v4}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 208
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #sMailAddress:Ljava/lang/String;
    :cond_2
    const/16 v4, 0x20

    iget v5, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v4, v5, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, sText:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 211
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 212
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v4, "NewText"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6, v4}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private enableOkButton()V
    .locals 3

    .prologue
    .line 225
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 226
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 227
    return-void
.end method

.method private resolveIntent()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, sAction:Ljava/lang/String;
    const-string v1, "com.android.htccontacts.ACTION_QUICK_EDIT_PHONE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v1, "com.android.htccontacts.ACTION_QUICK_EDIT_MAIL"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    goto :goto_0

    .line 186
    :cond_1
    const-string v1, "com.android.htccontacts.ACTION_QUICK_EDIT_TEXT"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    const v10, 0x7f030063

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->resolveIntent()V

    .line 70
    const v10, 0x7f0700da

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 72
    .local v4, editLabel:Landroid/widget/TextView;
    const v10, 0x7f070049

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, blankView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 77
    :cond_0
    const v10, 0x7f0700d9

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 78
    .local v7, textView:Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 80
    const/4 v8, 0x0

    .line 81
    .local v8, titleResId:I
    const/16 v10, 0x1e

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_7

    .line 82
    const v8, 0x7f0a025b

    .line 83
    const v10, 0x7f0a00d3

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->setTitleBar(I)V

    .line 93
    const v10, 0x7f0700db

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    .line 94
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mContentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    const/16 v10, 0x1e

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_9

    .line 96
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 97
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 105
    :cond_2
    :goto_1
    const v10, 0x7f070017

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 106
    .local v3, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v10

    new-instance v11, Lcom/android/htccontacts/QuickEditPhoneMailActivity$1;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity$1;-><init>(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 115
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v10

    new-instance v11, Lcom/android/htccontacts/QuickEditPhoneMailActivity$2;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity$2;-><init>(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const/16 v10, 0x1e

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_b

    .line 125
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    const-string v10, "Number"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->finish()V

    .line 129
    :cond_4
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    const-string v11, "Number"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const-string v10, "Type"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/htccontacts/util/ContactsUtils;->getPhoneTypeResource(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, sType:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 135
    const v10, 0x2020010

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 136
    .local v9, type:Landroid/widget/TextView;
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v9           #type:Landroid/widget/TextView;
    :cond_5
    const-string v10, "SimType"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 139
    .local v1, bSimType:Z
    if-eqz v1, :cond_6

    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    if-eqz v10, :cond_6

    .line 140
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportPhoneLength(Landroid/content/Context;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/htccontacts/util/ContactsUtils;->restrainTextViewLength(Landroid/widget/TextView;I)V

    .line 171
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #bSimType:Z
    .end local v6           #sType:Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 84
    .end local v3           #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    :cond_7
    const/16 v10, 0x1f

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_8

    .line 85
    const v8, 0x7f0a025c

    .line 86
    const v10, 0x7f0a025d

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 87
    :cond_8
    const/16 v10, 0x20

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_1

    .line 88
    const v8, 0x7f0a031a

    .line 89
    const v10, 0x7f0a031b

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 98
    :cond_9
    const/16 v10, 0x1f

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_a

    .line 99
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    const/16 v11, 0x21

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 100
    :cond_a
    const/16 v10, 0x20

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_2

    .line 101
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 143
    .restart local v3       #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    :cond_b
    const/16 v10, 0x1f

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_e

    .line 144
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .restart local v0       #b:Landroid/os/Bundle;
    if-eqz v0, :cond_c

    const-string v10, "Mail"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 146
    :cond_c
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->finish()V

    .line 148
    :cond_d
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    const-string v11, "Mail"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v10, 0x2020010

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 153
    .restart local v9       #type:Landroid/widget/TextView;
    const v10, 0x7f0a025e

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 154
    const-string v10, "SimType"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 155
    .restart local v1       #bSimType:Z
    if-eqz v1, :cond_6

    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    if-eqz v10, :cond_6

    .line 156
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportEmailLength(Landroid/content/Context;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/htccontacts/util/ContactsUtils;->restrainTextViewLength(Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 159
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #bSimType:Z
    .end local v9           #type:Landroid/widget/TextView;
    :cond_e
    const/16 v10, 0x20

    iget v11, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mMode:I

    if-ne v10, v11, :cond_6

    .line 160
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    .restart local v0       #b:Landroid/os/Bundle;
    if-nez v0, :cond_f

    .line 162
    invoke-virtual {p0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->finish()V

    .line 164
    :cond_f
    const-string v10, "Text"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, originalText:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 166
    iget-object v10, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v10, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method protected setTitleBar(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 174
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 175
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 177
    return-void
.end method
