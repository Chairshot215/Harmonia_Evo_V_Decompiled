.class public Lcom/htc/cs/activity/accountactivities/CSSettingActivity;
.super Landroid/app/Activity;
.source "CSSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;
    }
.end annotation


# static fields
.field private static final CS_SYNC_FREQUNECY:Ljava/lang/String; = "sync_frequency"

.field private static final DIALOG_ERROR_NO_NETWORK:I = 0x4

.field private static final DIALOG_GET_SETTING:I = 0x1

.field private static final DIALOG_HTC_NESLETTER:I = 0x5

.field private static final MESSAGE_GET_INFO:I = 0x1

.field private static final MISSING_DEVICE:I = 0x2

.field private static final PASSWORD_CHANGE:I = 0x1


# instance fields
.field private MarketOptIn:Ljava/lang/Boolean;

.field private TAG:Ljava/lang/String;

.field TimezoneCityName:Ljava/lang/String;

.field TimezoneId:Ljava/lang/String;

.field appData:Landroid/content/Intent;

.field dialog:Lcom/htc/widget/HtcAlertDialog;

.field private volatile mActivityState:I

.field private mHandler:Landroid/os/Handler;

.field private subscribing:Landroid/widget/CheckBox;

.field tvSummary:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "CSSettingActivity"

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->subscribing:Landroid/widget/CheckBox;

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->MarketOptIn:Ljava/lang/Boolean;

    .line 71
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mActivityState:I

    .line 293
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$7;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mHandler:Landroid/os/Handler;

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->activityDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->subscribing:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->refreshUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->MarketOptIn:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->MarketOptIn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getMarketOptIn()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private activityDestroyed()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mActivityState:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mActivityState:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCSSettingActivity(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    .line 87
    const-string v8, "MyHTC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "createCSSettingActivity"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->dialog:Lcom/htc/widget/HtcAlertDialog;

    :goto_1
    return-object v6

    .line 94
    :pswitch_1
    new-instance v6, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;-><init>(Landroid/content/Context;)V

    .line 95
    .local v6, progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    sget-object v8, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    invoke-virtual {v6, v8}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v8, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$1;

    invoke-direct {v8, p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$1;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V

    invoke-virtual {v6, v8}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 107
    .end local v6           #progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    :pswitch_2
    move-object v0, p0

    .line 108
    .local v0, context:Landroid/content/Context;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f090025

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x20c009f

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090057

    new-instance v10, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$4;

    invoke-direct {v10, p0, v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$4;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09005c

    new-instance v10, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$3;

    invoke-direct {v10, p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$3;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$2;

    invoke-direct {v9, p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$2;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto :goto_1

    .line 140
    .end local v0           #context:Landroid/content/Context;
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 141
    .local v3, mContext:Landroid/content/Context;
    const-string v8, "layout_inflater"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 142
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030004

    const v8, 0x7f0b0005

    invoke-virtual {p0, v8}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, layout:Landroid/view/View;
    const v8, 0x7f0b000a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 146
    .local v5, newsletter_txt:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 147
    .local v4, msg:Ljava/lang/CharSequence;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v8, 0x7f0b0009

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->subscribing:Landroid/widget/CheckBox;

    .line 150
    iget-object v8, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->subscribing:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->MarketOptIn:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v7, pwNewLetterDB:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v8, 0x7f090006

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 162
    const v8, 0x7f09005b

    new-instance v9, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;

    invoke-direct {v9, p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$5;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 175
    new-instance v8, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$6;

    invoke-direct {v8, p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$6;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 182
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 183
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMarketOptIn()Ljava/lang/Boolean;
    .locals 20

    .prologue
    .line 348
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 349
    .local v17, result:Ljava/lang/Boolean;
    new-instance v2, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    .line 352
    .local v2, restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v8, p0

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lcom/htc/cscore/util/CSUtil;->handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v11

    .line 359
    .local v11, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v2, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 360
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getEmailForProductOption()Ljava/lang/Boolean;

    move-result-object v17

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setHTCNewsLetter(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMarketOptIn() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v11           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_0
    :goto_0
    move-object/from16 v3, v17

    .line 419
    :goto_1
    return-object v3

    .line 364
    :catch_0
    move-exception v13

    .line 366
    .local v13, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-virtual {v13}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v18

    .line 368
    .local v18, type:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v14

    .line 370
    .local v14, errcode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v14, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v8, p0

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lcom/htc/cscore/util/CSUtil;->renewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v12

    .line 379
    .local v12, devicetoken1:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v2, v12}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 380
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getEmailForProductOption()Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    goto :goto_0

    .line 383
    .end local v12           #devicetoken1:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :catch_1
    move-exception v10

    .line 385
    .local v10, csex:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v19

    .line 386
    .local v19, typeEx:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v15

    .line 387
    .local v15, errcodeEx:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception errcodeEx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v15, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->removeDialog(I)V

    .line 390
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v16, intent:Landroid/content/Intent;
    const-string v3, "com.htc.cs"

    const-string v4, "com.htc.cs.activity.accountactivities.CSErrorHandlingDialog"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v3, "com.htc.cs.CSWebExceptionDB.RequireNewPassword"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 397
    .end local v16           #intent:Landroid/content/Intent;
    :cond_1
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v15, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->removeDialog(I)V

    .line 399
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 400
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v3, "com.htc.cs"

    const-string v4, "com.htc.cs.activity.accountactivities.CSErrorHandlingDialog"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v3, "com.htc.cs.CSWebExceptionDB.DeviceDisconnected"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 404
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 407
    .end local v16           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHTCNewsLetter(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_0

    .line 413
    .end local v10           #csex:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v13           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v14           #errcode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .end local v15           #errcodeEx:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #typeEx:Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 415
    .local v13, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHTCNewsLetter(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_0
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshUI() MarketOptIn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->MarketOptIn:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshUI() String = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getMarketOptIn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->showDialog(I)V

    .line 324
    return-void
.end method

.method private setupLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 310
    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->showDialog(I)V

    .line 311
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, endMsg:Landroid/os/Message;
    new-instance v1, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;

    invoke-direct {v1, p0, p0, v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;Landroid/content/Context;Landroid/os/Message;)V

    .line 313
    .local v1, mReadLegalInfo:Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;
    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->start()V

    .line 314
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 283
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 208
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-ne p1, v5, :cond_2

    .line 211
    if-nez p2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->finish()V

    .line 214
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 215
    invoke-virtual {p0, v5}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->showDialog(I)V

    .line 216
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, endMsg:Landroid/os/Message;
    new-instance v1, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;

    invoke-direct {v1, p0, p0, v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;-><init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;Landroid/content/Context;Landroid/os/Message;)V

    .line 218
    .local v1, mReadLegalInfo:Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;
    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->start()V

    .line 223
    .end local v0           #endMsg:Landroid/os/Message;
    .end local v1           #mReadLegalInfo:Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 455
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mActivityState:I

    .line 79
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->createCSSettingActivity(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 259
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mActivityState:I

    .line 261
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 250
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mActivityState:I

    .line 254
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 266
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->mActivityState:I

    .line 232
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 271
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 238
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->checkNetworkAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->showDialog(I)V

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->setupLayout()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 278
    return-void
.end method
