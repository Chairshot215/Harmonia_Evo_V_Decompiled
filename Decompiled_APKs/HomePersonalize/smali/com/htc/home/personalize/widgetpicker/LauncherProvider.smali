.class public Lcom/htc/home/personalize/widgetpicker/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;,
        Lcom/htc/home/personalize/widgetpicker/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.settings"

.field private static final CODE_SPECIAL_ADJUST_UNSAVED_ITEM_ORIG_ID:I = 0x2

.field private static final CODE_SPECIAL_BACKUP_ALL_ITEMS:I = 0x3

.field private static final CODE_SPECIAL_INCREASE_PAGE:I = 0x1

.field private static final CODE_SPECIAL_INIT_WORKSPACES:I = 0x7

.field private static final CODE_SPECIAL_SCENE_NAME_LOCALE_CHANGE:I = 0x6

.field private static final CODE_SPECIAL_UPDATE_REARRANGE_SCREEN_ID:I = 0x5

.field private static final CODE_SPECIAL_UPDATE_SHORTCUT_LABELS:I = 0x4

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x4

.field static final EXTRA_BIND_SOURCES:Ljava/lang/String; = "com.android.launcher.settings.bindsources"

.field static final EXTRA_BIND_TARGETS:Ljava/lang/String; = "com.android.launcher.settings.bindtargets"

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

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_WIDGET_ITEM_TYPES:Ljava/lang/String; = "widget_item_types"

.field static final TABLE_WIDGET_WORKSPACE:Ljava/lang/String; = "widget_workspaces"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 79
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_increase_page"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_adjust_insaved_item_orig_id"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_backup_all_items"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_update_shortcut_labels"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_update_screen_id"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_scene_name_locale_change"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.launcher.settings"

    const-string v2, "_init_workspaces"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    const-string v0, "content://com.htc.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 989
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .parameter "column"
    .parameter "values"

    .prologue
    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 981
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 982
    if-lez v0, :cond_0

    .line 983
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static initWorkspaces(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 0
    .parameter "db"
    .parameter "context"

    .prologue
    .line 1030
    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 488
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 492
    :cond_1
    return-void
.end method

.method private specialAction(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 33
    .parameter "code"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 272
    const/4 v9, 0x0

    .line 273
    .local v9, count:I
    const/4 v1, 0x0

    .line 274
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 275
    .local v10, cursor:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    .line 484
    :goto_0
    :pswitch_0
    return v9

    .line 277
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 280
    :try_start_0
    const-string v2, "update favorites set screen=screen+1"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 288
    :pswitch_2
    const-string v2, "workspace_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    .line 289
    .local v32, workspaceId:Ljava/lang/Integer;
    if-nez v32, :cond_0

    .line 290
    const-string v2, "LauncherProvider"

    const-string v3, "no workspace_id found in SPECIAL_ADJUST_UNSAVED_ITEM_ORIG_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 296
    :try_start_1
    const-string v2, "select b._id, a._id from favorites a, favorites b where a.workspace_id=? AND a.orig_id=b._id"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 299
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 301
    .local v21, id:I
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 302
    .local v24, newOrigId:I
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v29, updateValues:Landroid/content/ContentValues;
    const-string v2, "orig_id"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v2, "favorites"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v29

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    add-int/lit8 v9, v9, 0x1

    .line 308
    goto :goto_1

    .line 309
    .end local v21           #id:I
    .end local v24           #newOrigId:I
    .end local v29           #updateValues:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    if-eqz v10, :cond_3

    .line 312
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_2
    const/4 v10, 0x0

    .line 315
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 311
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_5

    .line 312
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_4
    const/4 v10, 0x0

    .line 315
    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 311
    throw v2

    .line 320
    .end local v32           #workspaceId:Ljava/lang/Integer;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 323
    :try_start_2
    const-string v2, "favorites"

    const/4 v3, 0x0

    const-string v4, "workspace_id = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 325
    const-string v2, "orig_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 326
    .local v26, origIdIndex:I
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 327
    .local v22, intentIndex:I
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 328
    .local v28, titleIndex:I
    const-string v2, "iconType"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 329
    .local v20, iconTypeIndex:I
    const-string v2, "icon"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 330
    .local v17, iconIndex:I
    const-string v2, "iconPackage"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 331
    .local v18, iconPackageIndex:I
    const-string v2, "iconResource"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 332
    .local v19, iconResourceIndex:I
    const-string v2, "props"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 333
    .local v27, propsIndex:I
    const-string v2, "uri"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 334
    .local v30, uriIndex:I
    const-string v2, "displayMode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 335
    .local v11, displayModeIndex:I
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 336
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .restart local v29       #updateValues:Landroid/content/ContentValues;
    const-string v2, "title"

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "intent"

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "iconType"

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "iconPackage"

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "iconResource"

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "icon"

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 343
    const-string v2, "props"

    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 344
    const-string v2, "uri"

    move/from16 v0, v30

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v2, "displayMode"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 347
    .local v25, origId:Ljava/lang/String;
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 348
    const-string v2, "favorites"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    move-object/from16 v0, v29

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 351
    goto/16 :goto_2

    .line 352
    .end local v25           #origId:Ljava/lang/String;
    .end local v29           #updateValues:Landroid/content/ContentValues;
    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    if-eqz v10, :cond_9

    .line 355
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_8
    const/4 v10, 0x0

    .line 358
    :cond_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 354
    .end local v11           #displayModeIndex:I
    .end local v17           #iconIndex:I
    .end local v18           #iconPackageIndex:I
    .end local v19           #iconResourceIndex:I
    .end local v20           #iconTypeIndex:I
    .end local v22           #intentIndex:I
    .end local v26           #origIdIndex:I
    .end local v27           #propsIndex:I
    .end local v28           #titleIndex:I
    .end local v30           #uriIndex:I
    :catchall_2
    move-exception v2

    if-eqz v10, :cond_b

    .line 355
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_a
    const/4 v10, 0x0

    .line 358
    :cond_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 354
    throw v2

    .line 436
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 439
    const-string v2, "workspace_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 440
    .local v31, w_id:I
    const-string v2, "screen"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v23

    .line 443
    .local v23, mapping:[B
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    :try_start_3
    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v15, v2, :cond_c

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update favorites set screen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v23, v15

    neg-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where screen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and workspace_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 446
    :cond_c
    const-string v2, "update favorites set screen = -screen where screen < 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 449
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 453
    .end local v15           #i:I
    .end local v23           #mapping:[B
    .end local v31           #w_id:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 457
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v13

    .line 458
    .local v13, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 459
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .restart local v29       #updateValues:Landroid/content/ContentValues;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    const-string v12, ""

    .line 461
    .local v12, displayName:Ljava/lang/String;
    :goto_5
    const-string v2, "display_name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v3, "widget_workspaces"

    const-string v4, "_id=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v6

    move-object/from16 v0, v29

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 468
    .end local v12           #displayName:Ljava/lang/String;
    .end local v13           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v29           #updateValues:Landroid/content/ContentValues;
    :catchall_4
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 460
    .restart local v13       #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v14       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v29       #updateValues:Landroid/content/ContentValues;
    :cond_d
    :try_start_5
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 466
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29           #updateValues:Landroid/content/ContentValues;
    :cond_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 468
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 472
    .end local v13           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 476
    :try_start_6
    const-string v2, "delete from widget_workspaces"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->initWorkspaces(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 478
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 480
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 482
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 480
    :catchall_5
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 159
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->bulkInsertAdjustContainer(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->bulkInsertOrig(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0
.end method

.method public bulkInsertAdjustContainer(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 166
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 167
    .local v0, args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v8, origId2IdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$1;

    invoke-direct {v9, p0}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$1;-><init>(Lcom/htc/home/personalize/widgetpicker/LauncherProvider;)V

    invoke-static {p2, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 180
    iget-object v9, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 181
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    :try_start_0
    array-length v7, p2

    .line 184
    .local v7, numValues:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 186
    aget-object v9, p2, v3

    const-string v10, "container"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, container:Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 188
    .local v4, newContainer:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 190
    aget-object v9, p2, v3

    const-string v10, "container"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v9, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v11, p2, v3

    invoke-virtual {v2, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 194
    .local v5, newRowId:J
    aget-object v9, p2, v3

    const-string v10, "orig_id"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gez v9, :cond_1

    const/4 v9, 0x0

    .line 199
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 203
    .end local v1           #container:Ljava/lang/String;
    .end local v4           #newContainer:Ljava/lang/String;
    .end local v5           #newRowId:J
    :goto_1
    return v9

    .line 184
    .restart local v1       #container:Ljava/lang/String;
    .restart local v4       #newContainer:Ljava/lang/String;
    .restart local v5       #newRowId:J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v1           #container:Ljava/lang/String;
    .end local v4           #newContainer:Ljava/lang/String;
    .end local v5           #newRowId:J
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 202
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 203
    array-length v9, p2

    goto :goto_1

    .line 199
    .end local v3           #i:I
    .end local v7           #numValues:I
    :catchall_0
    move-exception v9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method

.method public bulkInsertOrig(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 207
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 209
    .local v0, args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 210
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 212
    :try_start_0
    array-length v3, p2

    .line 213
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 214
    iget-object v4, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 218
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    :goto_1
    return v4

    .line 213
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 221
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 222
    array-length v4, p2

    goto :goto_1

    .line 218
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, -0x1

    .line 229
    sget-object v2, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 230
    .local v1, code:I
    if-eq v1, v0, :cond_1

    .line 231
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->specialAction(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 244
    :cond_0
    :goto_0
    return v7

    .line 234
    :cond_1
    new-instance v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;

    invoke-direct {v6, p1, p2, p3}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 236
    .local v6, args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 238
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v8, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 239
    .local v7, count:I
    if-lez v7, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sendNotify(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v7           #count:I
    :catch_0
    move-exception v9

    .line 243
    .local v9, e:Landroid/database/SQLException;
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v0

    .line 244
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 114
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    .local v0, args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 145
    .local v0, args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 146
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 147
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 154
    :goto_0
    return-object v4

    .line 151
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 154
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 109
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 127
    :try_start_0
    new-instance v8, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    .local v8, args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 129
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 132
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 133
    .local v10, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v10, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    .end local v10           #result:Landroid/database/Cursor;
    :goto_0
    return-object v10

    .line 136
    :catch_0
    move-exception v9

    .line 137
    .local v9, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, -0x1

    .line 251
    sget-object v2, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 252
    .local v1, code:I
    if-eq v1, v0, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->specialAction(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 266
    :cond_0
    :goto_0
    return v7

    .line 256
    :cond_1
    new-instance v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;

    invoke-direct {v6, p1, p3, p4}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 258
    .local v6, args:Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 260
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v8, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 261
    .local v7, count:I
    if-lez v7, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->sendNotify(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v7           #count:I
    :catch_0
    move-exception v9

    .line 265
    .local v9, e:Landroid/database/SQLException;
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v0

    .line 266
    goto :goto_0
.end method
