.class public Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;
.super Ljava/lang/Object;
.source "SQLiteInstallerDataStore.java"

# interfaces
.implements Lcom/google/android/finsky/appstate/InstallerDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;
    }
.end annotation


# static fields
.field private static final FULL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mHelper:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "auto_update"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "desired_version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "download_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "delivery_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "delivery_data_timestamp_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "installer_state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "first_download_ms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "referrer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "continue_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last_notified_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;-><init>(Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mHelper:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;

    .line 160
    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 170
    return-void
.end method

.method private localAppStateFromCursor(Landroid/database/Cursor;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .locals 22
    .parameter "cursor"

    .prologue
    .line 241
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    sget-object v4, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 250
    .local v4, autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :goto_0
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    const/4 v5, -0x1

    .line 256
    .local v5, desiredVersion:I
    :goto_1
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    const/4 v6, -0x1

    .line 261
    .local v6, lastNotifiedVersion:I
    :goto_2
    const/4 v7, 0x0

    .line 262
    .local v7, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const/4 v2, 0x4

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->parseFrom([B)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 270
    :cond_0
    :goto_3
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 271
    .local v8, deliveryDataTimestampMs:J
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 272
    .local v10, installerState:I
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, downloadUri:Ljava/lang/String;
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 274
    .local v12, firstDownloadMs:J
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, referrer:Ljava/lang/String;
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 276
    .local v16, account:Ljava/lang/String;
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 277
    .local v17, title:Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 278
    .local v18, flags:I
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, continueUrl:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct/range {v2 .. v18}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;IILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    .line 246
    .end local v4           #autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .end local v5           #desiredVersion:I
    .end local v6           #lastNotifiedVersion:I
    .end local v7           #deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .end local v8           #deliveryDataTimestampMs:J
    .end local v10           #installerState:I
    .end local v11           #downloadUri:Ljava/lang/String;
    .end local v12           #firstDownloadMs:J
    .end local v14           #referrer:Ljava/lang/String;
    .end local v15           #continueUrl:Ljava/lang/String;
    .end local v16           #account:Ljava/lang/String;
    .end local v17           #title:Ljava/lang/String;
    .end local v18           #flags:I
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v2, v0

    invoke-static {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->valueOf(I)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v4

    .restart local v4       #autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    goto/16 :goto_0

    .line 253
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .restart local v5       #desiredVersion:I
    goto/16 :goto_1

    .line 259
    :cond_3
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .restart local v6       #lastNotifiedVersion:I
    goto :goto_2

    .line 266
    .restart local v7       #deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    :catch_0
    move-exception v19

    .line 267
    .local v19, ipbme:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "Couldn\'t parse blob as AndroidAppDeliveryData"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v19, v20, v21

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private reopen()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mHelper:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .locals 11
    .parameter "packageName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 174
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->reopen()V

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appstate"

    sget-object v2, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "package_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 178
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eq v0, v10, :cond_0

    .line 185
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    :goto_0
    monitor-exit p0

    return-object v0

    .line 181
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 182
    invoke-direct {p0, v8}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->localAppStateFromCursor(Landroid/database/Cursor;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 185
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 174
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getAll()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->reopen()V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appstate"

    sget-object v2, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 195
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    .local v10, result:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, v8}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->localAppStateFromCursor(Landroid/database/Cursor;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v9

    .line 199
    .local v9, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-interface {v10, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    .end local v9           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #result:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #result:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    monitor-exit p0

    return-object v10
.end method

.method public declared-synchronized put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->reopen()V

    .line 211
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "auto_update"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v1, "desired_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v1, "download_uri"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    const-string v1, "delivery_data"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 221
    :goto_0
    const-string v1, "delivery_data_timestamp_ms"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryDataTimestampMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v1, "installer_state"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v1, "first_download_ms"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v1, "referrer"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "flags"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v1, "continue_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "last_notified_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    iget-object v1, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "appstate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 231
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    const-string v1, "delivery_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "accountName"

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 339
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 338
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V
    .locals 2
    .parameter "packageName"
    .parameter "autoUpdate"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 288
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAutoUpdate(Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 287
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "continueUrl"

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 360
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 359
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V
    .locals 2
    .parameter "packageName"
    .parameter "deliveryData"
    .parameter "timestampMs"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 296
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 295
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDesiredVersion(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "desiredVersion"

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 303
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDesiredVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 302
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFirstDownloadMs(Ljava/lang/String;J)V
    .locals 2
    .parameter "packageName"
    .parameter "firstDownloadMs"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 325
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFirstDownloadMs(J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 324
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFlags(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 353
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFlags(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 352
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setInstallerState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "installerState"
    .parameter "downloadUri"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 318
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setInstallerState(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDownloadUri(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 317
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLastNotifiedVersion(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "lastNotifiedVersion"

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 310
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setLastNotifiedVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 309
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "referrer"

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 332
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setExternalReferrer(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 331
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "title"

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 346
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 345
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
