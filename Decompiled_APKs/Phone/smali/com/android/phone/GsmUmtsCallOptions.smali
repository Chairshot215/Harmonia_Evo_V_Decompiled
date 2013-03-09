.class public Lcom/android/phone/GsmUmtsCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final BUTTON_CB_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CF_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_CLIR_KEY:Ljava/lang/String; = "button_clir_key"

.field private static final BUTTON_CW_KEY:Ljava/lang/String; = "button_cw_key"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_UMTS_TTY_KEY:Ljava/lang/String; = "button_tty_key"

.field public static final CB_SETTING:Ljava/lang/String; = "pref_key_cb_enable"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "channel DESC"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsCallOptions"

.field private static final PROJECTION:[Ljava/lang/String;

.field static final preferredTtyMode:I


# instance fields
.field private final DBG:Z

.field private mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCBarring:Lcom/htc/preference/HtcPreferenceScreen;

.field private mCF:Lcom/htc/preference/HtcPreferenceScreen;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mFDNButton:Lcom/htc/preference/HtcPreference;

.field private mInitIndex:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTTY:Lcom/android/phone/TTYSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "content://cbchannels/cbch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/GsmUmtsCallOptions;->CONTENT_URI:Landroid/net/Uri;

    .line 97
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

    sput-object v0, Lcom/android/phone/GsmUmtsCallOptions;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->DBG:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 89
    iput v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mInitIndex:I

    .line 455
    new-instance v0, Lcom/android/phone/GsmUmtsCallOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsCallOptions$3;-><init>(Lcom/android/phone/GsmUmtsCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsCallOptions;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsCallOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallOptions;->clearCellbroadcastDatabase()V

    return-void
.end method

.method private clearCellbroadcastDatabase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    const-string v1, "content://cbchannels/cbch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 381
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method private isHomeCountryEnabled()Z
    .locals 2

    .prologue
    .line 509
    const-wide v0, 0x4000cccccccccccdL

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v1, channelslList:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 387
    .local v0, channels:Ljava/lang/String;
    const/4 v5, 0x0

    .line 390
    .local v5, mCH:Ljava/lang/String;
    sget-object v8, Lcom/android/phone/GsmUmtsCallOptions;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/phone/GsmUmtsCallOptions;->PROJECTION:[Ljava/lang/String;

    const-string v10, "enable=1"

    const-string v11, "channel DESC"

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/phone/GsmUmtsCallOptions;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 392
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_6

    .line 393
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 394
    .local v2, count:I
    if-eqz v2, :cond_5

    .line 395
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 396
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 397
    const-string v8, "channel"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    add-int/lit8 v8, v2, -0x1

    if-eq v4, v8, :cond_0

    .line 402
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 407
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 409
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v8, "recevie_channel_list"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 411
    .local v6, mReChList:Z
    if-eqz v6, :cond_2

    .line 412
    const-string v8, ",0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 429
    .end local v4           #i:I
    .end local v6           #mReChList:Z
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_4

    .line 430
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 444
    .end local v2           #count:I
    :cond_4
    :goto_2
    return-object v5

    .line 416
    .restart local v2       #count:I
    :cond_5
    if-nez v2, :cond_3

    .line 418
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 420
    .restart local v7       #sp:Landroid/content/SharedPreferences;
    const-string v8, "recevie_channel_list"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 422
    .restart local v6       #mReChList:Z
    if-eqz v6, :cond_3

    .line 423
    const-string v8, "0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 435
    .end local v2           #count:I
    .end local v6           #mReChList:Z
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_6
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 437
    .restart local v7       #sp:Landroid/content/SharedPreferences;
    const-string v8, "recevie_channel_list"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 439
    .restart local v6       #mReChList:Z
    if-eqz v6, :cond_4

    .line 440
    const-string v8, "0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 293
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 294
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->finish()V

    .line 297
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 107
    const v4, 0x7f05000e

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->addPreferencesFromResource(I)V

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 116
    .local v2, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v4, "button_fdn_key"

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mFDNButton:Lcom/htc/preference/HtcPreference;

    .line 117
    const-string v4, "button_tty_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 118
    const-string v4, "button_cf_expand_key"

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCF:Lcom/htc/preference/HtcPreferenceScreen;

    .line 119
    const-string v4, "button_cb_expand_key"

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCBarring:Lcom/htc/preference/HtcPreferenceScreen;

    .line 120
    const-string v4, "button_clir_key"

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CLIRListPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 121
    const-string v4, "button_cw_key"

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 122
    const-string v4, "pref_key_cb_enable"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CustomizeCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 123
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCF:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCF:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 135
    :cond_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCBarring:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 138
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 139
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_4

    .line 140
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 142
    :cond_4
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCBarring:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v4, :cond_5

    .line 143
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCBarring:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 153
    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 154
    .local v1, enableFDN:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 155
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 156
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v4, :cond_6

    .line 157
    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-nez v1, :cond_d

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 158
    :cond_6
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v4, :cond_7

    .line 159
    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-nez v1, :cond_e

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 161
    :cond_7
    if-nez v1, :cond_8

    .line 162
    if-nez p1, :cond_f

    .line 165
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 182
    :cond_8
    :goto_4
    new-instance v4, Lcom/android/phone/TTYSetting;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v4, v7}, Lcom/android/phone/TTYSetting;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTTY:Lcom/android/phone/TTYSetting;

    .line 185
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 186
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 189
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    .line 190
    const-string v4, "pref_key_cb_setting"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    .line 191
    .local v3, settings:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 194
    .end local v3           #settings:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_9
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd1

    if-eq v4, v5, :cond_a

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x31

    if-eq v4, v5, :cond_a

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x88

    if-eq v4, v5, :cond_a

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v4, v5, :cond_b

    .line 205
    :cond_a
    const-string v4, "pref_key_cb_setting"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 206
    const-string v4, "pref_key_cb_enable"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 209
    :cond_b
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_0

    .line 147
    .end local v1           #enableFDN:Z
    :cond_c
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mFDNButton:Lcom/htc/preference/HtcPreference;

    if-eqz v4, :cond_5

    .line 148
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mFDNButton:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .restart local v1       #enableFDN:Z
    :cond_d
    move v4, v6

    .line 157
    goto/16 :goto_2

    :cond_e
    move v4, v6

    .line 159
    goto :goto_3

    .line 169
    :cond_f
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mInitIndex:I

    .line 170
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 171
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 172
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 173
    .local v0, clirArray:[I
    if-eqz v0, :cond_10

    .line 176
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4, v0}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto/16 :goto_4

    .line 178
    :cond_10
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_4
.end method

.method public onFinished(Lcom/htc/preference/HtcPreference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 278
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 280
    iget v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mInitIndex:I

    .line 282
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    .line 283
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    instance-of v1, v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 284
    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 288
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 289
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 497
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 502
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 506
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 318
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v6, :cond_3

    .line 319
    new-instance v0, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 320
    .local v0, cb:Lcom/android/internal/telephony/gsm/CBMessage;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 322
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    const-string v6, "lang_list"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, langStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getChannel()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, mCh:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 329
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v1}, Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .end local v0           #cb:Lcom/android/internal/telephony/gsm/CBMessage;
    .end local v1           #langStr:Ljava/lang/String;
    .end local v2           #mCh:Ljava/lang/String;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v4

    .line 338
    .restart local v0       #cb:Lcom/android/internal/telephony/gsm/CBMessage;
    .restart local v1       #langStr:Ljava/lang/String;
    .restart local v2       #mCh:Ljava/lang/String;
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    :cond_0
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd1

    if-ne v6, v7, :cond_1

    .line 343
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v8}, Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v8}, Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v1           #langStr:Ljava/lang/String;
    .end local v2           #mCh:Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e01c9

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0045

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e02bb

    new-instance v7, Lcom/android/phone/GsmUmtsCallOptions$2;

    invoke-direct {v7, p0, v0}, Lcom/android/phone/GsmUmtsCallOptions$2;-><init>(Lcom/android/phone/GsmUmtsCallOptions;Lcom/android/internal/telephony/gsm/CBMessage;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0256

    new-instance v7, Lcom/android/phone/GsmUmtsCallOptions$1;

    invoke-direct {v7, p0, v3}, Lcom/android/phone/GsmUmtsCallOptions$1;-><init>(Lcom/android/phone/GsmUmtsCallOptions;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .end local v0           #cb:Lcom/android/internal/telephony/gsm/CBMessage;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_3
    move v4, v5

    .line 374
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 304
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 305
    .local v0, ttymode:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTTY:Lcom/android/phone/TTYSetting;

    if-eqz v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTTY:Lcom/android/phone/TTYSetting;

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/phone/TTYSetting;->toggle(Z)V

    .line 312
    .end local v0           #ttymode:I
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 304
    goto :goto_0

    :cond_3
    move v1, v2

    .line 312
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 222
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "preferred_tty_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 226
    .local v2, ttyMode:I
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallOptions;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 231
    .end local v2           #ttyMode:I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 233
    .local v1, enableFDN:Z
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v3, :cond_1

    .line 234
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-nez v1, :cond_6

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-nez v1, :cond_7

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 237
    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3}, Lcom/android/phone/CLIRListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 240
    .local v0, chars:Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    .line 242
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, p0, v5}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 243
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v3, p0, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 256
    .end local v0           #chars:Ljava/lang/CharSequence;
    .end local v1           #enableFDN:Z
    :cond_3
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_4

    .line 257
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x101

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 261
    :cond_4
    return-void

    .restart local v2       #ttyMode:I
    :cond_5
    move v3, v5

    .line 226
    goto :goto_0

    .end local v2           #ttyMode:I
    .restart local v1       #enableFDN:Z
    :cond_6
    move v3, v5

    .line 234
    goto :goto_1

    :cond_7
    move v4, v5

    .line 236
    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 274
    :cond_0
    return-void
.end method

.method public updateCellBroadcastSetting()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 468
    const-string v4, "pref_key_cb_setting"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 470
    .local v1, settings:Lcom/htc/preference/HtcPreferenceScreen;
    if-nez v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 475
    :cond_2
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 483
    .local v0, airplaneMode:Z
    :goto_1
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    .line 485
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 489
    :goto_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_7

    :goto_3
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #airplaneMode:Z
    :cond_4
    move v0, v3

    .line 479
    goto :goto_1

    .line 487
    .restart local v0       #airplaneMode:Z
    :cond_5
    if-nez v0, :cond_6

    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_4

    :cond_7
    move v2, v3

    .line 489
    goto :goto_3
.end method
