.class public Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;
.super Landroid/app/Activity;
.source "NBPCDSetting_EditCountry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;,
        Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;,
        Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;
    }
.end annotation


# static fields
.field static final OPTION_MENU_ITEM_CANCEL:I = 0x2

.field static final OPTION_MENU_ITEM_DELETE_COUNTRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NBPCDSetting_EditIDD"


# instance fields
.field private final DIALOG_DELETE_COUNTRY:I

.field private final DIALOG_EMPTY_IDD:I

.field private final DIALOG_IDD_EXISTED:I

.field private final DIALOG_INVALID_IDD:I

.field mCountryCodeEdit:Landroid/widget/EditText;

.field mCountryNameEdit:Landroid/widget/EditText;

.field mIddList:[Ljava/lang/String;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field mNDDEdit:Landroid/widget/EditText;

.field mPreCountryName:Ljava/lang/String;

.field private mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->DIALOG_IDD_EXISTED:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->DIALOG_EMPTY_IDD:I

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->DIALOG_INVALID_IDD:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->DIALOG_DELETE_COUNTRY:I

    .line 316
    iput-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 317
    iput-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    .line 328
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->showWarningDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    return-object v0
.end method

.method private isValidIDDValue(Ljava/lang/String;)Z
    .locals 3
    .parameter "newIdd"

    .prologue
    const/4 v1, 0x0

    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mIddList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mIddList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 292
    const-string v2, "CountryName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mPreCountryName:Ljava/lang/String;

    .line 293
    const-string v2, "COUNTRYCODE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, countryCode:Ljava/lang/String;
    const-string v2, "NDD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, ndd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mCountryNameEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mPreCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mCountryCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mNDDEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method private setupHtcHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 95
    const-string v3, "NBPCDSetting_EditIDD"

    const-string v4, "setupHtcHeader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v1, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 99
    .local v2, titlebartext:Lcom/htc/widget/HeaderBarText;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 102
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 106
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    .local v0, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 108
    return-void
.end method

.method private showWarningDialog(I)V
    .locals 6
    .parameter "dialogType"

    .prologue
    const v5, 0x7f0e0140

    .line 202
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0106

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$1;

    invoke-direct {v2, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$1;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 210
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 240
    return-void

    .line 212
    :pswitch_0
    const v1, 0x7f0e0107

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :pswitch_1
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :pswitch_2
    const v1, 0x7f0e010f

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :pswitch_3
    const v1, 0x7f0e0111

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mPreCountryName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    const/4 v1, -0x1

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$2;

    invoke-direct {v3, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$2;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 230
    const/4 v1, -0x2

    const v2, 0x7f0e013f

    invoke-virtual {p0, v2}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$3;

    invoke-direct {v3, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$3;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public launchIME()V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;->retryCount:I

    .line 322
    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    invoke-virtual {v1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;->relaunchIME()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    invoke-direct {v1, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V

    iput-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    .line 325
    const-string v1, "NBPCDSetting_EditIDD"

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

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->setupHtcHeader()V

    .line 118
    const v5, 0x7f030037

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->setContentView(I)V

    .line 120
    const v5, 0x7f0800ec

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mCountryNameEdit:Landroid/widget/EditText;

    .line 121
    const v5, 0x7f0800a8

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mCountryCodeEdit:Landroid/widget/EditText;

    .line 122
    const v5, 0x7f0800aa

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mNDDEdit:Landroid/widget/EditText;

    .line 129
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 132
    const v5, 0x7f0800ef

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 135
    .local v4, mViewLayout:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/htc/widget/HtcFooter;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, fl:Lcom/htc/widget/HtcFooter;
    new-instance v3, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 137
    .local v3, mSaveButton:Lcom/htc/widget/HtcFooterButton;
    const v5, 0x7f0e013d

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 138
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;

    invoke-direct {v5, p0, v7}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$1;)V

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 142
    new-instance v2, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, mCancelButton:Lcom/htc/widget/HtcFooterButton;
    const v5, 0x7f0e013f

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 144
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;

    invoke-direct {v5, p0, v7}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$1;)V

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->parseIntent(Landroid/content/Intent;)V

    .line 162
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    invoke-direct {v5, p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$LaunchIMEReceiver;

    .line 163
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mCountryNameEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->launchIME()V

    .line 165
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    const v0, 0x7f0e00fb

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 181
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 188
    :pswitch_0
    const-string v0, "ANALYTIC_Phone"

    const-string v1, "[NBPCDSetting_EditCountry]Delete country"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->showWarningDialog(I)V

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
