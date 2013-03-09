.class public Lcom/android/settings/CdmaApnEditor;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "CdmaApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALLOWSAVE:Ljava/lang/String; = "allowsave"

.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xf

.field private static final BEARER_INDEX:I = 0x14

.field private static final CARRIER_ENABLED_INDEX:I = 0x13

.field private static final DATA_BEARER_INDEX:I = 0x16

.field private static final DBG:Z = false

.field private static final DEFAULT_MMSPROTOCOL_VALUEINDEX:I = 0x0

.field private static final EDITABLE:Ljava/lang/String; = "editable"

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x11

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_MMSPROTOCOL_PREF:Ljava/lang/String; = "apn_mms_protocol"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROCTOL_SELECTED:Ljava/lang/String; = "mmsprotocol"

.field private static final MMSPROTOCOL_INDEX:I = 0xe

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PPP_NUMBER_INDEX:I = 0x17

.field private static final PROTOCOL_INDEX:I = 0x12

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x15

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_INDEX:I = 0x10

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Lcom/htc/preference/HtcEditTextPreference;

.field private mApnProtocolEntriesId:I

.field private mApnType:Lcom/htc/preference/HtcEditTextPreference;

.field private mAuthType:Lcom/htc/preference/HtcListPreference;

.field private mBearer:Lcom/htc/preference/HtcListPreference;

.field private mBearerEntriesId:I

.field private mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mInsertUri:Landroid/net/Uri;

.field private mIsMVNO:Z

.field private mMcc:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsProtocol:Lcom/htc/preference/HtcListPreference;

.field private mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsc:Lcom/htc/preference/HtcEditTextPreference;

.field private mMnc:Lcom/htc/preference/HtcEditTextPreference;

.field private mName:Lcom/htc/preference/HtcEditTextPreference;

.field private mNetShareExists:Z

.field private mNewApn:Z

.field private mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

.field private mPassword:Lcom/htc/preference/HtcEditTextPreference;

.field private mPort:Lcom/htc/preference/HtcEditTextPreference;

.field private mProtocol:Lcom/htc/preference/HtcListPreference;

.field private mProxy:Lcom/htc/preference/HtcEditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRestoreRequired:Z

.field private mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

.field private mSave:Z

.field private mServer:Lcom/htc/preference/HtcEditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Lcom/htc/preference/HtcEditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-class v0, Lcom/android/settings/CdmaApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    .line 140
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mmsprotocol"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "insert_by"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/CdmaApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 120
    const v0, 0x7f07002d

    iput v0, p0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 121
    const v0, 0x7f07002b

    iput v0, p0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    .line 131
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 634
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 635
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 647
    :goto_0
    return-object v3

    .line 642
    :cond_0
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private canSaved()Z
    .locals 2

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 706
    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    const/4 v1, 0x0

    .line 710
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 995
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    :cond_0
    const-string p1, ""

    .line 998
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 987
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 988
    :cond_0
    sget-object p1, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    .line 990
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 970
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    .line 972
    return-void
.end method

.method private fillUi()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 466
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_1

    .line 467
    iput-boolean v8, p0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    .line 469
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 470
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 471
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 472
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 473
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 474
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 475
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 476
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 478
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, mmsprotocol:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 480
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 484
    :goto_0
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 485
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 486
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 487
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 488
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 489
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v9, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, numeric:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v13, :cond_0

    .line 500
    invoke-virtual {v5, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, mnc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 505
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 506
    iput-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    .line 507
    iput-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    .line 510
    .end local v2           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    .end local v5           #numeric:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 511
    .local v0, authVal:I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_4

    .line 512
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 520
    :goto_1
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x12

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 521
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x15

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 522
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x13

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v7, :cond_5

    :goto_2
    invoke-virtual {v9, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 523
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x14

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 526
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xd8

    if-ne v7, v9, :cond_1

    .line 527
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x16

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 528
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x17

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 532
    .end local v0           #authVal:I
    .end local v3           #mmsprotocol:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 549
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 550
    .local v1, authValIndex:I
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 552
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f070029

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 553
    .local v6, values:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    aget-object v9, v6, v1

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 559
    .end local v1           #authValIndex:I
    .end local v6           #values:[Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v9, v10}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v9, v10}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    iget-boolean v7, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-nez v7, :cond_2

    .line 581
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 582
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 583
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 584
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 585
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 586
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 587
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 588
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 589
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 590
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 591
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 592
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 593
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 594
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 595
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 596
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 597
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 600
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 601
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 602
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 603
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 606
    :cond_2
    return-void

    .line 482
    .end local v0           #authVal:Ljava/lang/String;
    .restart local v3       #mmsprotocol:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v8}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 517
    .local v0, authVal:I
    :cond_4
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move v7, v8

    .line 522
    goto/16 :goto_2

    .line 555
    .end local v3           #mmsprotocol:Ljava/lang/String;
    .local v0, authVal:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    sget-object v9, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 919
    const/4 v1, 0x0

    .line 921
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 927
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0a54

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 936
    :cond_0
    :goto_0
    return-object v1

    .line 928
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 929
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0a55

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 930
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 931
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0a56

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 932
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 933
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0a57

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1022
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    .line 1023
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.apn.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSupportBearer()Z
    .locals 3

    .prologue
    .line 1067
    const/4 v0, 0x1

    .line 1068
    .local v0, result:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1071
    const/4 v0, 0x0

    .line 1074
    :cond_0
    return v0
.end method

.method private isSupportDualStackIPv4IPv6()Z
    .locals 3

    .prologue
    .line 1051
    const/4 v0, 0x1

    .line 1052
    .local v0, result:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_0

    .line 1058
    const/4 v0, 0x0

    .line 1061
    :cond_0
    return v0
.end method

.method private isSupportIPv6()Z
    .locals 3

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, result:Z
    const-string v1, "ro.telephony.ipv6_capability"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    .line 1043
    const/4 v0, 0x1

    .line 1047
    :cond_0
    return v0
.end method

.method private isSupportLTE()Z
    .locals 3

    .prologue
    .line 1094
    const/4 v0, 0x1

    .line 1095
    .local v0, result:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    .line 1100
    :cond_0
    const/4 v0, 0x0

    .line 1103
    :cond_1
    return v0
.end method

.method private isSupporteHRPD()Z
    .locals 3

    .prologue
    .line 1081
    const/4 v0, 0x1

    .line 1082
    .local v0, result:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    .line 1087
    :cond_0
    const/4 v0, 0x0

    .line 1090
    :cond_1
    return v0
.end method

.method private protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 615
    invoke-virtual {p2, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 616
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 628
    :goto_0
    return-object v3

    .line 623
    :cond_0
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 975
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 976
    :cond_0
    sget-object v2, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    .line 982
    :goto_0
    return-object v2

    .line 978
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 979
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 980
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 982
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 822
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, apn:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, mcc:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 827
    .local v4, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_0

    .line 828
    invoke-virtual {p0, v9}, Lcom/android/settings/CdmaApnEditor;->showDialog(I)V

    .line 915
    .end local v5           #name:Ljava/lang/String;
    :goto_0
    return v9

    .line 832
    .restart local v5       #name:Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_1

    .line 833
    sget-object v10, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v11, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->canSaved()Z

    move-result v11

    if-nez v11, :cond_4

    .line 842
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 846
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 850
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0c61

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v9, "apn"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v9, "proxy"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v9, "port"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v9, "mmsproxy"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v9, "mmsport"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v9, "mmsprotocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v9, "user"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v9, "server"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v9, "password"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v9, "mmsc"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    .line 866
    .local v7, type:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 868
    const-string v9, "type"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_6
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 873
    const-string v9, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    :cond_7
    const-string v9, "protocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v9, "roaming_protocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v9, "mcc"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v9, "mnc"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v9, "numeric"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "mvno_operator"

    invoke-static {v9, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 889
    .local v6, op:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    if-eqz v9, :cond_8

    .line 890
    if-eqz v6, :cond_8

    .line 891
    const-string v9, "operator"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_8
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 896
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 897
    const-string v9, "current"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    :cond_9
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 904
    const-string v9, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    :cond_a
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd8

    if-ne v9, v11, :cond_b

    .line 909
    const-string v9, "databearer"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v9, "pppnumber"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v11, v8, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v9, v10

    .line 915
    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 199
    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const v2, 0x7f050003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0a36

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    .line 204
    const-string v2, "apn_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    .line 205
    const-string v2, "apn_apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    .line 206
    const-string v2, "apn_http_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    .line 207
    const-string v2, "apn_http_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 210
    const-string v2, "apn_user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    .line 211
    const-string v2, "apn_server"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    .line 212
    const-string v2, "apn_password"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    .line 213
    const-string v2, "apn_mms_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    .line 214
    const-string v2, "apn_mms_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 217
    const-string v2, "apn_mms_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 219
    const-string v2, "apn_mmsc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x941

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 221
    const-string v2, "apn_mcc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 224
    const-string v2, "apn_mnc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 227
    const-string v2, "apn_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    .line 229
    const-string v2, "auth_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 237
    const-string v2, "apn_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const v2, 0x7f07007e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 249
    :goto_0
    const-string v2, "apn_roaming_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    .line 253
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 254
    .local v18, tm:Landroid/telephony/TelephonyManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    const v2, 0x7f07007e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 260
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 265
    :goto_1
    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 267
    const-string v2, "bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->isSupportBearer()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->isSupporteHRPD()Z

    move-result v14

    .line 270
    .local v14, isSupporteHRPD:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->isSupportLTE()Z

    move-result v13

    .line 271
    .local v13, isSupportLTE:Z
    const/4 v2, 0x1

    if-ne v14, v2, :cond_9

    const/4 v2, 0x1

    if-ne v13, v2, :cond_9

    .line 272
    const v2, 0x7f07002d

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 292
    .end local v13           #isSupportLTE:Z
    .end local v14           #isSupporteHRPD:Z
    :goto_2
    const-string v2, "data_bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    .line 293
    const-string v2, "ppp_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    .line 295
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_2

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    .line 298
    .local v17, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 302
    .end local v17           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 305
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, action:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mvno_operator"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 310
    .local v16, op:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    .line 315
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND (type = \'netshare\' OR type = \'DUN\') "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, where:Ljava/lang/String;
    new-instance v1, Landroid/content/CursorLoader;

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "name"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string v7, "name ASC"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v1, operatorLoader:Landroid/content/CursorLoader;
    invoke-virtual {v1}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v11

    .line 330
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 331
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    .line 332
    sget-object v2, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netshare exists mNetShareExists="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_4
    if-nez p1, :cond_e

    .line 337
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    .line 338
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    .line 339
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 340
    .local v10, bundle:Landroid/os/Bundle;
    if-eqz v10, :cond_5

    .line 341
    const-string v2, "editable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    .line 351
    .end local v10           #bundle:Landroid/os/Bundle;
    :cond_5
    :goto_4
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 352
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    .line 381
    :goto_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_6

    .line 382
    const/16 v2, 0x18

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "proxy"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "port"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "server"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "password"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "mmsc"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "mcc"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "mnc"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "numeric"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "mmsproxy"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "mmsport"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "mmsprotocol"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "authtype"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "type"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "insert_by"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "protocol"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "carrier_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "bearer"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "roaming_protocol"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "databearer"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "pppnumber"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/settings/CdmaApnEditor;->sProjection:[Ljava/lang/String;

    .line 412
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v15

    .line 413
    .local v15, manager:Landroid/app/LoaderManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v15, v2, v3, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 414
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v9

    check-cast v9, Landroid/content/CursorLoader;

    .line 416
    .local v9, apnLoader:Landroid/content/CursorLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 417
    invoke-virtual {v9}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->fillUi()V

    .line 420
    .end local v9           #apnLoader:Landroid/content/CursorLoader;
    .end local v15           #manager:Landroid/app/LoaderManager;
    :goto_6
    return-void

    .line 246
    .end local v1           #operatorLoader:Landroid/content/CursorLoader;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #action:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #op:Ljava/lang/String;
    .end local v18           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 262
    .restart local v18       #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 274
    .restart local v13       #isSupportLTE:Z
    .restart local v14       #isSupporteHRPD:Z
    :cond_9
    const/4 v2, 0x1

    if-ne v14, v2, :cond_a

    if-nez v13, :cond_a

    .line 275
    const v2, 0x7f070080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 279
    :cond_a
    if-nez v14, :cond_b

    const/4 v2, 0x1

    if-ne v13, v2, :cond_b

    .line 280
    const v2, 0x7f070082

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 285
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 288
    .end local v13           #isSupportLTE:Z
    .end local v14           #isSupporteHRPD:Z
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 331
    .restart local v1       #operatorLoader:Landroid/content/CursorLoader;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v8       #action:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v16       #op:Ljava/lang/String;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 344
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    .line 345
    const-string v2, "editable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const-string v3, "mmsprotocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 348
    const-string v2, "allowsave"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    goto/16 :goto_4

    .line 353
    :cond_f
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 354
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    if-nez v2, :cond_10

    const-string v2, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 355
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    .line 356
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 361
    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_12

    .line 366
    sget-object v2, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto/16 :goto_6

    .line 358
    :cond_11
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_7

    .line 374
    :cond_12
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/CdmaApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_5

    .line 377
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto/16 :goto_6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 942
    if-nez p1, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a53

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 953
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 454
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->sProjection:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 739
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-eqz v0, :cond_1

    .line 740
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 741
    const v0, 0x7f0c0a4f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020069

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 744
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0c0a51

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 746
    const/4 v0, 0x3

    const v1, 0x7f0c0a52

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 749
    :cond_1
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 450
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 779
    packed-switch p1, :pswitch_data_0

    .line 798
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 781
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "netshare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->canSaved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 784
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    .line 787
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    if-eqz v0, :cond_0

    .line 788
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-eqz v0, :cond_0

    .line 789
    invoke-direct {p0, v2}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const v0, 0x7f0c02e3

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    .line 792
    const/4 v0, 0x1

    goto :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CdmaApnEditor;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 754
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 774
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 756
    :pswitch_0
    const-string v1, "ANALYTIC_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->deleteApn()V

    goto :goto_0

    .line 760
    :pswitch_1
    const-string v1, "ANALYTIC_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0, v4}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    const v1, 0x7f0c02e3

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto :goto_0

    .line 767
    :pswitch_2
    const-string v1, "ANALYTIC_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Canel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto/16 :goto_0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 443
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 444
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 654
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 657
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 658
    .local v2, index:I
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v2}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 660
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f070029

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 661
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 662
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 663
    goto :goto_1

    .line 666
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_mms_protocol"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 668
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 669
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v7, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 670
    :catch_1
    move-exception v1

    .line 671
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "could not get/set MMS protocol setting"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 676
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, p2

    .line 677
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_3

    move v6, v7

    .line 679
    goto :goto_1

    .line 681
    :cond_3
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 682
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 683
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_4
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, p2

    .line 684
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 685
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_5

    move v6, v7

    .line 686
    goto :goto_1

    .line 688
    :cond_5
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 689
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 690
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_6
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 691
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/CdmaApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_7

    move v6, v7

    .line 693
    goto/16 :goto_1

    .line 695
    :cond_7
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 696
    iget-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 958
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 960
    if-nez p1, :cond_0

    .line 961
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 964
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 967
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 715
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    if-eqz v1, :cond_0

    const-string v1, "netshare"

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dun"

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->canSaved()Z

    move-result v1

    if-nez v1, :cond_3

    .line 719
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 720
    .local v0, save:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 721
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 723
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    .line 731
    :goto_0
    return v3

    .line 725
    .end local v0           #save:Landroid/view/MenuItem;
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 726
    .restart local v0       #save:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 727
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 729
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 427
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 428
    sget-object v1, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "restore mUri onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    .line 432
    .local v0, loader:Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 433
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 435
    iput-boolean v4, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    .line 437
    .end local v0           #loader:Landroid/content/CursorLoader;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 803
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 804
    invoke-direct {p0, v2}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    :goto_0
    const-string v0, "mmsprotocol"

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v0, "editable"

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 812
    const-string v0, "allowsave"

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    return-void

    .line 807
    :cond_0
    sget-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "needs to restore muri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iput-boolean v2, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1003
    invoke-virtual {p0, p2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1004
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_1

    .line 1006
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/CdmaApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1011
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->invalidateOptionsMenu()V

    .line 1016
    :cond_0
    return-void

    .line 1008
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
