.class public Lcom/google/android/gsf/gservices/GservicesProvider;
.super Landroid/content/ContentProvider;
.source "GservicesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;,
        Lcom/google/android/gsf/gservices/GservicesProvider$OverrideReceiver;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final UPDATE_MAIN_URI:Landroid/net/Uri;

.field public static final UPDATE_OVERRIDE_URI:Landroid/net/Uri;


# instance fields
.field private mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

.field private mPushToSecure:Z

.field private mPushToSystem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "content://com.google.android.gsf.gservices/main"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_MAIN_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.google.android.gsf.gservices/override"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_OVERRIDE_URI:Landroid/net/Uri;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    .line 66
    iput-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    .line 84
    return-void
.end method

.method private queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V
    .locals 13
    .parameter "cursor"
    .parameter "selectionArgs"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 200
    iget-object v10, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v10}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 201
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-array v0, v11, [Ljava/lang/String;

    .line 202
    .local v0, args:[Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v8, v1, v4

    .line 203
    .local v8, prefix:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v12

    .line 204
    const/4 v7, 0x0

    .line 205
    .local v7, overrides:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    iget-boolean v10, v10, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    if-eqz v10, :cond_1

    .line 206
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #overrides:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 207
    .restart local v7       #overrides:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v10, "SELECT name, value FROM overrides WHERE name LIKE ?"

    invoke-virtual {v3, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 209
    .local v2, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 210
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, key:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-virtual {p1, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 216
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catchall_0
    move-exception v10

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v10

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v2           #c:Landroid/database/Cursor;
    :cond_1
    const-string v10, "SELECT name, value FROM main WHERE name LIKE ?"

    invoke-virtual {v3, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 222
    .restart local v2       #c:Landroid/database/Cursor;
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 223
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5       #key:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 225
    .restart local v9       #value:Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 226
    :cond_3
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-virtual {p1, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 230
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catchall_1
    move-exception v10

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v10

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 233
    .end local v2           #c:Landroid/database/Cursor;
    .end local v7           #overrides:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8           #prefix:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private querySimple(Landroid/database/MatrixCursor;[Ljava/lang/String;)V
    .locals 11
    .parameter "cursor"
    .parameter "selectionArgs"

    .prologue
    .line 165
    iget-object v9, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v9}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 166
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "SELECT value FROM main WHERE name = ?"

    invoke-virtual {v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 168
    .local v6, readMain:Landroid/database/sqlite/SQLiteStatement;
    const/4 v7, 0x0

    .line 170
    .local v7, readOverride:Landroid/database/sqlite/SQLiteStatement;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v4, v0, v2

    .line 171
    .local v4, key:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v6, v9, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 179
    .local v8, v:Ljava/lang/String;
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    iget-boolean v9, v9, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    if-eqz v9, :cond_1

    .line 180
    if-nez v7, :cond_0

    .line 181
    const-string v9, "SELECT value FROM overrides WHERE name = ?"

    invoke-virtual {v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 184
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    .line 191
    :cond_1
    :goto_2
    const/4 v9, 0x2

    :try_start_4
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-virtual {p1, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v8           #v:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 177
    .local v3, ignore:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v8, 0x0

    .restart local v8       #v:Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v3           #ignore:Landroid/database/sqlite/SQLiteDoneException;
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #v:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 195
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 197
    :cond_4
    return-void

    .line 194
    .end local v2           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 195
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v9

    .line 187
    .restart local v2       #i$:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v8       #v:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private syncAllSettings()V
    .locals 3

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "system:"

    const-string v2, "saved_system"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    if-eqz v0, :cond_1

    .line 359
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "secure:"

    const-string v2, "saved_secure"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_1
    return-void
.end method

.method private syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "contentUri"
    .parameter "prefix"
    .parameter "localTable"

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 373
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 375
    .local v2, r:Landroid/content/ContentResolver;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v20, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 378
    .local v17, mc:Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/gservices/GservicesProvider;->queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    .line 380
    :goto_0
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v3

    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->close()V

    throw v3

    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->close()V

    .line 389
    const/4 v12, 0x0

    .line 390
    .local v12, delete:Landroid/database/sqlite/SQLiteStatement;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v10, cv:Landroid/content/ContentValues;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .line 393
    .local v8, args:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT name, value FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 395
    .local v9, c:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 396
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 397
    .local v16, key:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 398
    .local v19, value:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    const-string v3, "name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v5, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 403
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 424
    .end local v16           #key:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 425
    if-eqz v12, :cond_1

    .line 426
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v3

    .line 407
    .restart local v16       #key:Ljava/lang/String;
    .restart local v19       #value:Ljava/lang/String;
    :cond_2
    if-nez v12, :cond_3

    .line 408
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " WHERE name = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 411
    :cond_3
    if-nez v19, :cond_4

    .line 412
    const/4 v3, 0x0

    aput-object v16, v8, v3

    .line 413
    const-string v3, "name=?"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 420
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_1

    .line 415
    :cond_4
    const-string v3, "name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v3, "value"

    move-object/from16 v0, v19

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 424
    .end local v16           #key:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 425
    if-eqz v12, :cond_6

    .line 426
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 434
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR REPLACE INTO "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (name, value) VALUES (?, ?)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    .line 437
    .local v15, insert:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "value"

    aput-object v5, v4, v3

    .line 439
    .local v4, projection:[Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 440
    .local v13, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 441
    .restart local v16       #key:Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 442
    .restart local v19       #value:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v9

    .line 444
    const/16 v18, 0x0

    .line 446
    .local v18, origValue:Ljava/lang/String;
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 447
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v18

    .line 450
    :cond_7
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 453
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 454
    if-nez v18, :cond_8

    .line 455
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 459
    :goto_4
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 460
    const-string v3, "name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v3, "value"

    move-object/from16 v0, v19

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 465
    .end local v13           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #origValue:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :catchall_2
    move-exception v3

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v3

    .line 450
    .restart local v13       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v18       #origValue:Ljava/lang/String;
    .restart local v19       #value:Ljava/lang/String;
    :catchall_3
    move-exception v3

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 457
    :cond_8
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 465
    .end local v13           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #origValue:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_9
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 468
    .end local v4           #projection:[Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #insert:Landroid/database/sqlite/SQLiteStatement;
    :cond_a
    return-void
.end method

.method private updateMain(Landroid/content/ContentValues;)V
    .locals 9
    .parameter "settings"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 318
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 320
    :try_start_0
    const-string v7, "DELETE FROM main"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    if-eqz p1, :cond_2

    .line 322
    const-string v7, "INSERT INTO main (name, value) VALUES (?, ?)"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 326
    .local v5, update:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 327
    .local v4, kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    .local v3, key:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 329
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 330
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 331
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 332
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #value:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    .end local v5           #update:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 336
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #update:Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 339
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #update:Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 341
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 343
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 344
    sget-object v7, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 345
    const-string v7, "GservicesProvider"

    const-string v8, "main update completed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method private updateOverride(Landroid/content/ContentValues;)V
    .locals 10
    .parameter "settings"

    .prologue
    const/4 v9, 0x1

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 275
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_0

    .line 276
    const-string v8, "DELETE FROM overrides"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    .line 305
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 307
    sget-object v8, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 308
    const-string v8, "GservicesProvider"

    const-string v9, "override update completed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 279
    :cond_0
    const-string v8, "INSERT OR REPLACE INTO overrides (name, value) VALUES (?, ?)"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 282
    .local v6, update:Landroid/database/sqlite/SQLiteStatement;
    const-string v8, "DELETE FROM overrides WHERE name = ?"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 287
    .local v2, delete:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 288
    .local v5, kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 289
    .local v4, key:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 290
    .local v7, value:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 291
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 300
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #value:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 301
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v8

    .line 294
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7       #value:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v6, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 295
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 296
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 300
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 301
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 303
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    iput-boolean v9, v8, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 136
    .local v2, uid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 137
    .local v1, pid:I
    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    .line 140
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    move v5, v4

    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    .line 143
    const-string v3, "GservicesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gservices pushing to system: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; secure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v3, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {v3, v0}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    .line 147
    return v4

    :cond_1
    move v3, v5

    .line 137
    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 153
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 154
    .local v0, cursor:Landroid/database/MatrixCursor;
    if-nez p4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 157
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gservices/GservicesProvider;->querySimple(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    sget-object v2, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gservices/GservicesProvider;->queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, table:Ljava/lang/String;
    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateMain(Landroid/content/ContentValues;)V

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    const/4 v1, 0x0

    return v1

    .line 255
    :cond_0
    const-string v1, "override"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateOverride(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 258
    :cond_1
    const-string v1, "GservicesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad Gservices update URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
