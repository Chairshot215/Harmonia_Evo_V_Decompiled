.class Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbOpenHelper.java"


# static fields
.field static final CLICKLOG_HIT_TIME_INDEX:Ljava/lang/String;

.field private static final CLICKLOG_QUERY_COLUMNS:[Ljava/lang/String;

.field static final CLICKLOG_QUERY_INDEX:Ljava/lang/String;

.field private static final GENIE_NAV_SUGGEST_LOGTYPE:Ljava/lang/String;

.field static final SHORTCUT_ID_INDEX:Ljava/lang/String;

.field private static final SHORTCUT_QUERY_COLUMNS_V32:[Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mHistoryRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

.field private final mMigrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;

.field private mOldVersion:I

.field private mPath:Ljava/lang/String;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shortcuts_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->SHORTCUT_ID_INDEX:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicklog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_QUERY_INDEX:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicklog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_HIT_TIME_INDEX:Ljava/lang/String;

    .line 296
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->SHORTCUT_QUERY_COLUMNS_V32:[Ljava/lang/String;

    .line 326
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->GENIE_NAV_SUGGEST_LOGTYPE:Ljava/lang/String;

    .line 536
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "version"
    .parameter "config"
    .parameter "sources"
    .parameter "historyRepo"
    .parameter "clickMigrator"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 72
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 73
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 74
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mHistoryRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    .line 75
    iput-object p7, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mMigrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    .line 77
    return-void
.end method

.method private convertShortcut(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/content/ContentValues;
    .locals 10
    .parameter "cursor"
    .parameter "db"

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0xa

    const/4 v5, 0x0

    .line 378
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, sourceName:Ljava/lang/String;
    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, intentAction:Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, logType:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    .line 456
    :goto_0
    return-object v0

    .line 387
    :cond_0
    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->insertLocalHistory(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v5

    .line 390
    goto :goto_0

    .line 393
    :cond_1
    const-string v6, "com.google.android.googlequicksearchbox/.google.GoogleSearch"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->GENIE_NAV_SUGGEST_LOGTYPE:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 395
    const-string v6, "QSB.DbOpenHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring genie row, logType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 396
    goto :goto_0

    .line 399
    :cond_2
    const-string v6, "com.android.browser/.BookmarkSearch"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 400
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, intentData:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->isUrlLikeByBrowserHeuristics(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->insertLocalHistory(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v5

    .line 405
    goto :goto_0

    .line 409
    .end local v2           #intentData:Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->GENIE_NAV_SUGGEST_LOGTYPE:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 413
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "web"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f020022

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_1
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget v6, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    const/16 v7, 0x1e

    if-ne v6, v7, :cond_5

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->setV30ComponentAndIntentKey(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object v0, v5

    .line 445
    goto/16 :goto_0

    .line 416
    :cond_4
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v6, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 450
    :cond_5
    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_6
    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    iget v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    const/16 v7, 0x20

    if-ge v5, v7, :cond_7

    const-string v5, ""

    :goto_2
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x11

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private static copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 3
    .parameter "in"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 343
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 344
    .local v0, len:I
    new-array v1, v0, [Ljava/lang/String;

    .line 345
    .local v1, ret:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return-object v1
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE shortcuts ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL COLLATE UNICODE PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE clicklog ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL COLLATE UNICODE REFERENCES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE sourcetotals ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL COLLATE UNICODE PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private createTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->SHORTCUT_ID_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_QUERY_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_HIT_TIME_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER clicklog_insert AFTER INSERT ON clicklog BEGIN DELETE FROM clicklog WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NEW."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourcetotals"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourcetotals"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GROUP BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE (SELECT COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") = 0;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER shortcuts_delete AFTER DELETE ON shortcuts BEGIN DELETE FROM clicklog WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = OLD."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER shortcuts_update_intent_key AFTER UPDATE ON shortcuts WHEN NEW."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != OLD."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = NEW."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = OLD."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private dropRenamedTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 647
    const-string v0, "DROP TABLE IF EXISTS shortcuts_old"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 648
    const-string v0, "DROP TABLE IF EXISTS clicklog_old"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    const-string v0, "DROP TABLE IF EXISTS sourcetotals_old"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 657
    const-string v0, "DROP TABLE IF EXISTS shortcuts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 658
    const-string v0, "DROP TABLE IF EXISTS clicklog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 659
    const-string v0, "DROP TABLE IF EXISTS sourcetotals"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method private dropTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 669
    const-string v0, "DROP TRIGGER IF EXISTS clicklog_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 670
    const-string v0, "DROP TRIGGER IF EXISTS shortcuts_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 671
    const-string v0, "DROP TRIGGER IF EXISTS shortcuts_update_intent_key"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP INDEX IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_HIT_TIME_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP INDEX IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_QUERY_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP INDEX IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->SHORTCUT_ID_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private getClickLogContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 10
    .parameter "cursor"

    .prologue
    .line 575
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 576
    .local v1, cv:Landroid/content/ContentValues;
    sget-object v7, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    sget-object v7, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, oldIntentKey:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 629
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_0
    return-object v1

    .line 587
    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_0
    const-string v7, "#"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, components:[Ljava/lang/String;
    iget v7, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    const/16 v8, 0x1e

    if-ne v7, v8, :cond_1

    .line 589
    array-length v7, v0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    .line 591
    const/4 v1, 0x0

    goto :goto_0

    .line 593
    :cond_1
    array-length v7, v0

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    .line 595
    const/4 v1, 0x0

    goto :goto_0

    .line 597
    :cond_2
    const/4 v7, 0x0

    aget-object v6, v0, v7

    .line 598
    .local v6, sourceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 600
    const/4 v1, 0x0

    goto :goto_0

    .line 605
    :cond_3
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v7, v6}, Lcom/google/android/googlequicksearchbox/Sources;->getSourceIfExists(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v5

    .line 606
    .local v5, source:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v5, :cond_4

    const-string v7, "com.google.android.googlequicksearchbox/.google.GoogleSearch"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 608
    const/4 v1, 0x0

    goto :goto_0

    .line 612
    :cond_4
    if-nez v5, :cond_5

    .line 613
    const-string v6, "web"

    .line 614
    const-string v2, ""

    .line 621
    .local v2, intentComponent:Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget v7, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    const/16 v8, 0x1e

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    const/4 v8, 0x2

    aget-object v8, v0, v8

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-static {v6, v7, v8, v2, v9}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->makeIntentKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, newIntentKey:Ljava/lang/String;
    :goto_2
    sget-object v7, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    .end local v2           #intentComponent:Ljava/lang/String;
    .end local v3           #newIntentKey:Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #intentComponent:Ljava/lang/String;
    goto :goto_1

    :cond_6
    move-object v3, v4

    .line 623
    goto :goto_2
.end method

.method private getShortcutQueryColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iget v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 331
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->SHORTCUT_QUERY_COLUMNS_V32:[Ljava/lang/String;

    const/16 v1, 0xf

    invoke-static {v0, v2, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 333
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->SHORTCUT_QUERY_COLUMNS_V32:[Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v2, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_1
    iget v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 335
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->SHORTCUT_QUERY_COLUMNS_V32:[Ljava/lang/String;

    goto :goto_0

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertLocalHistory(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15
    .parameter "cursor"
    .parameter "db"

    .prologue
    .line 460
    const/4 v1, 0x0

    const-string v2, "clicklog_old"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "intent_key = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "hit_time DESC"

    const-string v8, "1"

    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 464
    .local v12, query:Ljava/lang/String;
    const/4 v13, 0x0

    .line 466
    .local v13, queryCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 467
    .local v11, intentKey:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 468
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 469
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 470
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 472
    .local v9, hitTime:J
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mHistoryRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9, v10}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->insertLocalHistory(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v9           #hitTime:J
    :cond_0
    if-eqz v13, :cond_1

    .line 479
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_1
    return-void

    .line 474
    .end local v11           #intentKey:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 475
    .local v14, rte:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "QSB.DbOpenHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error populating the local history repository: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    .end local v14           #rte:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_2

    .line 479
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private populateClickLogTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 543
    const/4 v0, 0x0

    const-string v1, "clicklog_old"

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->CLICKLOG_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 547
    .local v8, clickLogQuery:Ljava/lang/String;
    const/4 v9, 0x0

    .line 549
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 550
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    invoke-direct {p0, v9}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getClickLogContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 552
    .local v10, cv:Landroid/content/ContentValues;
    if-eqz v10, :cond_0

    .line 554
    :try_start_1
    const-string v0, "clicklog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 555
    :catch_0
    move-exception v12

    .line 556
    .local v12, sqce:Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_2
    const-string v0, "QSB.DbOpenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constrant failed while inserting row at : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 564
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #sqce:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v11

    .line 565
    .local v11, rte:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v0, "QSB.DbOpenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error populating the shortcuts table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    .end local v11           #rte:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    .line 569
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 568
    :cond_2
    if-eqz v9, :cond_3

    .line 569
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_3
    return-void
.end method

.method private populateShortcutsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 350
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getShortcutQueryColumns()[Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, queryCols:[Ljava/lang/String;
    const-string v1, "shortcuts_old"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, query:Ljava/lang/String;
    const/4 v8, 0x0

    .line 358
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 359
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-direct {p0, v8, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->convertShortcut(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/content/ContentValues;

    move-result-object v9

    .line 361
    .local v9, cv:Landroid/content/ContentValues;
    if-eqz v9, :cond_0

    .line 362
    const-string v0, "shortcuts"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v9           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 368
    .local v11, rte:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v0, "QSB.DbOpenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error populating the shortcuts table: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    .end local v11           #rte:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 372
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 371
    :cond_2
    if-eqz v8, :cond_3

    .line 372
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_3
    return-void
.end method

.method private populateSourceStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO sourcetotals SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GROUP BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->dropRenamedTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 686
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 687
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->dropTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 689
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 690
    return-void
.end method

.method private renameTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 638
    const-string v0, "ALTER TABLE shortcuts RENAME TO shortcuts_old"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    const-string v0, "ALTER TABLE clicklog RENAME TO clicklog_old"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 640
    const-string v0, "ALTER TABLE sourcetotals RENAME TO sourcetotals_old"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method private setV30ComponentAndIntentKey(Landroid/database/Cursor;Landroid/content/ContentValues;)Z
    .locals 11
    .parameter "cursor"
    .parameter "cv"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 496
    .local v6, sourceName:Ljava/lang/String;
    const/16 v9, 0xf

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, logType:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v9, v6}, Lcom/google/android/googlequicksearchbox/Sources;->getSourceIfExists(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v5

    .line 499
    .local v5, source:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v5, :cond_1

    const-string v9, "com.google.android.googlequicksearchbox/.google.GoogleSearch"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v7

    .line 505
    :cond_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, oldIntentKey:Ljava/lang/String;
    const-string v9, "#"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, components:[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 515
    if-nez v5, :cond_2

    .line 516
    const-string v6, "web"

    .line 517
    const-string v1, ""

    .line 523
    .local v1, intentComponent:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    .line 528
    sget-object v7, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    aget-object v7, v0, v8

    const/4 v9, 0x2

    aget-object v9, v0, v9

    const/4 v10, 0x3

    aget-object v10, v0, v10

    invoke-static {v6, v7, v9, v1, v10}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->makeIntentKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, newIntentKey:Ljava/lang/String;
    sget-object v7, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 533
    goto :goto_0

    .line 519
    .end local v1           #intentComponent:Ljava/lang/String;
    .end local v3           #newIntentKey:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #intentComponent:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public deleteDatabase()V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->close()V

    .line 143
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "QSB.DbOpenHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->createTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mPath:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v5, 0x22

    const/16 v4, 0x21

    .line 81
    const/16 v1, 0x1e

    if-ge p2, v1, :cond_1

    .line 82
    const-string v1, "QSB.DbOpenHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported attempt to upgrade from old version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". All old click data and shortcuts will be deleted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v1, "QSB.DbOpenHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database, old-version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    .line 95
    :try_start_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    if-gt v1, v5, :cond_2

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mMigrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mMigrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;->migrateClickLogData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    :cond_2
    iget v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    if-ge v1, v4, :cond_3

    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->dropTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->renameTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->populateShortcutsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->populateClickLogTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->populateSourceStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->createTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->dropRenamedTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, rte:Ljava/lang/RuntimeException;
    const-string v1, "QSB.DbOpenHelper"

    const-string v2, "Error executing upgrade, recreating DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 122
    .end local v0           #rte:Ljava/lang/RuntimeException;
    :cond_3
    :try_start_1
    iget v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    if-ne v1, v4, :cond_4

    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->dropTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->createTriggersAndIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 126
    :cond_4
    iget v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    if-eq v1, v5, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
