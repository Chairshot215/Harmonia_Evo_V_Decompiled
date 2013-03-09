.class public Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HtcMessageDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "htcmessageutil.db"

.field static final DATABASE_VERSION:I = 0x4

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcMessageDatabaseHelper"

.field private static mInstance:Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->mInstance:Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    const-string v0, "htcmessageutil.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    iput-object p1, p0, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private createCBsettingTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 92
    const-string v0, "CREATE TABLE cbsetting (_id INTEGER PRIMARY KEY, locale TEXT, channel INTEGER, channel_name TEXT, readonly INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v0, "HtcMessageDatabaseHelper"

    const-string v1, "cbsetting, table Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private createEmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 70
    const-string v0, "CREATE TABLE ems (_id INTEGER PRIMARY KEY, date INTEGER, reference_number INTEGER, count INTEGER, sequence INTEGER, status INTEGER, address TEXT, phone_type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "HtcMessageDatabaseHelper"

    const-string v1, "ema, table Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method private createGeneralTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 103
    const-string v0, "CREATE TABLE msggeneral (_id INTEGER PRIMARY KEY, key TEXT, keyvalue TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "HtcMessageDatabaseHelper"

    const-string v1, "msggeneral, table Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private createLbsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 84
    const-string v0, "CREATE TABLE SMS_Prefix (_id INTEGER PRIMARY KEY,app_prefix TEXT,message_text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "HtcMessageDatabaseHelper"

    const-string v1, "Lbs, table Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 221
    const-string v0, "DROP TABLE IF EXISTS ems"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v0, "DROP TABLE IF EXISTS SMS_Prefix"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string v0, "DROP TABLE IF EXISTS cbsetting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    const-string v0, "DROP TABLE IF EXISTS msggeneral"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static getHelper(Landroid/content/Context;)Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const-class v1, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->mInstance:Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->mInstance:Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->mInstance:Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private migrateLbsdata(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v3, 0x0

    .line 114
    const-string v0, "content://lbssms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, turi:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "app_prefix"

    aput-object v4, v2, v12

    const-string v4, "message_text"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 121
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 122
    const-string v0, "HtcMessageDatabaseHelper"

    const-string v2, "migrate LBS data cursor is null <<<"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 126
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, prefix:Ljava/lang/String;
    const-string v0, "HtcMessageDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefix >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    const/4 v0, 0x2

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, apname:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 134
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "app_prefix"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "message_text"

    invoke-virtual {v10, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "SMS_Prefix"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    .end local v6           #apname:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 139
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "HtcMessageDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrate data exception >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #prefix:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 145
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_2
    const-string v0, "HtcMessageDatabaseHelper"

    const-string v2, "migrate lbs data"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->createLbsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    return-void
.end method

.method private upgradeDatabaseToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->createCBsettingTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->createGeneralTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 234
    return-void
.end method

.method private upgradeDatabaseToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 238
    const-string v1, "HtcMessageDatabaseHelper"

    const-string v2, "update to version 4>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    const-string v1, "ALTER TABLE ems ADD COLUMN phone_type INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->createEmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->createLbsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->createCBsettingTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->createGeneralTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 152
    const-string v1, "HtcMessageDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    packed-switch p2, :pswitch_data_0

    .line 209
    :goto_0
    const-string v1, "HtcMessageDatabaseHelper"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->migrateLbsdata(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 157
    :pswitch_0
    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 163
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->upgradeDatabaseToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->migrateLbsdata(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "HtcMessageDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 176
    :pswitch_1
    const/4 v1, 0x2

    if-le p3, v1, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 182
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->upgradeDatabaseToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 183
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "HtcMessageDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 193
    :pswitch_2
    const/4 v1, 0x3

    if-le p3, v1, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 199
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcMessageDatabaseHelper;->upgradeDatabaseToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 201
    :catch_2
    move-exception v0

    .line 202
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_5
    const-string v1, "HtcMessageDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
