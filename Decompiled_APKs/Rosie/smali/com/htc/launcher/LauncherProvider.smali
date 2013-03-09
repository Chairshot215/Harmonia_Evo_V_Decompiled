.class public Lcom/htc/launcher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/LauncherProvider$SqlArguments;,
        Lcom/htc/launcher/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.settings"

.field static final BACKUP_DATABASE_NAME:Ljava/lang/String; = "backup_launcher.db"

.field private static final CODE_BACKUP_NONDEFAULT_FAVORITES:I = 0x8

.field private static final CODE_RESTORE_WORKSPACES:I = 0x9

.field private static final CODE_SPECIAL_ADJUST_UNSAVED_ITEM_ORIG_ID:I = 0x2

.field private static final CODE_SPECIAL_BACKUP_ALL_ITEMS:I = 0x3

.field private static final CODE_SPECIAL_INCREASE_PAGE:I = 0x1

.field private static final CODE_SPECIAL_INIT_WORKSPACES:I = 0x7

.field private static final CODE_SPECIAL_SCENE_NAME_LOCALE_CHANGE:I = 0x6

.field private static final CODE_SPECIAL_UPDATE_REARRANGE_SCREEN_ID:I = 0x5

.field private static final CODE_SPECIAL_UPDATE_SHORTCUT_LABELS:I = 0x4

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri; = null

.field static final CURRENT_WORKSPACE_ID:I = 0x0

.field static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x9

.field static final EXTRA_BIND_SOURCES:Ljava/lang/String; = "com.android.launcher.settings.bindsources"

.field static final EXTRA_BIND_TARGETS:Ljava/lang/String; = "com.android.launcher.settings.bindtargets"

.field static final LAUNCHER_BAR_OTHER_COLUMNS:Ljava/lang/String; = "_id, intent, cellX, itemType, iconType, iconPackage, iconResource, icon"

.field static final LAUNCHER_BAR_SELECTIONS:Ljava/lang/String; = "workspace_id=0 AND container=-101"

.field private static final LOGD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "LauncherProvider"

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final SPECIAL_ADJUST_UNSAVED_ITEM_ORIG_ID:Ljava/lang/String; = "_adjust_insaved_item_orig_id"

.field static final SPECIAL_BACKUP_ALL_ITEMS:Ljava/lang/String; = "_backup_all_items"

.field static final SPECIAL_INCREASE_PAGE:Ljava/lang/String; = "_increase_page"

.field static final SPECIAL_INIT_WORKSPACES:Ljava/lang/String; = "_init_workspaces"

.field static final SPECIAL_SCENE_NAME_LOCALE_CHANGE:Ljava/lang/String; = "_scene_name_locale_change"

.field static final SPECIAL_UPDATE_REARRANGE_SCREEN_ID:Ljava/lang/String; = "_update_screen_id"

.field static final SPECIAL_UPDATE_SHORTCUT_LABELS:Ljava/lang/String; = "_update_shortcut_labels"

.field static final SPECILA_BACKUP_NONDEFAULT_FAVORITES:Ljava/lang/String; = "_backup_nondefault_favorites"

.field static final SPECILA_RESTORE_WORKSPACES:Ljava/lang/String; = "_restore_widget_workspaces"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_FAVORITES_BACKUP:Ljava/lang/String; = "favorites_backup"

.field static final TABLE_SCENE_PAGES:Ljava/lang/String; = "scene_pages"

.field static final TABLE_WIDGET_ITEM_TYPES:Ljava/lang/String; = "widget_item_types"

.field static final TABLE_WIDGET_WORKSPACE:Ljava/lang/String; = "widget_workspaces"

.field static final TABLE_WORKSPACE_BACKUP:Ljava/lang/String; = "widget_workspaces_backup"

.field static final URI_LAUNCHER_BAR:Ljava/lang/String; = "launcher_bar"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 115
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_increase_page"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_adjust_insaved_item_orig_id"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_backup_all_items"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_update_shortcut_labels"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_update_screen_id"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_scene_name_locale_change"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_init_workspaces"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_backup_nondefault_favorites"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_restore_widget_workspaces"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    const-string v0, "content://com.htc.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1414
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .parameter "column"
    .parameter "values"

    .prologue
    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1405
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1406
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1407
    if-lez v0, :cond_0

    .line 1408
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1411
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static initWorkspaces(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 7
    .parameter "db"
    .parameter "context"

    .prologue
    .line 1452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1453
    .local v0, current:J
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1454
    .local v3, names:[Ljava/lang/String;
    array-length v2, v3

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_1

    .line 1455
    add-int/lit8 v4, v2, -0x1

    .line 1456
    .local v4, translateId:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 1457
    const/4 v4, -0x1

    .line 1459
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO widget_workspaces VALUES ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 2, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \'htc_wallpaper_0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_lockscreen.jpg\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\'\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1460
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 1454
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1462
    .end local v4           #translateId:I
    :cond_1
    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 661
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 665
    :cond_1
    return-void
.end method

.method private specialAction(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 44
    .parameter "code"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 381
    const/4 v11, 0x0

    .line 382
    .local v11, count:I
    const/4 v2, 0x0

    .line 383
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 384
    .local v12, cursor:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    .line 657
    :goto_0
    return v11

    .line 387
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 390
    const-string v3, "update favorites set screen=screen+1"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 393
    :catch_0
    move-exception v15

    .line 394
    .local v15, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 402
    :pswitch_1
    const-string v3, "workspace_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    .line 403
    .local v43, workspaceId:Ljava/lang/Integer;
    if-nez v43, :cond_0

    .line 404
    const-string v3, "LauncherProvider"

    const-string v4, "no workspace_id found in SPECIAL_ADJUST_UNSAVED_ITEM_ORIG_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 412
    const-string v3, "select b._id, a._id from favorites a, favorites b where a.workspace_id=? AND a.orig_id=b._id"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 415
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 417
    .local v24, id:I
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 418
    .local v33, newOrigId:I
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v40, updateValues:Landroid/content/ContentValues;
    const-string v3, "orig_id"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v3, "favorites"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v40

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    add-int/lit8 v11, v11, 0x1

    .line 424
    goto :goto_1

    .line 425
    .end local v24           #id:I
    .end local v33           #newOrigId:I
    .end local v40           #updateValues:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 429
    if-eqz v12, :cond_2

    .line 430
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 426
    :catch_1
    move-exception v15

    .line 427
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 429
    if-eqz v12, :cond_3

    .line 430
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 429
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v3

    if-eqz v12, :cond_4

    .line 430
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 439
    .end local v43           #workspaceId:Ljava/lang/Integer;
    :pswitch_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 440
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 442
    const-string v3, "favorites"

    const/4 v4, 0x0

    const-string v5, "workspace_id = 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 444
    const-string v3, "orig_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 445
    .local v35, origIdIndex:I
    const-string v3, "intent"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 446
    .local v26, intentIndex:I
    const-string v3, "title"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 447
    .local v39, titleIndex:I
    const-string v3, "iconType"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 448
    .local v23, iconTypeIndex:I
    const-string v3, "icon"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 449
    .local v20, iconIndex:I
    const-string v3, "iconPackage"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 450
    .local v21, iconPackageIndex:I
    const-string v3, "iconResource"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 451
    .local v22, iconResourceIndex:I
    const-string v3, "props"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 452
    .local v36, propsIndex:I
    const-string v3, "uri"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 453
    .local v41, uriIndex:I
    const-string v3, "displayMode"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 454
    .local v13, displayModeIndex:I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 455
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .restart local v40       #updateValues:Landroid/content/ContentValues;
    const-string v3, "title"

    move/from16 v0, v39

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v3, "intent"

    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v3, "iconType"

    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v3, "iconPackage"

    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "iconResource"

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v3, "icon"

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 462
    const-string v3, "props"

    move/from16 v0, v36

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 463
    const-string v3, "uri"

    move/from16 v0, v41

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "displayMode"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move/from16 v0, v35

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 466
    .local v34, origId:Ljava/lang/String;
    if-eqz v34, :cond_5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 467
    const-string v3, "favorites"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v34, v5, v6

    move-object/from16 v0, v40

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 470
    goto/16 :goto_2

    .line 471
    .end local v34           #origId:Ljava/lang/String;
    .end local v40           #updateValues:Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 475
    if-eqz v12, :cond_7

    .line 476
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 472
    .end local v13           #displayModeIndex:I
    .end local v20           #iconIndex:I
    .end local v21           #iconPackageIndex:I
    .end local v22           #iconResourceIndex:I
    .end local v23           #iconTypeIndex:I
    .end local v26           #intentIndex:I
    .end local v35           #origIdIndex:I
    .end local v36           #propsIndex:I
    .end local v39           #titleIndex:I
    .end local v41           #uriIndex:I
    :catch_2
    move-exception v15

    .line 473
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 475
    if-eqz v12, :cond_8

    .line 476
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 475
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v3

    if-eqz v12, :cond_9

    .line 476
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 484
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    .line 488
    .local v30, manager:Landroid/content/pm/PackageManager;
    const-string v3, "favorites"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "intent"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "itemType"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 492
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 493
    .local v25, idIndex:I
    const-string v3, "intent"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 494
    .restart local v26       #intentIndex:I
    const-string v3, "itemType"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 495
    .local v28, itemTypeIndex:I
    const-string v3, "title"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 496
    .restart local v39       #titleIndex:I
    :cond_a
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v3

    if-eqz v3, :cond_c

    .line 498
    :try_start_7
    move/from16 v0, v28

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_a

    .line 503
    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 504
    .local v27, intentUri:Ljava/lang/String;
    if-eqz v27, :cond_a

    .line 505
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v37

    .line 506
    .local v37, shortcut:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 507
    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v32

    .line 508
    .local v32, name:Landroid/content/ComponentName;
    if-eqz v32, :cond_a

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 510
    .local v10, activityInfo:Landroid/content/pm/ActivityInfo;
    move/from16 v0, v39

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 511
    .local v38, title:Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/htc/launcher/LauncherModel;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v29

    .line 513
    .local v29, label:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Lcom/htc/launcher/AllAppsGridView;->translateAppTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 530
    if-eqz v38, :cond_b

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 531
    :cond_b
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 532
    .restart local v40       #updateValues:Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v3, "favorites"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v40

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 536
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 548
    .end local v10           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v27           #intentUri:Ljava/lang/String;
    .end local v29           #label:Ljava/lang/String;
    .end local v32           #name:Landroid/content/ComponentName;
    .end local v37           #shortcut:Landroid/content/Intent;
    .end local v38           #title:Ljava/lang/String;
    .end local v40           #updateValues:Landroid/content/ContentValues;
    :cond_c
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 552
    if-eqz v12, :cond_d

    .line 553
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 549
    .end local v25           #idIndex:I
    .end local v26           #intentIndex:I
    .end local v28           #itemTypeIndex:I
    .end local v30           #manager:Landroid/content/pm/PackageManager;
    .end local v39           #titleIndex:I
    :catch_3
    move-exception v15

    .line 550
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_9
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 552
    if-eqz v12, :cond_e

    .line 553
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 552
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_3
    move-exception v3

    if-eqz v12, :cond_f

    .line 553
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 560
    :pswitch_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 561
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 563
    const-string v3, "workspace_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v42

    .line 564
    .local v42, w_id:I
    const-string v3, "screen"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v31

    .line 566
    .local v31, mapping:[B
    const/16 v18, 0x0

    .local v18, i:I
    :goto_4
    move-object/from16 v0, v31

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_10

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update favorites set screen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v31, v18

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where screen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and workspace_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 566
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 569
    :cond_10
    const-string v3, "update favorites set screen = -screen where screen < 0"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4

    .line 574
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 571
    .end local v18           #i:I
    .end local v31           #mapping:[B
    .end local v42           #w_id:I
    :catch_4
    move-exception v15

    .line 572
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_b
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 574
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_4
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 579
    :pswitch_5
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 580
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v16

    .line 583
    .local v16, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 584
    .local v17, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .restart local v40       #updateValues:Landroid/content/ContentValues;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    const-string v14, ""

    .line 586
    .local v14, displayName:Ljava/lang/String;
    :goto_6
    const-string v3, "display_name"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v4, "widget_workspaces"

    const-string v5, "_id=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v6, v7

    move-object/from16 v0, v40

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_5

    .line 592
    .end local v14           #displayName:Ljava/lang/String;
    .end local v16           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v40           #updateValues:Landroid/content/ContentValues;
    :catch_5
    move-exception v15

    .line 593
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_d
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 595
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 585
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v16       #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v17       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v40       #updateValues:Landroid/content/ContentValues;
    :cond_11
    :try_start_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 591
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v40           #updateValues:Landroid/content/ContentValues;
    :cond_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_5

    .line 595
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v16           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    :catchall_5
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 600
    :pswitch_6
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 603
    const-string v3, "delete from widget_workspaces"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/LauncherProvider;->initWorkspaces(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 605
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    .line 609
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 606
    :catch_6
    move-exception v15

    .line 607
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_10
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 609
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_6
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 619
    :pswitch_7
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 620
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 622
    const-string v3, "drop table if exists favorites_backup"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    const-string v3, "create table favorites_backup as select * from favorites where workspace_id = 0 or workspace_id in (select _id from widget_workspaces where status<>2)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 627
    const-string v3, "drop table if exists widget_workspaces_backup"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    const-string v3, "create table widget_workspaces_backup as select * from widget_workspaces where status <> 2"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7

    .line 637
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 634
    :catch_7
    move-exception v15

    .line 635
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_12
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 637
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_7
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 642
    :pswitch_8
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 643
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 645
    const-string v3, "delete from widget_workspaces where status<>2"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    const-string v3, "insert into widget_workspaces select * from widget_workspaces_backup"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_8

    .line 653
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 650
    :catch_8
    move-exception v15

    .line 651
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_14
    const-string v3, "LauncherProvider"

    const-string v4, "unable to open database file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 653
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_8
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 543
    .restart local v25       #idIndex:I
    .restart local v26       #intentIndex:I
    .restart local v28       #itemTypeIndex:I
    .restart local v30       #manager:Landroid/content/pm/PackageManager;
    .restart local v39       #titleIndex:I
    :catch_9
    move-exception v3

    goto/16 :goto_3

    .line 541
    :catch_a
    move-exception v3

    goto/16 :goto_3

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "launcher_bar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, -0x1

    .line 229
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/LauncherProvider;->bulkInsertAdjustContainer(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/LauncherProvider;->bulkInsertOrig(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0
.end method

.method public bulkInsertAdjustContainer(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 13
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "launcher_bar"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 236
    const/4 v10, -0x1

    .line 286
    :goto_0
    return v10

    .line 239
    :cond_0
    new-instance v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/htc/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 241
    .local v0, args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v9, origId2IdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lcom/htc/launcher/LauncherProvider$1;

    invoke-direct {v10, p0}, Lcom/htc/launcher/LauncherProvider$1;-><init>(Lcom/htc/launcher/LauncherProvider;)V

    invoke-static {p2, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 255
    const/4 v2, 0x0

    .line 258
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v10, p0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 261
    array-length v8, p2

    .line 262
    .local v8, numValues:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 264
    aget-object v10, p2, v4

    const-string v11, "container"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, container:Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    .local v5, newContainer:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 268
    aget-object v10, p2, v4

    const-string v11, "container"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    iget-object v10, v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v12, p2, v4

    invoke-virtual {v2, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 272
    .local v6, newRowId:J
    aget-object v10, p2, v4

    const-string v11, "orig_id"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_2

    .line 274
    const/4 v10, 0x0

    .line 283
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 262
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 277
    .end local v1           #container:Ljava/lang/String;
    .end local v5           #newContainer:Ljava/lang/String;
    .end local v6           #newRowId:J
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 285
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 286
    array-length v10, p2

    goto :goto_0

    .line 279
    .end local v4           #i:I
    .end local v8           #numValues:I
    :catch_0
    move-exception v3

    .line 280
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v10, "LauncherProvider"

    const-string v11, "unable to open database file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    const/4 v10, 0x0

    .line 283
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method

.method public bulkInsertOrig(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "launcher_bar"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    const/4 v5, -0x1

    .line 318
    :goto_0
    return v5

    .line 296
    :cond_0
    new-instance v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/htc/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 298
    .local v0, args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    const/4 v1, 0x0

    .line 300
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 303
    array-length v4, p2

    .line 304
    .local v4, numValues:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 305
    iget-object v5, v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, p2, v3

    invoke-virtual {v1, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_1

    .line 314
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v5, v6

    goto :goto_0

    .line 304
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 317
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 318
    array-length v5, p2

    goto :goto_0

    .line 310
    .end local v3           #i:I
    .end local v4           #numValues:I
    :catch_0
    move-exception v2

    .line 311
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v5, "LauncherProvider"

    const-string v7, "unable to open database file"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v5, v6

    goto :goto_0

    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, -0x1

    .line 325
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "launcher_bar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v2

    .line 346
    :cond_0
    :goto_0
    return v7

    .line 329
    :cond_1
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 330
    .local v1, nCode:I
    if-eq v1, v2, :cond_2

    .line 331
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/LauncherProvider;->specialAction(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 334
    :cond_2
    new-instance v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v6, p1, p2, p3}, Lcom/htc/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 337
    .local v6, args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 338
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v0, v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v8, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 339
    .local v7, count:I
    if-lez v7, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v7           #count:I
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 345
    .local v9, e:Landroid/database/SQLException;
    const-string v0, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v2

    .line 346
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 151
    new-instance v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/htc/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    .local v0, args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "launcher_bar"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    .line 215
    :goto_0
    return-object v5

    .line 199
    :cond_0
    new-instance v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/htc/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 202
    .local v0, args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    :try_start_0
    iget-object v5, p0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 203
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 204
    .local v3, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-gtz v5, :cond_1

    move-object v5, v6

    .line 205
    goto :goto_0

    .line 208
    :cond_1
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, p1

    .line 211
    goto :goto_0

    .line 213
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #rowId:J
    :catch_0
    move-exception v2

    .line 214
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "LauncherProvider"

    const-string v7, "unable to open database file"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 215
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 164
    :try_start_0
    new-instance v10, Lcom/htc/launcher/LauncherProvider$SqlArguments;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v10, p1, v0, v1}, Lcom/htc/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    .local v10, args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 166
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v4, p0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 168
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CASE WHEN (title=\'\' OR title is NULL) THEN \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ELSE title END AS title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 171
    .local v13, strLauncherBarTitle:Ljava/lang/String;
    const/4 v12, 0x0

    .line 173
    .local v12, result:Landroid/database/Cursor;
    iget-object v4, v10, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v5, "launcher_bar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id, intent, cellX, itemType, iconType, iconPackage, iconResource, icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "favorites"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "workspace_id=0 AND container=-101"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v12, v4, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 187
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    .end local v12           #result:Landroid/database/Cursor;
    .end local v13           #strLauncherBarTitle:Ljava/lang/String;
    :goto_1
    return-object v12

    .line 178
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    .restart local v12       #result:Landroid/database/Cursor;
    .restart local v13       #strLauncherBarTitle:Ljava/lang/String;
    :cond_0
    iget-object v4, v10, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 179
    iget-object v5, v10, Lcom/htc/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v10, Lcom/htc/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    goto :goto_0

    .line 183
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    .end local v12           #result:Landroid/database/Cursor;
    .end local v13           #strLauncherBarTitle:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 184
    .local v11, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const/4 v12, 0x0

    goto :goto_1

    .line 185
    .end local v11           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v11

    .line 186
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "LauncherProvider"

    const-string v5, "unable to open database file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, -0x1

    .line 354
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "launcher_bar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v2

    .line 375
    :cond_0
    :goto_0
    return v7

    .line 358
    :cond_1
    sget-object v0, Lcom/htc/launcher/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 359
    .local v1, nCode:I
    if-eq v1, v2, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 360
    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/LauncherProvider;->specialAction(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 363
    :cond_2
    new-instance v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v6, p1, p3, p4}, Lcom/htc/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 366
    .local v6, args:Lcom/htc/launcher/LauncherProvider$SqlArguments;
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 367
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v0, v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v8, v0, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 368
    .local v7, count:I
    if-lez v7, :cond_0

    .line 369
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    .end local v7           #count:I
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 374
    .local v9, e:Landroid/database/SQLException;
    const-string v0, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v2

    .line 375
    goto :goto_0
.end method
