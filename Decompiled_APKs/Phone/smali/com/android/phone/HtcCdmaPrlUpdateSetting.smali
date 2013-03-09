.class public Lcom/android/phone/HtcCdmaPrlUpdateSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcCdmaPrlUpdateSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3eb

.field private static final WM_UPDATE_COMPLETE:I = 0x3ea

.field private static final WM_UPDATE_PHONE_INFO:I = 0x3ec

.field private static final WM_UPDATE_START:I = 0x3e9


# instance fields
.field private final DBG:Z

.field private ERROR_IN_PROCESSING:I

.field private ERROR_NONE:I

.field private final ERROR_TYPE_CONNECTION_FAILED:I

.field private final ERROR_TYPE_UPDATE_COMPLETE:I

.field private final ERROR_TYPE_UPDATE_FAILED:I

.field private final INTENT_TO_REFRESH_PHONE_INFO:Ljava/lang/String;

.field private final ITEM_PRL_VER_KEY:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final PRL_REMOTE_PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/app/HtcProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsUpdating:Z

.field private mNeedTurnOnRadio:Z

.field private mPRLupdater:Lcom/android/phone/HtcCdmaPRLUpdater;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPrlVersion:Lcom/htc/preference/HtcPreferenceScreen;

.field private mUAStringModel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 52
    iput-boolean v3, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->DBG:Z

    .line 53
    const-string v0, "KDDI_HtcCdmaPrlUpdateSetting"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->LOG_TAG:Ljava/lang/String;

    .line 55
    const-string v0, "item_prl_ver_key"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ITEM_PRL_VER_KEY:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPrlVersion:Lcom/htc/preference/HtcPreferenceScreen;

    .line 59
    iput-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mContext:Landroid/content/Context;

    .line 61
    iput-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    iput-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 65
    const-string v0, "APP_REQUEST_REFRESH_PHONE_INFO"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->INTENT_TO_REFRESH_PHONE_INFO:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting$1;-><init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentFilter:Landroid/content/IntentFilter;

    .line 127
    iput-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPRLupdater:Lcom/android/phone/HtcCdmaPRLUpdater;

    .line 149
    iput-boolean v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIsUpdating:Z

    .line 168
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_TYPE_CONNECTION_FAILED:I

    .line 169
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_TYPE_UPDATE_FAILED:I

    .line 170
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_TYPE_UPDATE_COMPLETE:I

    .line 220
    new-instance v0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;-><init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mHandler:Landroid/os/Handler;

    .line 296
    iput-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 300
    iput-boolean v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mNeedTurnOnRadio:Z

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPingHostnameResult:Ljava/lang/String;

    .line 395
    iput v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_NONE:I

    .line 396
    iput v3, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_IN_PROCESSING:I

    .line 399
    const-string v0, "http://au-pro.kddi.com/IS-683C/latest/IS-683C.prl"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->PRL_REMOTE_PATH:Ljava/lang/String;

    .line 529
    const-string v0, "ISW12HT"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mUAStringModel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_NONE:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaPrlUpdateSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->sendResult(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/HtcCdmaPrlUpdateSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->showWarningMessage(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_IN_PROCESSING:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->setNeedTurnOnRadio(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->startCheckin(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->updatePrlVersion()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mNeedTurnOnRadio:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->setIsUpdating(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 10

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 563
    .local v5, locale:Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 565
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 566
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 567
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :goto_0
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 575
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 578
    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mUAStringModel:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mUAStringModel:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 588
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    iget-object v8, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mUAStringModel:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    :cond_1
    :goto_2
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 603
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 604
    const-string v8, " Build/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    :cond_2
    iget-object v8, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e01b6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, base:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    monitor-exit p0

    return-object v8

    .line 570
    .end local v0           #base:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v8, "1.0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 562
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v7           #version:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 583
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v4       #language:Ljava/lang/String;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v7       #version:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v8, "en"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 594
    :cond_5
    const-string v8, "REL"

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 595
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 596
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 597
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15
    .parameter "context"
    .parameter "slection"

    .prologue
    .line 533
    const-string v2, "content://customization_settings/SettingTable/force_change_Browser"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 534
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 535
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 539
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 540
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 541
    .local v11, idValue:I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 545
    .local v8, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 546
    .local v13, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v8

    invoke-virtual {v13, v8, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 547
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 548
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v6, bundle:Landroid/os/Bundle;
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 553
    const-string v2, "ua_string"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 554
    .local v12, nameBundle:Landroid/os/Bundle;
    const-string v2, "value"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 555
    .local v14, value:Ljava/lang/String;
    const-string v2, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query result("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v2, "ua_string_id"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 557
    .local v10, idBundle:Landroid/os/Bundle;
    const-string v2, "value"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 558
    .local v9, id:Ljava/lang/String;
    const-string v2, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query result("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pingHostname(Ljava/lang/String;)Z
    .locals 7
    .parameter "homename"

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, ret:Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 330
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 331
    .local v3, status:I
    if-nez v3, :cond_0

    .line 332
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPingHostnameResult:Ljava/lang/String;

    .line 333
    const/4 v2, 0x1

    .line 345
    .end local v1           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :goto_0
    return v2

    .line 335
    .restart local v1       #p:Ljava/lang/Process;
    .restart local v3       #status:I
    :cond_0
    const-string v4, "Fail: Host unreachable"

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 337
    .end local v1           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v4, "Fail: Unknown Host"

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 339
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 341
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendResult(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 352
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 353
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 354
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 356
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method private setIsUpdating(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIsUpdating:Z

    .line 152
    return-void
.end method

.method private setNeedTurnOnRadio(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mNeedTurnOnRadio:Z

    .line 303
    return-void
.end method

.method private showWarningMessage(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 173
    const v0, 0x7f0e01b1

    .line 174
    .local v0, msgId:I
    const v1, 0x7f0e01b3

    .line 175
    .local v1, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0436

    new-instance v4, Lcom/android/phone/HtcCdmaPrlUpdateSetting$3;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting$3;-><init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 202
    return-void

    .line 177
    :pswitch_0
    const v0, 0x7f0e01b0

    .line 178
    const v1, 0x7f0e01b2

    .line 179
    goto :goto_0

    .line 181
    :pswitch_1
    const v0, 0x7f0e01b1

    .line 182
    const v1, 0x7f0e01b3

    .line 183
    goto :goto_0

    .line 187
    :pswitch_2
    const v0, 0x7f0e01b5

    .line 188
    const v1, 0x7f0e01b4

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sleep(J)V
    .locals 1
    .parameter "milli"

    .prologue
    .line 289
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private startCheckin(Z)V
    .locals 2
    .parameter "showProgress"

    .prologue
    .line 155
    const-string v0, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v1, "manual checkin start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIsUpdating:Z

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->isOnline()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    new-instance v0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;-><init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->showWarningMessage(I)V

    goto :goto_0
.end method

.method private updatePrlVersion()V
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPrlVersion:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method


# virtual methods
.method public DownloadFromUrl2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "fileURL"
    .parameter "fileName"

    .prologue
    .line 462
    const/4 v9, 0x1

    .line 464
    .local v9, success:Z
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OoO DownloadFromUrl2("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 469
    .local v11, url:Ljava/net/URL;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 473
    .local v7, startTime:J
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v13, "OoO download begining"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OoO download url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OoO downloaded file name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v13, "OoO Open a connection to that URL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 480
    .local v10, ucon:Ljava/net/HttpURLConnection;
    const-string v12, "GET"

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 481
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 486
    const-string v12, "User-Agent"

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 494
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 495
    .local v6, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 497
    .local v2, bis:Ljava/io/BufferedInputStream;
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v13, "OoO Read bytes to the Buffer until there is nothing more to read(-1)."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v12, 0x32

    invoke-direct {v1, v12}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 503
    .local v1, baf:Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 504
    .local v3, current:I
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v12, -0x1

    if-eq v3, v12, :cond_0

    .line 505
    int-to-byte v12, v3

    invoke-virtual {v1, v12}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v1           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #current:I
    .end local v5           #file:Ljava/io/File;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #startTime:J
    .end local v10           #ucon:Ljava/net/HttpURLConnection;
    .end local v11           #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 520
    .local v4, e:Ljava/io/IOException;
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OoO Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v9, 0x0

    .line 524
    .end local v4           #e:Ljava/io/IOException;
    :goto_1
    return v9

    .line 508
    .restart local v1       #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #current:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #startTime:J
    .restart local v10       #ucon:Ljava/net/HttpURLConnection;
    .restart local v11       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPRLupdater:Lcom/android/phone/HtcCdmaPRLUpdater;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/phone/HtcCdmaPRLUpdater;->WritePRLData([B)Z

    .line 514
    const-string v12, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OoO download ready in"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v7

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sec"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public isOnline()Z
    .locals 3

    .prologue
    .line 312
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 313
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 315
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const/4 v2, 0x1

    .line 318
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 86
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v4, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 93
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x3eb

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 95
    const v4, 0x7f050019

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->addPreferencesFromResource(I)V

    .line 97
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .local v2, taskBarLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v5, 0x209

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 99
    .local v3, taskBarView:Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    const v4, 0x2020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    .local v0, butCheckNoew:Landroid/widget/Button;
    const v4, 0x7f0e01ae

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 103
    new-instance v4, Lcom/android/phone/HtcCdmaPrlUpdateSetting$2;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting$2;-><init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v4, 0x102000a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 110
    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const-string v4, "item_prl_ver_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPrlVersion:Lcom/htc/preference/HtcPreferenceScreen;

    .line 115
    new-instance v4, Lcom/android/phone/HtcCdmaPRLUpdater;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaPRLUpdater;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPRLupdater:Lcom/android/phone/HtcCdmaPRLUpdater;

    .line 117
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v4, :cond_0

    .line 118
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentFilter:Landroid/content/IntentFilter;

    .line 119
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 308
    const-string v0, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 143
    const-string v0, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 146
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 132
    const-string v0, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 135
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->updatePrlVersion()V

    .line 138
    return-void
.end method
