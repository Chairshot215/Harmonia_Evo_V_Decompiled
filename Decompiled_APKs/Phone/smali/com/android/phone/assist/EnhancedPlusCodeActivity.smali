.class public Lcom/android/phone/assist/EnhancedPlusCodeActivity;
.super Landroid/app/Activity;
.source "EnhancedPlusCodeActivity.java"


# static fields
.field public static final DIAG_COUNTRY_LIST:I = 0x1

.field public static final DIAG_PROMPT_PREFIX:I = 0x0

.field private static final ENHANCED_PLUS_CODE_COUNTRY_LIST_ID:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "EnhancedPlusCodeActivity"


# instance fields
.field private dropDown:Landroid/widget/TextView;

.field private mCountryList:[Ljava/lang/String;

.field private mCountryListListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 207
    new-instance v0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$6;

    invoke-direct {v0, p0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity$6;-><init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)V

    iput-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryListListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->dropDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/assist/EnhancedPlusCodeActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->selectCountry(I)V

    return-void
.end method

.method private selectCountry(I)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryList:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 182
    const-string v2, "EnhancedPlusCodeActivity"

    const-string v3, "selectCountry - ignore because mCountryList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 186
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryList:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_2

    .line 187
    :cond_1
    const-string v2, "EnhancedPlusCodeActivity"

    const-string v3, "selectCountry - ignore because pos out of boundary"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryList:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 197
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 198
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 204
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->finish()V

    goto :goto_0

    .line 200
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "diagResult"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private setupUI(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 40
    const-string v2, "diagId"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 42
    .local v1, dialogId:I
    const-string v2, "countryIso"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 44
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 160
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    const-string v1, "diagResult"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->dropDown:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->setupUI(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 51
    .local v11, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    .line 56
    .end local v11           #telMgr:Landroid/telephony/TelephonyManager;
    .local v7, country:Ljava/lang/String;
    :goto_0
    move-object v8, v7

    .line 61
    .local v8, countryIso:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 63
    .local v10, selected:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getCountryList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryList:[Ljava/lang/String;

    .line 64
    iget-object v3, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryList:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 65
    const-string v2, "EnhancedPlusCodeActivity"

    const-string v3, "onCreateDialog - null mCountryList"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v0

    .line 151
    :goto_1
    return-object v9

    .line 53
    .end local v7           #country:Ljava/lang/String;
    .end local v8           #countryIso:Ljava/lang/String;
    .end local v10           #selected:Ljava/lang/Integer;
    :cond_0
    const-string v3, "countryIso"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #country:Ljava/lang/String;
    goto :goto_0

    .line 69
    .restart local v8       #countryIso:Ljava/lang/String;
    .restart local v10       #selected:Ljava/lang/Integer;
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 70
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getCountryIsoIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 74
    if-nez v10, :cond_2

    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 79
    :cond_2
    const/4 v9, 0x0

    .line 81
    .local v9, dialog:Lcom/htc/widget/HtcAlertDialog;
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030028

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, layout:Landroid/view/View;
    const v0, 0x7f0800d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 85
    .local v6, SelectItem:Landroid/view/View;
    const v0, 0x7f0800d9

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0e04af

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v0, 0x7f0800da

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->dropDown:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryList:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v12, v0, v3

    .line 93
    .local v12, value:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->dropDown:Landroid/widget/TextView;

    new-instance v3, Lcom/android/phone/assist/EnhancedPlusCodeActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity$1;-><init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0152

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;

    invoke-direct {v3, p0, v8}, Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;-><init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/phone/assist/EnhancedPlusCodeActivity$3;

    invoke-direct {v3, p0, v8}, Lcom/android/phone/assist/EnhancedPlusCodeActivity$3;-><init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/assist/EnhancedPlusCodeActivity$2;

    invoke-direct {v2, p0, v8}, Lcom/android/phone/assist/EnhancedPlusCodeActivity$2;-><init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    .line 137
    goto/16 :goto_1

    .line 139
    .end local v1           #layout:Landroid/view/View;
    .end local v6           #SelectItem:Landroid/view/View;
    .end local v12           #value:Ljava/lang/String;
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e04ae

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryList:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->mCountryListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/assist/EnhancedPlusCodeActivity$5;

    invoke-direct {v2, p0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity$5;-><init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    goto/16 :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
