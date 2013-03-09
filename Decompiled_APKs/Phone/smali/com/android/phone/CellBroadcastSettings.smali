.class public Lcom/android/phone/CellBroadcastSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "CellBroadcastSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CellBroadcastSettings$ChannelList;
    }
.end annotation


# static fields
.field public static final CB_ADD_CHANNEL:Ljava/lang/String; = "add_channel"

.field public static final CB_CHANNEL_LIST:Ljava/lang/String; = "list_channel_key"

.field public static final CB_LANG_LIST:Ljava/lang/String; = "lang_list"

.field public static final CB_RECEIVE_CHANNEL_LIST:Ljava/lang/String; = "recevie_channel_list"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "channel DESC"

.field static final LOG_TAG:Ljava/lang/String; = "CellBroadcastSettings"

.field private static final MSG_CHECK_SIM_READY:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final REQUEST_CODE_ADD_CHANNEL:I = 0x1

.field public static final REQUEST_CODE_EDIT_CHANNEL:I = 0x2


# instance fields
.field private mChannelList:Lcom/htc/preference/HtcPreferenceCategory;

.field private mCount:I

.field mExistChannel:[Ljava/lang/String;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CellBroadcastSettings$ChannelList;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxChannelnumber:I

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

.field public mUiThreadHandler:Landroid/os/Handler;

.field private prefAddChannel:Lcom/htc/preference/HtcPreference;

.field private prefSet:Lcom/htc/preference/HtcPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-string v0, "content://cbchannels/cbch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CellBroadcastSettings;->CONTENT_URI:Landroid/net/Uri;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CellBroadcastSettings;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mMap:Ljava/util/HashMap;

    .line 136
    new-instance v0, Lcom/android/phone/CellBroadcastSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CellBroadcastSettings$1;-><init>(Lcom/android/phone/CellBroadcastSettings;)V

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mUiThreadHandler:Landroid/os/Handler;

    .line 579
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CellBroadcastSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 359
    :cond_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->dismissProgressDialog()V

    .line 347
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 349
    return-void
.end method


# virtual methods
.method public displayMenu(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 11
    .parameter "title"
    .parameter "channel"
    .parameter "enable"
    .parameter "Id"

    .prologue
    .line 409
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v3, initialValues:Landroid/content/ContentValues;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v9, menu:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v0, 0x3

    new-array v10, v0, [Ljava/lang/String;

    .line 414
    .local v10, menuItem:[Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 419
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 420
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 421
    invoke-virtual {v9, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 422
    new-instance v0, Lcom/android/phone/CellBroadcastSettings$3;

    move-object v1, p0

    move v2, p3

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/CellBroadcastSettings$3;-><init>(Lcom/android/phone/CellBroadcastSettings;ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v10, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 458
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 459
    .local v8, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 460
    return-void

    .line 417
    .end local v8           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    goto :goto_0
.end method

.method public editChannel(Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 2
    .parameter "title"
    .parameter "channel"
    .parameter "enable"
    .parameter "Id"
    .parameter "bconst"

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v0, cbedit:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 467
    const-string v1, "enable"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const-string v1, "constant"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CellBroadcastSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 471
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 535
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->updateChannel()V

    .line 538
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->updateUi()V

    .line 540
    invoke-static {p0}, Lcom/android/phone/util/CbsUtils;->submitCscb(Landroid/content/Context;)V

    .line 543
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lcom/android/phone/CellBroadcastSettings;->addPreferencesFromResource(I)V

    .line 114
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_0

    .line 116
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    :cond_0
    const/4 v2, 0x0

    const v3, 0x7f0e037a

    invoke-virtual {p0, v3}, Lcom/android/phone/CellBroadcastSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CellBroadcastSettings;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 123
    const-string v2, "LOADED"

    sget-object v3, Lcom/android/phone/PhoneApp;->mSimState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mUiThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 125
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mUiThreadHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    .end local v1           #message:Landroid/os/Message;
    :goto_0
    const-string v2, "lang_list"

    invoke-virtual {p0, v2}, Lcom/android/phone/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/LanguageListPreference;

    .line 133
    .local v0, lp:Lcom/android/phone/LanguageListPreference;
    invoke-virtual {v0, p0}, Lcom/android/phone/LanguageListPreference;->setOnDialogClosedListener(Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;)V

    .line 134
    return-void

    .line 127
    .end local v0           #lp:Lcom/android/phone/LanguageListPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->updateChannel()V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->updateUi()V

    .line 129
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->dismissProgressDialog()V

    goto :goto_0
.end method

.method public onDialogClosedCallback()V
    .locals 0

    .prologue
    .line 574
    invoke-static {p0}, Lcom/android/phone/util/CbsUtils;->submitCscb(Landroid/content/Context;)V

    .line 576
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget v2, p0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    iget v3, p0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->prefAddChannel:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 374
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/util/CbsUtils;->submitCscb(Landroid/content/Context;)V

    .line 377
    :goto_1
    return v0

    .line 371
    :cond_1
    iget v1, p0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    iget v2, p0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    if-ge v1, v2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->prefAddChannel:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 377
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 384
    move-object v10, p2

    .line 385
    .local v10, selectedCarrier:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v10}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, networkStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;

    if-ne p2, v0, :cond_0

    .line 388
    const/4 v6, 0x0

    .line 404
    :goto_0
    return v6

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v7, intent:Landroid/content/Intent;
    const-class v0, Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v7, v6}, Lcom/android/phone/CellBroadcastSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 397
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/CellBroadcastSettings$ChannelList;

    .line 400
    .local v8, mList:Lcom/android/phone/CellBroadcastSettings$ChannelList;
    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->isConstantChannel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getEnable()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getId()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/CellBroadcastSettings;->editChannel(Ljava/lang/String;Ljava/lang/String;IJZ)V

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getEnable()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->getId()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/CellBroadcastSettings;->displayMenu(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public updateChannel()V
    .locals 23

    .prologue
    .line 156
    const-string v18, "recevie_channel_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 159
    const-string v18, "add_channel"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CellBroadcastSettings;->prefAddChannel:Lcom/htc/preference/HtcPreference;

    .line 161
    const-string v18, "gsm.cb.max.channel"

    const-string v19, "10"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 162
    .local v16, s:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    .line 163
    const-string v18, "CellBroadcastSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mMaxChannelnumber: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v18, "lang_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;

    .line 174
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 175
    .local v17, sp:Landroid/content/SharedPreferences;
    invoke-static/range {p0 .. p0}, Lcom/android/phone/util/CbsUtils;->getUILanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, langStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070027

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, Str:[Ljava/lang/String;
    const-string v18, "CellBroadcastSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UI lang num: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v9, :cond_0

    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 183
    .local v12, mLang:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 188
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    aget-object v19, v2, v12

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    const-string v18, "CellBroadcastSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UI lang Str: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v2, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/CellBroadcastSettings$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CellBroadcastSettings$2;-><init>(Lcom/android/phone/CellBroadcastSettings;)V

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CellBroadcastSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v18

    const-string v19, "list_channel_key"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CellBroadcastSettings;->mChannelList:Lcom/htc/preference/HtcPreferenceCategory;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CellBroadcastSettings;->getApplication()Landroid/app/Application;

    move-result-object v18

    sget-object v19, Lcom/android/phone/util/CbsUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "channel DESC"

    invoke-static/range {v18 .. v22}, Lcom/android/phone/util/CbsUtils;->getConstantAndUserCbCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChListCount()I

    move-result v18

    if-nez v18, :cond_1

    .line 278
    :goto_1
    return-void

    .line 185
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v12           #mLang:I
    :cond_0
    const/16 v12, 0xf

    .line 186
    .restart local v12       #mLang:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    const-string v19, "15"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 222
    .local v5, count:I
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    move/from16 v18, v0

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmAllCmasChannelCount()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    .line 233
    const-string v18, "CellBroadcastSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "real max ch num: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v18, "recevie_channel_list"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 238
    .local v13, mReChList:Z
    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 241
    :cond_2
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    :goto_2
    move/from16 v0, v18

    if-lt v5, v0, :cond_4

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->prefAddChannel:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 248
    :goto_3
    if-eqz v5, :cond_6

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    if-ge v8, v5, :cond_6

    .line 251
    new-instance v3, Lcom/htc/preference/HtcPreference;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    .local v3, carrier:Lcom/htc/preference/HtcPreference;
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, mTitle:Ljava/lang/String;
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 255
    .local v10, mId:J
    const-string v18, "enable"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 256
    .local v7, enable:I
    const-string v18, "channel"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, channel:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_5

    .line 260
    const v18, 0x7f0e007f

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 264
    :goto_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->mChannelList:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 267
    new-instance v15, Lcom/android/phone/CellBroadcastSettings$ChannelList;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/CellBroadcastSettings$ChannelList;-><init>(Lcom/android/phone/CellBroadcastSettings;)V

    .line 268
    .local v15, mlist:Lcom/android/phone/CellBroadcastSettings$ChannelList;
    invoke-virtual {v15, v10, v11}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setId(J)V

    .line 269
    invoke-virtual {v15, v14}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setTitle(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v15, v4}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setChannel(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v15, v7}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setEnable(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 241
    .end local v3           #carrier:Lcom/htc/preference/HtcPreference;
    .end local v4           #channel:Ljava/lang/String;
    .end local v7           #enable:I
    .end local v8           #i:I
    .end local v10           #mId:J
    .end local v14           #mTitle:Ljava/lang/String;
    .end local v15           #mlist:Lcom/android/phone/CellBroadcastSettings$ChannelList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    move/from16 v18, v0

    goto/16 :goto_2

    .line 244
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->prefAddChannel:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 262
    .restart local v3       #carrier:Lcom/htc/preference/HtcPreference;
    .restart local v4       #channel:Ljava/lang/String;
    .restart local v7       #enable:I
    .restart local v8       #i:I
    .restart local v10       #mId:J
    .restart local v14       #mTitle:Ljava/lang/String;
    :cond_5
    const v18, 0x7f0e007e

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 277
    .end local v3           #carrier:Lcom/htc/preference/HtcPreference;
    .end local v4           #channel:Ljava/lang/String;
    .end local v7           #enable:I
    .end local v8           #i:I
    .end local v10           #mId:J
    .end local v14           #mTitle:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public updateUi()V
    .locals 17

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->mChannelList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CellBroadcastSettings;->getApplication()Landroid/app/Application;

    move-result-object v12

    sget-object v13, Lcom/android/phone/util/CbsUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "channel DESC"

    invoke-static/range {v12 .. v16}, Lcom/android/phone/util/CbsUtils;->getConstantAndUserCbCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 290
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChListCount()I

    move-result v12

    if-eqz v12, :cond_7

    .line 291
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    .line 293
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 294
    .local v11, sp:Landroid/content/SharedPreferences;
    const-string v12, "recevie_channel_list"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 295
    .local v8, mReChList:Z
    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    if-lt v12, v13, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    add-int/lit8 v12, v12, -0x1

    :goto_0
    if-lt v13, v12, :cond_3

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->prefAddChannel:Lcom/htc/preference/HtcPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 305
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    if-eqz v12, :cond_6

    .line 306
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 307
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CellBroadcastSettings;->mCount:I

    if-ge v5, v12, :cond_6

    .line 308
    new-instance v1, Lcom/htc/preference/HtcPreference;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 309
    .local v1, carrier:Lcom/htc/preference/HtcPreference;
    const-string v12, "title"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, mTitle:Ljava/lang/String;
    const-string v12, "_id"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 311
    .local v6, mId:J
    const-string v12, "enable"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 312
    .local v4, enable:I
    const-string v12, "channel"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, channel:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x3e8

    if-le v12, v13, :cond_4

    .line 316
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 307
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 298
    .end local v1           #carrier:Lcom/htc/preference/HtcPreference;
    .end local v2           #channel:Ljava/lang/String;
    .end local v4           #enable:I
    .end local v5           #i:I
    .end local v6           #mId:J
    .end local v9           #mTitle:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CellBroadcastSettings;->mMaxChannelnumber:I

    goto :goto_0

    .line 301
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->prefAddChannel:Lcom/htc/preference/HtcPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->mReceiveList:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 320
    .restart local v1       #carrier:Lcom/htc/preference/HtcPreference;
    .restart local v2       #channel:Ljava/lang/String;
    .restart local v4       #enable:I
    .restart local v5       #i:I
    .restart local v6       #mId:J
    .restart local v9       #mTitle:Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    const/4 v12, 0x1

    if-ne v4, v12, :cond_5

    .line 322
    const v12, 0x7f0e007f

    invoke-virtual {v1, v12}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 326
    :goto_4
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->mChannelList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 330
    new-instance v10, Lcom/android/phone/CellBroadcastSettings$ChannelList;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/phone/CellBroadcastSettings$ChannelList;-><init>(Lcom/android/phone/CellBroadcastSettings;)V

    .line 331
    .local v10, mlist:Lcom/android/phone/CellBroadcastSettings$ChannelList;
    invoke-virtual {v10, v6, v7}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setId(J)V

    .line 332
    invoke-virtual {v10, v9}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setTitle(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v10, v2}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setChannel(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v10, v4}, Lcom/android/phone/CellBroadcastSettings$ChannelList;->setEnable(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CellBroadcastSettings;->mMap:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 324
    .end local v10           #mlist:Lcom/android/phone/CellBroadcastSettings$ChannelList;
    :cond_5
    const v12, 0x7f0e007e

    invoke-virtual {v1, v12}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_4

    .line 339
    .end local v1           #carrier:Lcom/htc/preference/HtcPreference;
    .end local v2           #channel:Ljava/lang/String;
    .end local v4           #enable:I
    .end local v5           #i:I
    .end local v6           #mId:J
    .end local v9           #mTitle:Ljava/lang/String;
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 341
    .end local v8           #mReChList:Z
    .end local v11           #sp:Landroid/content/SharedPreferences;
    :cond_7
    return-void
.end method
