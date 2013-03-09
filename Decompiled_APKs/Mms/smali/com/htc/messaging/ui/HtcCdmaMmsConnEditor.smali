.class public Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcCdmaMmsConnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final DEFAULT_HTC_CDMA_MMS_CONNECTIONS_NAME:Ljava/lang/String; = "default_htc_cdma_mms_connections_name"

.field public static final DEFAULT_HTC_CDMA_MMS_CONNECTIONS_TYPE:Ljava/lang/String; = "default_htc_cdma_mms_connection_type"

.field public static final DEFAULT_HTC_CDMA_MMS_MMSC:Ljava/lang/String; = "default_htc_cdma_mms_mmsc"

.field public static final DEFAULT_HTC_CDMA_MMS_PORT:Ljava/lang/String; = "default_htc_cdma_mms_port"

.field public static final DEFAULT_HTC_CDMA_MMS_PROXY:Ljava/lang/String; = "default_htc_cdma_mms_proxy"

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcCdmaMmsConnEditor"

.field private static final queryAllFields:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mEditable:Z

.field private mEmptyValue:Ljava/lang/String;

.field private mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsProtocol:Lcom/htc/preference/HtcListPreference;

.field private mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsc:Lcom/htc/preference/HtcEditTextPreference;

.field private mName:Lcom/htc/preference/HtcEditTextPreference;

.field private mPre_mmsc:Ljava/lang/String;

.field private mPre_name:Ljava/lang/String;

.field private queryAllFieldsIndex:[I

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 273
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mmsprotocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFields:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method private checkUserSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "setupValue"

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, value:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mEmptyValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    move-object v0, p1

    .line 384
    :cond_0
    return-object v0
.end method

.method private fillUi()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 305
    iget-boolean v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mEditable:Z

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 307
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 308
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 310
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 350
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string v2, "Jerry"

    const-string v3, "fillUi >"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    if-nez v2, :cond_2

    .line 319
    sget-object v2, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFields:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    .line 321
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFields:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFields:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v5

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v6

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v7

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v8

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, mmsprotocol:Ljava/lang/String;
    const-string v2, "HtcCdmaMmsConnEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS protocol:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v1, :cond_5

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 333
    const-string v2, "1.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const-string v3, "1.2"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 342
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCdmaMmsConnEditorEditable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->savedefaultvalue()V

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v2, v2, v5

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mPre_name:Ljava/lang/String;

    .line 344
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v2, v2, v6

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mPre_mmsc:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v5

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursorForDisplay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v6

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursorForDisplay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v7

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursorForDisplay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v3, v3, v8

    invoke-direct {p0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursorForDisplay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 337
    :cond_4
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 340
    :cond_5
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_2
.end method

.method private getInsertDatabasesContentValue()Landroid/content/ContentValues;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 240
    invoke-static {}, Lcom/android/mms/MmsApp;->isCDMA_NV_based()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "type"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-object v0

    .line 243
    :cond_0
    const-string v1, "type"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "current"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 247
    :cond_1
    const-string v1, "type"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "current"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private getStringFromCursor(I)Ljava/lang/String;
    .locals 2
    .parameter "columIndex"

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 362
    :cond_0
    return-object v0
.end method

.method private getStringFromCursorForDisplay(I)Ljava/lang/String;
    .locals 1
    .parameter "columIndex"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mEmptyValue:Ljava/lang/String;

    .line 371
    :cond_0
    return-object v0
.end method

.method private queryDatabase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 284
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCdmaAPN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    sget-object v0, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 289
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    sget-object v1, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFields:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryDatabaseWhereString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    .line 292
    const-string v1, "Jerry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCdmaMmsConnEditor  cursor >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 296
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 297
    iput-object v4, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    .line 300
    :cond_0
    return-void

    .line 287
    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static queryDatabaseWhereString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 259
    const-string v0, ""

    .line 261
    .local v0, sqlString:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isCDMA_NV_based()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type like \'%mms%\' AND (operator=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' OR operator is null)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .end local v0           #sqlString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 265
    .restart local v0       #sqlString:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type like \'%mms%\' AND (operator=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' OR operator is null) AND current=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    .end local v0           #sqlString:Ljava/lang/String;
    :cond_1
    const-string v0, "type = \'mms\' AND current = 1"

    goto :goto_0
.end method

.method private savedefaultvalue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    const-string v0, "com.android.mms.customizationBySIM"

    invoke-virtual {p0, v0, v3}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    .line 404
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    const-string v1, "default_htc_cdma_mms_connection_type"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_htc_cdma_mms_connections_name"

    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_htc_cdma_mms_mmsc"

    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_htc_cdma_mms_proxy"

    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_htc_cdma_mms_port"

    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_htc_cdma_mms_connection_type"

    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryAllFieldsIndex:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getStringFromCursor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    :cond_0
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 390
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 397
    return-void
.end method

.method private validateAndSave(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    .line 162
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->checkUserSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->checkUserSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, mmsc:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->checkUserSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, proxy:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->checkUserSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, port:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->checkUserSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, protocol:Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, errorMsg:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_2

    .line 170
    :cond_0
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mPre_name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0901a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 178
    invoke-direct {p0, v0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->showErrorMessage(Ljava/lang/String;)V

    .line 179
    const/4 v8, 0x0

    .line 206
    :goto_1
    return v8

    .line 172
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_1

    .line 173
    :cond_3
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mPre_mmsc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0901a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_4
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v7, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v9, "mmsc"

    invoke-virtual {v7, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v9, "mmsproxy"

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v9, "mmsport"

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v9, "mmsprotocol"

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCdmaAPN()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 193
    sget-object v6, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 196
    .local v6, uri:Landroid/net/Uri;
    :goto_2
    iget-object v9, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_7

    .line 197
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryDatabaseWhereString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    :goto_3
    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mPre_name:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mPre_mmsc:Ljava/lang/String;

    goto :goto_1

    .line 195
    .end local v6           #uri:Landroid/net/Uri;
    :cond_6
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v6       #uri:Landroid/net/Uri;
    goto :goto_2

    .line 199
    :cond_7
    invoke-direct {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getInsertDatabasesContentValue()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 201
    invoke-direct {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryDatabase()V

    .line 202
    invoke-direct {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->fillUi()V

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mEmptyValue:Ljava/lang/String;

    .line 69
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->addPreferencesFromResource(I)V

    .line 71
    const-string v2, "htc_cdma_mms_connections_name"

    invoke-virtual {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    .line 72
    const-string v2, "htc_cdma_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    .line 73
    const-string v2, "htc_cdma_mms_port"

    invoke-virtual {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    .line 74
    const-string v2, "htc_cdma_mms_mmsc"

    invoke-virtual {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    .line 75
    const-string v2, "htc_cdma_mms_connection_type"

    invoke-virtual {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    .line 77
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iput-boolean v4, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mEditable:Z

    .line 97
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryDatabase()V

    .line 98
    invoke-direct {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->fillUi()V

    .line 99
    :goto_1
    return-void

    .line 83
    :cond_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCdmaMmsConnEditorEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iput-boolean v4, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mEditable:Z

    goto :goto_0

    .line 89
    :cond_2
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->finish()V

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->finish()V

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 123
    :pswitch_0
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[HtcCdmaMmsConnEditor]Delete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[HtcCdmaMmsConnEditor]Save"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->finish()V

    goto :goto_0

    .line 132
    :pswitch_2
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[HtcCdmaMmsConnEditor]Cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->finish()V

    goto :goto_0

    .line 121
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
    .line 109
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 110
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 105
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 210
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->validateAndSave(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {p0, p2}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 212
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 213
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    if-ne v0, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local v0       #pref:Lcom/htc/preference/HtcPreference;
    .restart local v1       #summary:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->mEmptyValue:Ljava/lang/String;

    .line 221
    :cond_3
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
