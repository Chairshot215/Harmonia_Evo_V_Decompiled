.class public Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;
.super Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;,
        Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;,
        Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;,
        Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;
    }
.end annotation


# static fields
.field private static final CLICKLOG_QUERY_COLUMNS:[Ljava/lang/String;

.field private static final GROUP_BY:Ljava/lang/String;

.field private static final HAS_HISTORY_QUERY:Ljava/lang/String;

.field private static final LAST_HIT_TIME_EXPR:Ljava/lang/String;

.field private static final PREFER_LATEST_PREFIX:Ljava/lang/String;

.field private static final PREFIX_RESTRICTION:Ljava/lang/String;

.field private static final SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

.field private static final SHORTCUT_QUERY_COLUMNS:[Ljava/lang/String;

.field private static final SOURCE_RANKING_SQL:Ljava/lang/String;

.field private static final TABLES:Ljava/lang/String;


# instance fields
.field private mAllShortcutsQuery:Ljava/lang/String;

.field private final mAppVersionCode:I

.field private mEmptyQueryShortcutQuery:Ljava/lang/String;

.field private final mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

.field private final mResourceFixer:Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;

.field private mShortcutQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->HAS_HISTORY_QUERY:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->buildSourceRankingSql()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->SOURCE_RANKING_SQL:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicklog INNER JOIN shortcuts ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->TABLES:Ljava/lang/String;

    .line 136
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v3, v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_text_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_text_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_text_2_url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_icon_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_icon_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v2, v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_extra_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_shortcut_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_spinner_while_refreshing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_log_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v2, v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->SHORTCUT_QUERY_COLUMNS:[Ljava/lang/String;

    .line 158
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v2, v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "suggest_last_access_hint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->CLICKLOG_QUERY_COLUMNS:[Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->PREFIX_RESTRICTION:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->LAST_HIT_TIME_EXPR:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->GROUP_BY:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->LAST_HIT_TIME_EXPR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->LAST_HIT_TIME_EXPR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->PREFER_LATEST_PREFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Clock;Landroid/database/DataSetObservable;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;ILcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;)V
    .locals 9
    .parameter "context"
    .parameter "config"
    .parameter "refresher"
    .parameter "uiThread"
    .parameter "logExecutor"
    .parameter "name"
    .parameter "clock"
    .parameter "changeObservable"
    .parameter "sources"
    .parameter "historyRepo"
    .parameter "appVersionCode"
    .parameter "migrateClicks"
    .parameter "resourceFixer"

    .prologue
    .line 120
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/googlequicksearchbox/Clock;Landroid/database/DataSetObservable;)V

    .line 121
    new-instance v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    const/16 v4, 0x23

    move-object v2, p1

    move-object v3, p6

    move-object v5, p2

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    .line 123
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->buildShortcutQueries()V

    .line 125
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mAppVersionCode:I

    .line 126
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mResourceFixer:Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->hasHistory(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Ljava/lang/String;Ljava/util/Collection;ZJ)Lcom/google/android/googlequicksearchbox/ShortcutList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZJ)Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getSourceScores()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mResourceFixer:Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;

    return-object v0
.end method

.method private buildShortcutQueries()V
    .locals 20

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?2 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 181
    .local v17, cutOffTime_expr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v2, v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, ageRestriction:Ljava/lang/String;
    const/4 v6, 0x0

    .line 185
    .local v6, having:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUM(("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v2, v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") / 1000)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 188
    .local v18, ordering_expr:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->SHORTCUT_QUERY_COLUMNS:[Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->CLICKLOG_QUERY_COLUMNS:[Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, columns:[Ljava/lang/String;
    move-object/from16 v4, v16

    .line 191
    .local v4, where:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->PREFER_LATEST_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 192
    .local v19, preferLatest:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, orderBy:Ljava/lang/String;
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->TABLES:Ljava/lang/String;

    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->GROUP_BY:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mEmptyQueryShortcutQuery:Ljava/lang/String;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->PREFIX_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->PREFER_LATEST_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->TABLES:Ljava/lang/String;

    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->GROUP_BY:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mShortcutQuery:Ljava/lang/String;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    iget-object v2, v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= (?1 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->TABLES:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v3

    move-object v11, v4

    invoke-static/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mAllShortcutsQuery:Ljava/lang/String;

    .line 208
    return-void
.end method

.method private static buildShortcutQueryParams(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 4
    .parameter "query"
    .parameter "now"

    .prologue
    .line 558
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static buildSourceRankingSql()Ljava/lang/String;
    .locals 10

    .prologue
    .line 215
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->name()Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, orderingExpr:Ljava/lang/String;
    const-string v9, "sourcetotals"

    .line 217
    .local v9, tables:Ljava/lang/String;
    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->COLUMNS:[Ljava/lang/String;

    .line 218
    .local v2, columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= $1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 220
    .local v4, groupBy:Ljava/lang/String;
    const/4 v5, 0x0

    .line 221
    .local v5, having:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, orderBy:Ljava/lang/String;
    const/4 v7, 0x0

    .line 223
    .local v7, limit:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "sourcetotals"

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "component"

    .prologue
    .line 751
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "arrays"

    .prologue
    .line 248
    const/4 v4, 0x0

    .line 249
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 250
    .local v1, array:[Ljava/lang/String;
    array-length v7, v1

    add-int/2addr v4, v7

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v1           #array:[Ljava/lang/String;
    :cond_0
    new-array v6, v4, [Ljava/lang/String;

    .line 253
    .local v6, result:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 254
    .local v5, offset:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 255
    .restart local v1       #array:[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    array-length v7, v1

    add-int/2addr v5, v7

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v1           #array:[Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method public static create(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/googlequicksearchbox/Clock;Landroid/database/DataSetObservable;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;ILcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;)Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;
    .locals 14
    .parameter "context"
    .parameter "config"
    .parameter "refresher"
    .parameter "uiThread"
    .parameter "logExecutor"
    .parameter "clock"
    .parameter "changeObservable"
    .parameter "sources"
    .parameter "historyRepo"
    .parameter "appVersionCode"
    .parameter "migrateClicks"

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    const-string v6, "qsb-log.db"

    new-instance v13, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;

    invoke-direct {v13, p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Clock;Landroid/database/DataSetObservable;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;ILcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;)V

    return-object v0
.end method

.method private expandFormatting(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 697
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 698
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    .line 699
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    .line 700
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIconUriString(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "source"
    .parameter "drawableId"

    .prologue
    const/4 v1, 0x0

    .line 756
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-object v1

    .line 760
    :cond_1
    const-string v2, "android.resource"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "file"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, p2

    .line 763
    goto :goto_0

    .line 765
    :cond_3
    invoke-interface {p1, p2}, Lcom/google/android/googlequicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 766
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZJ)Lcom/google/android/googlequicksearchbox/ShortcutList;
    .locals 13
    .parameter "query"
    .parameter
    .parameter "includeNav"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;ZJ)",
            "Lcom/google/android/googlequicksearchbox/ShortcutList;"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, allowedSources:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v12, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mEmptyQueryShortcutQuery:Ljava/lang/String;

    .line 380
    .local v12, sql:Ljava/lang/String;
    :goto_0
    move-wide/from16 v0, p4

    invoke-static {p1, v0, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->buildShortcutQueryParams(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object v10

    .line 382
    .local v10, params:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 383
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 385
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 387
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 388
    new-instance v2, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getUiThread()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v2

    .line 379
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #params:[Ljava/lang/String;
    .end local v12           #sql:Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mShortcutQuery:Ljava/lang/String;

    goto :goto_0

    .line 392
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #params:[Ljava/lang/String;
    .restart local v12       #sql:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;

    invoke-static {p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->createNameToSourcesMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v4

    move-object v3, p0

    move/from16 v5, p3

    move-object v6, p1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Ljava/util/Map;ZLjava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->build(I)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v11

    check-cast v11, Lcom/google/android/googlequicksearchbox/ShortcutList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .local v11, shortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v11

    goto :goto_1

    .end local v11           #shortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private getSourceScores()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getMinClicksForSourceRanking()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getSourceScores(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private hasHistory(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .parameter "db"

    .prologue
    .line 363
    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->HAS_HISTORY_QUERY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 366
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 368
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    .line 366
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private makeIntentKey(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 7
    .parameter "suggestion"

    .prologue
    .line 711
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, intentData:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, intentAction:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, intentComponent:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, intentQuery:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v4

    .line 717
    .local v4, source:Lcom/google/android/googlequicksearchbox/Source;
    const/4 v5, 0x0

    .line 718
    .local v5, sourceName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 719
    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v5

    .line 723
    :goto_0
    invoke-static {v5, v2, v0, v1, v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->makeIntentKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 721
    :cond_0
    const-string v5, "web"

    goto :goto_0
.end method

.method static final makeIntentKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "sourceName"
    .parameter "intentData"
    .parameter "intentAction"
    .parameter "intentComponent"
    .parameter "intentQuery"

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, key:Ljava/lang/StringBuilder;
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    if-eqz p1, :cond_0

    .line 732
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_0
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    if-eqz p2, :cond_1

    .line 736
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_1
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    if-eqz p3, :cond_2

    .line 740
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_2
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    if-eqz p4, :cond_3

    .line 744
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeShortcutRow(Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/content/ContentValues;
    .locals 20
    .parameter "suggestion"

    .prologue
    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isShortcuttable()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 624
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, intentAction:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v9

    .line 626
    .local v9, intentComponent:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v10

    .line 627
    .local v10, intentData:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v13

    .line 628
    .local v13, intentQuery:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v11

    .line 630
    .local v11, intentExtraData:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v14

    .line 633
    .local v14, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v14, :cond_3

    .line 634
    invoke-interface {v14}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v15

    .line 635
    .local v15, sourceName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getIconUriString(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, icon1Uri:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getIconUriString(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, icon2Uri:Ljava/lang/String;
    invoke-interface {v14}, Lcom/google/android/googlequicksearchbox/Source;->getVersionCode()I

    move-result v16

    .line 645
    .local v16, versionCode:I
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->makeIntentKey(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v12

    .line 647
    .local v12, intentKey:Ljava/lang/String;
    const/4 v5, 0x0

    .line 648
    .local v5, extrasJson:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v4

    .line 649
    .local v4, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    if-eqz v4, :cond_0

    .line 653
    :try_start_0
    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->toJsonString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 659
    :cond_0
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 660
    .local v2, cv:Landroid/content/ContentValues;
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->expandFormatting(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->expandFormatting(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSpinnerWhileRefreshing()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 675
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_1
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-direct/range {p0 .. p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->needsHtmlFormatting(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 680
    sget-object v17, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v17

    const-string v18, "html"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_2
    return-object v2

    .line 639
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .end local v5           #extrasJson:Ljava/lang/String;
    .end local v6           #icon1Uri:Ljava/lang/String;
    .end local v7           #icon2Uri:Ljava/lang/String;
    .end local v12           #intentKey:Ljava/lang/String;
    .end local v15           #sourceName:Ljava/lang/String;
    .end local v16           #versionCode:I
    :cond_3
    const-string v15, "web"

    .line 640
    .restart local v15       #sourceName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v6

    .line 641
    .restart local v6       #icon1Uri:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v7

    .line 642
    .restart local v7       #icon2Uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mAppVersionCode:I

    move/from16 v16, v0

    .restart local v16       #versionCode:I
    goto/16 :goto_0

    .line 654
    .restart local v4       #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .restart local v5       #extrasJson:Ljava/lang/String;
    .restart local v12       #intentKey:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 655
    .local v3, e:Lorg/json/JSONException;
    const-string v17, "QSB.ShortcutRepositoryImplLog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not flatten extras to JSON from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private needsHtmlFormatting(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 692
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private runQueryAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery",
            "<TA;>;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, query:Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;,"Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery<TA;>;"
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<TA;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method private runTransactionAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V
    .locals 2
    .parameter "transaction"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$1;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$5;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$5;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    .line 301
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->close()V

    .line 312
    return-void
.end method

.method public deleteRepository()V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->deleteDatabase()V

    .line 307
    return-void
.end method

.method getExplainForQuery(Ljava/lang/String;Ljava/util/Collection;J)Landroid/database/Cursor;
    .locals 6
    .parameter "query"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;J)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, allowedSources:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mEmptyQueryShortcutQuery:Ljava/lang/String;

    .line 407
    .local v2, sql:Ljava/lang/String;
    :goto_0
    invoke-static {p1, p3, p4}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->buildShortcutQueryParams(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, params:[Ljava/lang/String;
    const-string v3, "QSB.ShortcutRepositoryImplLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sql: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 410
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXPLAIN QUERY PLAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 406
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #params:[Ljava/lang/String;
    .end local v2           #sql:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mShortcutQuery:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getOpenHelper()Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    return-object v0
.end method

.method public getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 9
    .parameter "query"
    .parameter
    .parameter "includeNav"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;Z",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/ShortcutList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, allowedSources:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/googlequicksearchbox/Source;>;"
    .local p4, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/ShortcutList;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 318
    .local v5, now:J
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Ljava/lang/String;Ljava/util/Collection;ZJLcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public getShortcutsTableCount()I
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 345
    const-string v1, "shortcuts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "COUNT(*)"

    aput-object v4, v2, v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 347
    .local v10, sql:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 348
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 350
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 351
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 352
    const/4 v0, -0x1

    .line 356
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 356
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method getSourceScores(I)Ljava/util/Map;
    .locals 9
    .parameter "minClicks"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 569
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->SOURCE_RANKING_SQL:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 572
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 573
    .local v4, sources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->ordinal()I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, name:Ljava/lang/String;
    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SourceStats;->ordinal()I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 576
    .local v0, clicks:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 580
    .end local v0           #clicks:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #sources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v4       #sources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method public getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$7;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$7;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runQueryAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 340
    return-void
.end method

.method public hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$3;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$3;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runQueryAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 271
    return-void
.end method

.method refreshShortcut(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 4
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 416
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "source"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "shortcutId"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 421
    .local v1, whereArgs:[Ljava/lang/String;
    if-nez p3, :cond_2

    .line 422
    const/4 v0, 0x0

    .line 427
    .local v0, shortcut:Landroid/content/ContentValues;
    :goto_0
    new-instance v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    .line 441
    return-void

    .line 424
    .end local v0           #shortcut:Landroid/content/ContentValues;
    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->makeShortcutRow(Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/content/ContentValues;

    move-result-object v0

    .restart local v0       #shortcut:Landroid/content/ContentValues;
    goto :goto_0
.end method

.method public removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 2
    .parameter "suggestion"

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isShortcuttable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->makeIntentKey(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, intentKey:Ljava/lang/String;
    new-instance v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$4;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    goto :goto_0
.end method

.method protected reportClickAtTime(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;J)V
    .locals 5
    .parameter "suggestion"
    .parameter "userQuery"
    .parameter "now"

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->makeShortcutRow(Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/content/ContentValues;

    move-result-object v2

    .line 775
    .local v2, shortcut:Landroid/content/ContentValues;
    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, intentKey:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 779
    .local v0, click:Landroid/content/ContentValues;
    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 782
    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    new-instance v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    .line 794
    return-void
.end method

.method public updateShortcut(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 0
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 330
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->refreshShortcut(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 331
    return-void
.end method
