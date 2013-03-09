.class public Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
.super Lcom/htc/cscore/plugin/CSSyncAdapter;
.source "HTCIMECSSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    }
.end annotation


# static fields
.field public static final CONTENT_UDB_TIMESTAMP:Ljava/lang/String; = "get_chinese_udb_timestamp"

.field public static final CONTENT_UDB_WORDS:Ljava/lang/String; = "get_chinese_udb_string"

.field public static final CONTENT_UPDATE_UDB_WORDS:Ljava/lang/String; = "write_chinese_udb_string"

.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x1

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field public static final HTCIMEProvider_CONTENT_URI:Landroid/net/Uri; = null

.field private static final IME_ALPHABET_UDB:Ljava/lang/String; = "IME_ALPHABET_UDB"

.field private static final IME_CHINESE_UDB_HW_SC:Ljava/lang/String; = "IME_CHINESE_UDB_SIMP_CHN_HANDWRITING"

.field private static final IME_CHINESE_UDB_HW_TC:Ljava/lang/String; = "IME_CHINESE_UDB_TRAD_CHN_HANDWRITING"

.field private static final IME_CHINESE_UDB_SC:Ljava/lang/String; = "IME_CHINESE_UDB_SIMP_CHN"

.field private static final IME_CHINESE_UDB_TC:Ljava/lang/String; = "IME_CHINESE_UDB_TRAD_CHN"

.field public static final UDB_TYPE_HW_SC:Ljava/lang/String; = "4"

.field public static final UDB_TYPE_HW_TC:Ljava/lang/String; = "3"

.field public static final UDB_TYPE_SC:Ljava/lang/String; = "2"

.field public static final UDB_TYPE_TC:Ljava/lang/String; = "1"

.field private static mInstance:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;

.field public static mTESTING_curDate:Ljava/lang/String;


# instance fields
.field private CSInstalled:Z

.field final TAG:Ljava/lang/String;

.field private mContent:Landroid/content/ContentResolver;

.field private final mGetUDBWordsURI:Landroid/net/Uri;

.field private mHostContext:Landroid/content/Context;

.field private mNeedBackup:Z

.field private mPluginContext:Landroid/content/Context;

.field private mSharePref:Landroid/content/SharedPreferences;

.field private final mTimestampURI:Landroid/net/Uri;

.field private final mUpdateUDBWordsURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mInstance:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;

    .line 59
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mTESTING_curDate:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 8
    .parameter "host"
    .parameter "plugin"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 218
    invoke-direct {p0}, Lcom/htc/cscore/plugin/CSSyncAdapter;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    .line 51
    iput-object v6, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mHostContext:Landroid/content/Context;

    .line 52
    iput-object v6, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mPluginContext:Landroid/content/Context;

    .line 53
    iput-object v6, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    .line 54
    iput-object v6, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mSharePref:Landroid/content/SharedPreferences;

    .line 56
    iput-boolean v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->CSInstalled:Z

    .line 57
    iput-boolean v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mNeedBackup:Z

    .line 77
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "get_chinese_udb_timestamp"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mTimestampURI:Landroid/net/Uri;

    .line 78
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "write_chinese_udb_string"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mUpdateUDBWordsURI:Landroid/net/Uri;

    .line 79
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "get_chinese_udb_string"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mGetUDBWordsURI:Landroid/net/Uri;

    .line 219
    iget-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v6, "[HTCIMECSSyncAdapter]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput-object p1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mHostContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mPluginContext:Landroid/content/Context;

    .line 224
    iget-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mHostContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 225
    iput-boolean v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->CSInstalled:Z

    .line 229
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 274
    :goto_1
    return-void

    .line 227
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->CSInstalled:Z

    goto :goto_0

    .line 233
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mHostContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    .line 234
    iget-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mHostContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mSharePref:Landroid/content/SharedPreferences;

    .line 238
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mHostContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, accountStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IME_ALPHABET_UDB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 240
    .local v4, uuidStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v3

    .line 241
    .local v3, uuidByte:[B
    invoke-static {v3}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    .line 242
    .local v2, uuid:Ljava/util/UUID;
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUUID(Ljava/util/UUID;)V
    invoke-static {v5, v2}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$700(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/util/UUID;)V

    .line 243
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v6, "IME_ALPHABET_UDB"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUDBName(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$800(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)V

    .line 245
    new-instance v4, Ljava/lang/String;

    .end local v4           #uuidStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IME_CHINESE_UDB_TRAD_CHN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v4       #uuidStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v3

    .line 247
    invoke-static {v3}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    .line 248
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUUID(Ljava/util/UUID;)V
    invoke-static {v5, v2}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$700(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/util/UUID;)V

    .line 249
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v6, "IME_CHINESE_UDB_TRAD_CHN"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUDBName(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$800(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)V

    .line 251
    new-instance v4, Ljava/lang/String;

    .end local v4           #uuidStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IME_CHINESE_UDB_SIMP_CHN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v4       #uuidStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v3

    .line 253
    invoke-static {v3}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    .line 254
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUUID(Ljava/util/UUID;)V
    invoke-static {v5, v2}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$700(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/util/UUID;)V

    .line 255
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v6, "IME_CHINESE_UDB_SIMP_CHN"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUDBName(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$800(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)V

    .line 257
    new-instance v4, Ljava/lang/String;

    .end local v4           #uuidStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IME_CHINESE_UDB_TRAD_CHN_HANDWRITING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v4       #uuidStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v3

    .line 259
    invoke-static {v3}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    .line 260
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUUID(Ljava/util/UUID;)V
    invoke-static {v5, v2}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$700(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/util/UUID;)V

    .line 261
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v6, "IME_CHINESE_UDB_TRAD_CHN_HANDWRITING"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUDBName(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$800(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)V

    .line 263
    new-instance v4, Ljava/lang/String;

    .end local v4           #uuidStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IME_CHINESE_UDB_SIMP_CHN_HANDWRITING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v4       #uuidStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v3

    .line 265
    invoke-static {v3}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    .line 266
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUUID(Ljava/util/UUID;)V
    invoke-static {v5, v2}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$700(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/util/UUID;)V

    .line 267
    sget-object v5, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v6, "IME_CHINESE_UDB_SIMP_CHN_HANDWRITING"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUDBName(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$800(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)V

    .line 269
    sput-object p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mInstance:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 271
    .end local v0           #accountStr:Ljava/lang/String;
    .end local v2           #uuid:Ljava/util/UUID;
    .end local v3           #uuidByte:[B
    .end local v4           #uuidStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->getInstance()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryAlphabetUserDictionary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryAlphabetUDBTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->insertAlphabetUserDictionary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->insertChineseUDBData(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static decodeUtf8([BI)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "dataLen"

    .prologue
    .line 635
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "utf8"

    invoke-direct {v1, p0, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_0
    return-object v1

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, "CSSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF8 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static encodeUtf8(Ljava/lang/String;)[B
    .locals 4
    .parameter "str"

    .prologue
    .line 625
    :try_start_0
    const-string v1, "utf8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 629
    :goto_0
    return-object v1

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, "CSSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF8 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getInstance()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mInstance:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;

    return-object v0
.end method

.method private insertAlphabetUserDictionary(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    const/4 v3, 0x1

    .line 685
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 686
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "word"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object v4, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "alphabet_udb_words"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 688
    .local v0, provider_uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 690
    .local v1, retUri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 691
    const/4 v3, 0x0

    .line 693
    :cond_0
    return v3
.end method

.method private insertChineseUDBData(ILjava/lang/String;)Z
    .locals 6
    .parameter "whichDB"
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 717
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 719
    .local v0, mContentValues:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertChineseUDBData start DB = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 721
    const-string v2, "udb_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    const-string v2, "udb_string"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mUpdateUDBWordsURI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 725
    .local v1, updatedSize:I
    iget-object v2, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertChineseUDBData updatedSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-gtz v1, :cond_0

    .line 728
    const/4 v2, 0x0

    .line 731
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isCSEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    iget-boolean v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->CSInstalled:Z

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "CS is not installed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return v0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mHostContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "CS is not active."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private querryAlphabetUDBTimestamp()J
    .locals 11

    .prologue
    const-wide/16 v9, 0x2710

    const/4 v2, 0x0

    .line 643
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "alphabet_udb_timestamp"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 644
    .local v1, provider_uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 645
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 646
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[querryAlphabetUDBTimestamp] Error occur while query HTC_IME provider about alphabet UDB timestamp. (cursor is null)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v9

    .line 660
    :cond_0
    :goto_0
    return-wide v7

    .line 649
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[querryAlphabetUDBTimestamp] Error occur while query HTC_IME provider about alphabet UDB timestamp. (cursor is empty)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v9

    .line 651
    goto :goto_0

    .line 654
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 655
    .local v7, timestamp:J
    cmp-long v0, v7, v9

    if-gez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[querryAlphabetUDBTimestamp] Error occur while query HTC_IME provider about alphabet UDB timestamp. (timestamp is smaller than DefTimeStamp)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v9

    .line 657
    goto :goto_0
.end method

.method private querryAlphabetUserDictionary()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 664
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "alphabet_udb_words"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 665
    .local v1, provider_uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 666
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 667
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[querryAlphabetUserDictionary] Error occur while query HTC_IME provider about alphabet UDB words. (cursor is null)"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    return-object v2

    .line 670
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[querryAlphabetUserDictionary] Error occur while query HTC_IME provider about alphabet UDB words. (cursor is empty)"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 676
    .local v7, rawData:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 677
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[querryAlphabetUserDictionary] Error occur while query HTC_IME provider about alphabet UDB words. (rawData is null)"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v2, v7

    .line 681
    goto :goto_0
.end method

.method private querryChineseUDBData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "whichDB"

    .prologue
    const/4 v2, 0x0

    .line 698
    const-string v7, ""

    .line 700
    .local v7, retVal:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mGetUDBWordsURI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 702
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querryChineseUDBData start DB = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eqz v6, :cond_1

    .line 704
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 707
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querryChineseUDBData retVal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-object v7
.end method

.method private querryChineseUDBTimestamp(Ljava/lang/String;)J
    .locals 10
    .parameter "whichDB"

    .prologue
    const/4 v2, 0x0

    .line 735
    const-wide/16 v8, 0x2710

    .line 736
    .local v8, timestamp:J
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mContent:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mTimestampURI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 738
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querryChineseUDBTimestamp start DB = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    if-eqz v6, :cond_1

    .line 741
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 744
    .local v7, s:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 745
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    .end local v7           #s:Ljava/lang/String;
    :cond_1
    const-wide/16 v0, 0x2710

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    .line 750
    const-wide/16 v8, 0x2710

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querryChineseUDBTimestamp timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-wide v8
.end method


# virtual methods
.method public collectSyncItem(Lcom/htc/cscore/plugin/CSTransport;I)Z
    .locals 13
    .parameter "transport"
    .parameter "limit"

    .prologue
    .line 387
    iget-object v10, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v11, "[collectSyncItem]"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v4, 0x0

    .line 390
    .local v4, retVal:Z
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 391
    const/4 v10, 0x0

    .line 448
    :goto_0
    return v10

    .line 412
    .local v5, syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .local v7, timestamp:J
    .local v9, uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_0
    iget-object v10, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[collectSyncItem] handle UDB: UUID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v10, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[collectSyncItem] handle UDB: Name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUDBName()Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1300(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v10, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[collectSyncItem] timestamp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v6

    .line 418
    .local v6, syncItem:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    sget-object v10, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;->VirtualDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;

    invoke-virtual {v10}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;->getNumber()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setSyncItemType(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 419
    invoke-virtual {v6, v9}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 420
    invoke-virtual {v6, v7, v8}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 422
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    .line 423
    .local v0, addSyncItem:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    invoke-virtual {v0, v6}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    .line 426
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v3

    .line 427
    .local v3, msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    invoke-virtual {v3, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 428
    sget-object v10, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    invoke-virtual {v3, v10}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 429
    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v2

    .line 432
    .local v2, msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    :try_start_0
    invoke-interface {p1, v2}, Lcom/htc/cscore/plugin/CSTransport;->writeSyncMessage(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    add-int/lit8 p2, p2, -0x1

    .line 394
    .end local v0           #addSyncItem:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .end local v2           #msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .end local v3           #msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .end local v5           #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .end local v6           #syncItem:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .end local v7           #timestamp:J
    .end local v9           #uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 395
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getNext()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$900()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    move-result-object v5

    .line 397
    .restart local v5       #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    if-nez v5, :cond_3

    .line 439
    .end local v5           #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    :cond_2
    :goto_2
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->hasNext()Z
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1400()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 440
    const/4 v4, 0x1

    .line 446
    :goto_3
    iget-object v10, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v11, "[collectSyncItem] Done."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v4

    .line 448
    goto/16 :goto_0

    .line 401
    .restart local v5       #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    :cond_3
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getTimestamp()J
    invoke-static {v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)J

    move-result-wide v7

    .line 402
    .restart local v7       #timestamp:J
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v10

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static {v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/cscore/util/UUIDConverter;->uuidToByteString(Ljava/util/UUID;)Lcom/htc/protobuf/ByteString;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v9

    .line 407
    .restart local v9       #uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    if-nez v9, :cond_0

    .line 408
    iget-object v10, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v11, "[collectSyncItem] Failed in finding UUID."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 434
    .restart local v0       #addSyncItem:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .restart local v2       #msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .restart local v3       #msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .restart local v6       #syncItem:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    :catch_0
    move-exception v1

    .line 435
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    iget-object v10, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    .end local v0           #addSyncItem:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    .end local v2           #msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .end local v3           #msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .end local v5           #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .end local v6           #syncItem:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .end local v7           #timestamp:J
    .end local v9           #uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_4
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->reset()V
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1500()V

    .line 443
    const/4 v4, 0x0

    goto :goto_3
.end method

.method protected getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mSharePref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public hasULData()Z
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[hasULData]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mNeedBackup:Z

    goto :goto_0
.end method

.method public onCancelled(Landroid/content/Context;)V
    .locals 2
    .parameter "hostContext"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[onCancelled]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    :cond_0
    return-void
.end method

.method public receiveDLData(Lcom/htc/cscore/plugin/CSTransport;Landroid/os/Bundle;)V
    .locals 2
    .parameter "transport"
    .parameter "extras"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[receiveDLData]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :cond_0
    return-void
.end method

.method public receivedFMDLData(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;>;"
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v8, "[receivedFMDLData]"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 620
    :cond_0
    return-void

    .line 574
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    .line 576
    .local v5, syncMsg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v7

    sget-object v8, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    if-eq v7, v8, :cond_2

    .line 577
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "It is imposibble case for HTC_IME. skip Type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :cond_2
    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v2

    .line 583
    .local v2, data:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-virtual {v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/cscore/util/UUIDConverter;->byteStringToUUID(Lcom/htc/protobuf/ByteString;)Ljava/util/UUID;

    move-result-object v6

    .line 586
    .local v6, uuid:Ljava/util/UUID;
    const/4 v1, 0x0

    .line 587
    .local v1, curDic:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v7

    if-nez v7, :cond_3

    .line 588
    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 603
    :goto_1
    move-object v0, v2

    .line 605
    .local v0, alphabetData:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[receivedFMDLData] handle Alphabet UDB: UUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getTimestamp()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 610
    .local v3, date:Ljava/util/Date;
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timestamp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UDB = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getValue()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->insertData(Ljava/lang/String;)Z
    invoke-static {v1, v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1600(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 616
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v8, "[receivedFMDLData] Restore user dictionary successfully!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    .end local v0           #alphabetData:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .end local v3           #date:Ljava/util/Date;
    :cond_3
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v7

    if-nez v7, :cond_4

    .line 590
    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    goto/16 :goto_1

    .line 591
    :cond_4
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v7

    if-nez v7, :cond_5

    .line 592
    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    goto/16 :goto_1

    .line 593
    :cond_5
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v7

    if-nez v7, :cond_6

    .line 594
    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    goto/16 :goto_1

    .line 595
    :cond_6
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v7

    if-nez v7, :cond_7

    .line 596
    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    goto/16 :goto_1

    .line 598
    :cond_7
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[receivedFMDLData] UUID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not match. (Ignore)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 618
    .restart local v0       #alphabetData:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .restart local v3       #date:Ljava/util/Date;
    :cond_8
    iget-object v7, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v8, "[receivedFMDLData] Restore user dictionary failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public requestForAdd(Lcom/htc/cscore/plugin/CSTransport;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .parameter "transport"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/cscore/plugin/CSTransport;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    .local p2, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[requestForAdd]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 470
    const/16 v17, 0x0

    .line 563
    :goto_0
    return-object v17

    .line 473
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 475
    .local v13, syncItem:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-virtual {v13}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v14

    .line 476
    .local v14, syncType:I
    sget-object v17, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;->VirtualDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;->getNumber()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[requestForAdd] Wrong syncType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (Drop)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {v13}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/cscore/util/UUIDConverter;->byteStringToUUID(Lcom/htc/protobuf/ByteString;)Ljava/util/UUID;

    move-result-object v16

    .line 492
    .local v16, uuid:Ljava/util/UUID;
    const/4 v7, 0x0

    .line 493
    .local v7, curDic:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    const/4 v15, 0x0

    .line 494
    .local v15, udbName:Ljava/lang/String;
    sget-object v17, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v17

    if-nez v17, :cond_3

    .line 495
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 496
    const-string v15, "IME_ALPHABET_UDB"

    .line 516
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[requestForAdd] handle Alphabet UDB: UUID="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getTimestamp()J
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)J

    move-result-wide v3

    .line 525
    .local v3, UDBTimestamp:J
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUDBData()Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1100(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, UDBData:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[requestForAdd] Query UDB Data failed. Add empty UDB"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v2, ""

    .line 532
    :cond_2
    invoke-virtual {v13}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v10

    .line 534
    .local v10, id:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[requestForAdd] timestamp="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", data= ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v6

    .line 538
    .local v6, alphabetData:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    invoke-virtual {v6, v15}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 539
    invoke-virtual {v6, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 540
    invoke-virtual {v6, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 541
    invoke-virtual {v6, v10}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 543
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v5

    .line 544
    .local v5, addUdbData:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    invoke-virtual {v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->setDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    .line 546
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v12

    .line 547
    .local v12, msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    invoke-virtual {v12, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 548
    sget-object v17, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 549
    invoke-virtual {v12}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v11

    .line 552
    .local v11, msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/htc/cscore/plugin/CSTransport;->writeSyncMessage(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mNeedBackup:Z

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[requestForAdd] Done."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 497
    .end local v2           #UDBData:Ljava/lang/String;
    .end local v3           #UDBTimestamp:J
    .end local v5           #addUdbData:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    .end local v6           #alphabetData:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .end local v10           #id:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .end local v11           #msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .end local v12           #msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    :cond_3
    sget-object v17, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v17

    if-nez v17, :cond_4

    .line 498
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 499
    const-string v15, "IME_CHINESE_UDB_TRAD_CHN"

    goto/16 :goto_2

    .line 500
    :cond_4
    sget-object v17, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v17

    if-nez v17, :cond_5

    .line 501
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 502
    const-string v15, "IME_CHINESE_UDB_SIMP_CHN"

    goto/16 :goto_2

    .line 503
    :cond_5
    sget-object v17, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v17

    if-nez v17, :cond_6

    .line 504
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 505
    const-string v15, "IME_CHINESE_UDB_TRAD_CHN_HANDWRITING"

    goto/16 :goto_2

    .line 506
    :cond_6
    sget-object v17, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v17

    if-nez v17, :cond_7

    .line 507
    sget-object v7, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 508
    const-string v15, "IME_CHINESE_UDB_SIMP_CHN_HANDWRITING"

    goto/16 :goto_2

    .line 510
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[requestForAdd] UUID : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not match. (Ignore)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 553
    .restart local v2       #UDBData:Ljava/lang/String;
    .restart local v3       #UDBTimestamp:J
    .restart local v5       #addUdbData:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    .restart local v6       #alphabetData:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .restart local v10       #id:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .restart local v11       #msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .restart local v12       #msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    :catch_0
    move-exception v8

    .line 554
    .local v8, e:Ljava/lang/UnsupportedOperationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 563
    .end local v2           #UDBData:Ljava/lang/String;
    .end local v3           #UDBTimestamp:J
    .end local v5           #addUdbData:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    .end local v6           #alphabetData:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .end local v7           #curDic:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    .end local v10           #id:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .end local v11           #msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .end local v12           #msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .end local v13           #syncItem:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .end local v14           #syncType:I
    .end local v15           #udbName:Ljava/lang/String;
    .end local v16           #uuid:Ljava/util/UUID;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public requestForUpdate(Lcom/htc/cscore/plugin/CSTransport;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter "transport"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/cscore/plugin/CSTransport;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;>;"
    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[requestForUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-object v2

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[requestForUpdate] Done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendULData(Lcom/htc/cscore/plugin/CSTransport;Landroid/os/Bundle;)Z
    .locals 16
    .parameter "transport"
    .parameter "extras"

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v14, "[sendULData]"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/htc/cscore/plugin/CSTransport;->getRemainingPushCnt()I

    move-result v6

    .line 306
    .local v6, remainCnt:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->isCSEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    .line 307
    const/4 v13, 0x0

    .line 379
    :goto_0
    return v13

    .line 317
    .local v7, syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    :cond_0
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v13

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/cscore/util/UUIDConverter;->uuidToByteString(Ljava/util/UUID;)Lcom/htc/protobuf/ByteString;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v10

    .line 321
    .local v10, uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUDBData()Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1100(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, UDBData:Ljava/lang/String;
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getTimestamp()J
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)J

    move-result-wide v8

    .line 323
    .local v8, timestamp:J
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUDBName()Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1300(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, UDBName:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[sendULData] Querry UDB Data failed. Skip backup. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v1           #UDBData:Ljava/lang/String;
    .end local v2           #UDBName:Ljava/lang/String;
    .end local v7           #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .end local v8           #timestamp:J
    .end local v10           #uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_1
    :goto_1
    if-lez v6, :cond_2

    .line 311
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getNext()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$900()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    move-result-object v7

    .line 313
    .restart local v7       #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    if-nez v7, :cond_0

    .line 371
    .end local v7           #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->mNeedBackup:Z

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    const-string v14, "[sendULData] Done."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->hasNext()Z
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1400()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 376
    const/4 v13, 0x1

    goto :goto_0

    .line 329
    .restart local v1       #UDBData:Ljava/lang/String;
    .restart local v2       #UDBName:Ljava/lang/String;
    .restart local v7       #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .restart local v8       #timestamp:J
    .restart local v10       #uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[sendULData] No data in UDB. syncIdx = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 335
    :cond_4
    if-nez v10, :cond_5

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[sendULData] Failed in generate UUID. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    :cond_5
    if-nez v2, :cond_6

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[sendULData] Querry UDB name failed. Skip backup. syncIdx = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 345
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[sendULData] UDBName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[sendULData] UDBData = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v12

    .line 349
    .local v12, virtualDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    invoke-virtual {v12, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 350
    invoke-virtual {v12, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 351
    invoke-virtual {v12, v8, v9}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 352
    invoke-virtual {v12, v10}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 354
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v11

    .line 355
    .local v11, updateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    invoke-virtual {v11, v12}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->setDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    .line 357
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v5

    .line 358
    .local v5, msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    invoke-virtual {v5, v11}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 359
    sget-object v13, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    invoke-virtual {v5, v13}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 360
    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v4

    .line 363
    .local v4, msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/htc/cscore/plugin/CSTransport;->writeSyncMessage(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 365
    :catch_0
    move-exception v3

    .line 366
    .local v3, e:Ljava/lang/UnsupportedOperationException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    .end local v1           #UDBData:Ljava/lang/String;
    .end local v2           #UDBName:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/UnsupportedOperationException;
    .end local v4           #msg:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .end local v5           #msgBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .end local v7           #syncIdx:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .end local v8           #timestamp:J
    .end local v10           #uniqID:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .end local v11           #updateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .end local v12           #virtualDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    :cond_7
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->reset()V
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->access$1500()V

    .line 379
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
