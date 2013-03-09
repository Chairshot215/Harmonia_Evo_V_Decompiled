.class public Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;
.super Landroid/app/Activity;
.source "NBPCDSetting_AddIDD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;,
        Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;,
        Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NBPCDSetting_AddIDD"


# instance fields
.field private final DIALOG_EMPTY_IDD:I

.field private final DIALOG_IDD_EXISTED:I

.field private final DIALOG_INVALID_IDD:I

.field mCountryNameEdit:Landroid/widget/EditText;

.field mIddEdit:Landroid/widget/EditText;

.field mIddList:[Ljava/lang/String;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->DIALOG_IDD_EXISTED:I

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->DIALOG_EMPTY_IDD:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->DIALOG_INVALID_IDD:I

    .line 249
    iput-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 250
    iput-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    .line 261
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->showWarningDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->isValidIDDValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    return-object v0
.end method

.method private isValidIDDValue(Ljava/lang/String;)Z
    .locals 3
    .parameter "newIdd"

    .prologue
    const/4 v1, 0x0

    .line 236
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 224
    const-string v2, "CountryName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, country_name:Ljava/lang/String;
    const-string v2, "iddlist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddList:[Ljava/lang/String;

    .line 226
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 227
    const-string v2, "NBPCDSetting_AddIDD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iddlist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mCountryNameEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mCountryNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_1
    return-void
.end method

.method private setupHtcHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 88
    const-string v3, "NBPCDSetting_AddIDD"

    const-string v4, "setupHtcHeader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, titlebartext:Lcom/htc/widget/HeaderBarText;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 95
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 99
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    .local v0, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 101
    return-void
.end method

.method private showWarningDialog(I)V
    .locals 4
    .parameter "dialogType"

    .prologue
    .line 161
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0106

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0140

    new-instance v3, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$1;

    invoke-direct {v3, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$1;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 169
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 181
    return-void

    .line 171
    :pswitch_0
    const v1, 0x7f0e0107

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :pswitch_1
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :pswitch_2
    const v1, 0x7f0e0109

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public launchIME()V
    .locals 3

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->retryCount:I

    .line 255
    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    invoke-virtual {v1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->relaunchIME()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    invoke-direct {v1, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)V

    iput-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    .line 258
    const-string v1, "NBPCDSetting_AddIDD"

    const-string v2, "launchIME()renew IME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->setupHtcHeader()V

    .line 111
    const v5, 0x7f030036

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->setContentView(I)V

    .line 113
    const v5, 0x7f0800ee

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mCountryNameEdit:Landroid/widget/EditText;

    .line 114
    const v5, 0x7f0800a9

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddEdit:Landroid/widget/EditText;

    .line 121
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    const v5, 0x7f0800ed

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 127
    .local v4, mViewLayout:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/htc/widget/HtcFooter;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, fl:Lcom/htc/widget/HtcFooter;
    new-instance v3, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 129
    .local v3, mSaveButton:Lcom/htc/widget/HtcFooterButton;
    const v5, 0x7f0e013d

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 130
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;

    invoke-direct {v5, p0, v7}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$1;)V

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 134
    new-instance v2, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 135
    .local v2, mCancelButton:Lcom/htc/widget/HtcFooterButton;
    const v5, 0x7f0e013f

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 136
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;

    invoke-direct {v5, p0, v7}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$1;)V

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 140
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->parseIntent(Landroid/content/Intent;)V

    .line 152
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    invoke-direct {v5, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)V

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    .line 153
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->launchIME()V

    .line 155
    return-void
.end method
