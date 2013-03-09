.class public Lcom/android/browser/provider/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/provider/BrowserProvider$ResultsCursor;,
        Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;,
        Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x18

.field private static final MAX_SUGGEST_LONG_LARGE:I = 0x9

.field private static final MAX_SUGGEST_LONG_SMALL:I = 0x6

.field private static final MAX_SUGGEST_SHORT_LARGE:I = 0x6

.field private static final MAX_SUGGEST_SHORT_SMALL:I = 0x3

.field private static final ORDER_BY:Ljava/lang/String; = "visits DESC, date DESC"

.field private static final PICASA_URL:Ljava/lang/String; = "http://picasaweb.google.com/m/viewer?source=androidclient"

.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final SUGGEST_COLUMN_ICON_1_ID:I = 0x6

.field private static final SUGGEST_COLUMN_ICON_2_ID:I = 0x7

.field private static final SUGGEST_COLUMN_INTENT_ACTION_ID:I = 0x1

.field private static final SUGGEST_COLUMN_INTENT_DATA_ID:I = 0x2

.field private static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:I = 0x9

.field private static final SUGGEST_COLUMN_QUERY_ID:I = 0x8

.field private static final SUGGEST_COLUMN_TEXT_1_ID:I = 0x3

.field private static final SUGGEST_COLUMN_TEXT_2_ID:I = 0x4

.field private static final SUGGEST_COLUMN_TEXT_2_URL_ID:I = 0x5

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String; = null

.field private static final SUGGEST_SELECTION:Ljava/lang/String; = "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

.field static final TABLE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BrowserProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field static final URI_MATCH_BOOKMARKS:I = 0x0

.field private static final URI_MATCH_BOOKMARKS_ID:I = 0xa

.field private static final URI_MATCH_BOOKMARKS_SUGGEST:I = 0x15

.field private static final URI_MATCH_SEARCHES:I = 0x1

.field private static final URI_MATCH_SEARCHES_ID:I = 0xb

.field private static final URI_MATCH_SUGGEST:I = 0x14

.field static final sDatabaseName:Ljava/lang/String; = "browser.db"


# instance fields
.field private SUGGEST_ARGS:[Ljava/lang/String;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mMaxSuggestionLongSize:I

.field private mMaxSuggestionShortSize:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

.field private mResultsCursorLock:Ljava/lang/Object;

.field private mSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "bookmarks"

    aput-object v1, v0, v4

    const-string v1, "searches"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "bookmark"

    aput-object v1, v0, v3

    const-string v1, "user_entered"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    .line 129
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 130
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    const-string v2, "search_suggest_query"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    const-string v0, "^(http://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 836
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursorLock:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/browser/provider/BrowserProvider;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/provider/BrowserProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/browser/provider/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 13
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "bookmarksOnly"

    .prologue
    .line 898
    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, ""

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 935
    :goto_0
    return-object v0

    .line 901
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 902
    .local v10, like:Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 904
    :cond_2
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 905
    .local v4, myArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v10, v4, v0

    .line 906
    move-object v3, p1

    .line 919
    .local v3, suggestSelection:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "visits DESC, date DESC"

    iget v8, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 923
    .local v9, c:Landroid/database/Cursor;
    if-nez p3, :cond_3

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 924
    :cond_3
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, p0, v9, v1, v2}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 908
    .end local v3           #suggestSelection:Ljava/lang/String;
    .end local v4           #myArgs:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 909
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 910
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 911
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 913
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v10, v0, v1

    .line 914
    iget-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 915
    .restart local v4       #myArgs:[Ljava/lang/String;
    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    .restart local v3       #suggestSelection:Ljava/lang/String;
    goto/16 :goto_1

    .line 927
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_5
    if-eqz v4, :cond_6

    array-length v0, v4

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 929
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v12

    .line 930
    .local v12, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v12, :cond_6

    invoke-interface {v12}, Lcom/android/browser/search/SearchEngine;->supportsSuggestions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 931
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v12, v0, v1}, Lcom/android/browser/search/SearchEngine;->getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 932
    .local v11, sc:Landroid/database/Cursor;
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p0, v9, v11, v1}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 935
    .end local v11           #sc:Landroid/database/Cursor;
    .end local v12           #searchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_6
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-direct {v0, p0, v9, v1, v2}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private fixPicasaBookmark()V
    .locals 6

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 430
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT _id FROM bookmarks WHERE bookmark = 1 AND url = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "http://picasaweb.google.com/m/viewer?source=androidclient"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 433
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO bookmarks (title, url, visits, date, created, bookmark) VALUES(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0133

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "http://picasaweb.google.com/m/viewer?source=androidclient"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', 0, 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 1);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    if-eqz v0, :cond_1

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_1
    return-void

    .line 442
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getBookmarksSuggestions(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "constraint"

    .prologue
    .line 1145
    const-string v0, "content://browser/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1146
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "visits DESC, date DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "cr"

    .prologue
    .line 184
    const-string v7, "android-google"

    .line 185
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 186
    .local v6, legacyClientIdCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 190
    .local v8, searchClientIdCursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'search_client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 192
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 204
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_1
    if-eqz v8, :cond_2

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_2
    :goto_1
    return-object v7

    .line 195
    :cond_3
    :try_start_1
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ms-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 204
    if-eqz v6, :cond_4

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_4
    if-eqz v8, :cond_2

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_5
    if-eqz v8, :cond_6

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "srcString"

    .prologue
    .line 215
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 218
    .local v5, lastCharLoc:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/browser/provider/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, client_id:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 221
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 222
    .local v0, c:C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_0

    .line 223
    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 224
    move v5, v2

    .line 226
    move v3, v2

    .local v3, j:I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 227
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 228
    .local v4, k:C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_2

    .line 229
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, propertyKeyValue:Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 231
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 236
    move v2, v3

    .line 220
    .end local v3           #j:I
    .end local v4           #k:C
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .restart local v3       #j:I
    .restart local v4       #k:C
    .restart local v6       #propertyKeyValue:Ljava/lang/String;
    :cond_1
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 226
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 242
    .end local v0           #c:C
    .end local v3           #j:I
    .end local v4           #k:C
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_4

    .line 244
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p1, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 246
    :cond_4
    return-object v7
.end method

.method private static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1135
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1140
    .end local p0
    .local v0, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 1136
    .end local v0           #m:Ljava/util/regex/Matcher;
    .restart local p0
    :cond_1
    sget-object v1, Lcom/android/browser/provider/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1137
    .restart local v0       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1138
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1016
    iget-object v3, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 1018
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 1019
    .local v13, match:I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_0

    const/16 v3, 0x14

    if-ne v13, v3, :cond_1

    .line 1020
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown URL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1024
    :cond_1
    const/16 v3, 0xa

    if-ne v13, v3, :cond_7

    const/4 v12, 0x1

    .line 1025
    .local v12, isBookmarkTable:Z
    :goto_0
    const/4 v11, 0x0

    .line 1027
    .local v11, id:Ljava/lang/String;
    if-nez v12, :cond_2

    const/16 v3, 0xb

    if-ne v13, v3, :cond_4

    .line 1028
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    .local v14, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1030
    const-string v3, "( "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v3, " ) AND "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #id:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1035
    .restart local v11       #id:Ljava/lang/String;
    const-string v3, "_id = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1040
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1043
    .local v2, cr:Landroid/content/ContentResolver;
    if-eqz v12, :cond_6

    .line 1044
    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bookmark"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1047
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1048
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1050
    iget-object v3, p0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1053
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1056
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_6
    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v4, v13, 0xa

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1057
    .local v8, count:I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1058
    return v8

    .line 1024
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v8           #count:I
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #isBookmarkTable:Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 941
    sget-object v1, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 942
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 959
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 944
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 956
    :goto_0
    return-object v1

    .line 947
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 950
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 953
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 956
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 942
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v8, 0x0

    .line 965
    const/4 v1, 0x0

    .line 966
    .local v1, isBookmarkTable:Z
    iget-object v6, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 968
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 969
    .local v2, match:I
    const/4 v5, 0x0

    .line 970
    .local v5, uri:Landroid/net/Uri;
    packed-switch v2, :pswitch_data_0

    .line 995
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 973
    :pswitch_0
    sget-object v6, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 975
    .local v3, rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_0

    .line 976
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 979
    :cond_0
    const/4 v1, 0x1

    .line 998
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 999
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 985
    .end local v3           #rowID:J
    :pswitch_1
    sget-object v6, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 987
    .restart local v3       #rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_1

    .line 988
    sget-object v6, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 1001
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1006
    if-eqz v1, :cond_3

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1009
    iget-object v6, p0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1011
    :cond_3
    return-object v5

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 393
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 394
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move v2, v3

    .line 397
    .local v2, xlargeScreenSize:Z
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 401
    .local v1, isPortrait:Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 402
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 403
    iput v7, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionShortSize:I

    .line 408
    :goto_2
    new-instance v4, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {v4, v0}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 409
    new-instance v4, Landroid/app/backup/BackupManager;

    invoke-direct {v4, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 424
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 425
    return v3

    .end local v1           #isPortrait:Z
    .end local v2           #xlargeScreenSize:Z
    :cond_0
    move v2, v4

    .line 394
    goto :goto_0

    .restart local v2       #xlargeScreenSize:Z
    :cond_1
    move v1, v4

    .line 397
    goto :goto_1

    .line 405
    .restart local v1       #isPortrait:Z
    :cond_2
    iput v7, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 406
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionShortSize:I

    goto :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 857
    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 858
    .local v12, match:I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_0

    .line 859
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown URL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    :cond_0
    iget-object v3, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 864
    const/16 v2, 0x14

    if-ne v12, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    if-eqz v2, :cond_1

    .line 865
    iget-object v13, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    .line 866
    .local v13, results:Landroid/database/Cursor;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    .line 867
    monitor-exit v3

    .line 892
    .end local v13           #results:Landroid/database/Cursor;
    :goto_0
    return-object v13

    .line 869
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    const/16 v2, 0x14

    if-eq v12, v2, :cond_2

    const/16 v2, 0x15

    if-ne v12, v2, :cond_4

    .line 873
    :cond_2
    const/16 v2, 0x15

    if-ne v12, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider;->doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    .line 869
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 873
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 876
    :cond_4
    const/4 v4, 0x0

    .line 877
    .local v4, projection:[Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_5

    .line 878
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 879
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    move-object/from16 v0, p2

    array-length v2, v0

    const-string v3, "_id AS _id"

    aput-object v3, v4, v2

    .line 883
    :cond_5
    const/4 v14, 0x0

    .line 884
    .local v14, whereClause:Ljava/lang/String;
    const/16 v2, 0xa

    if-eq v12, v2, :cond_6

    const/16 v2, 0xb

    if-ne v12, v2, :cond_7

    .line 885
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 888
    :cond_7
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v12, 0xa

    aget-object v3, v3, v5

    move-object/from16 v0, p3

    invoke-static {v14, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 891
    .local v11, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v11, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v13, v11

    .line 892
    goto/16 :goto_0
.end method

.method public setQueryResults(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    if-nez p1, :cond_0

    .line 846
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    .line 850
    :goto_0
    monitor-exit v1

    .line 851
    return-void

    .line 848
    :cond_0
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    invoke-direct {v0, p1}, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    goto :goto_0

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1066
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 1067
    .local v13, match:I
    const/4 v4, -0x1

    if-eq v13, v4, :cond_0

    const/16 v4, 0x14

    if-ne v13, v4, :cond_1

    .line 1068
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown URL"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1071
    :cond_1
    const/16 v4, 0xa

    if-eq v13, v4, :cond_2

    const/16 v4, 0xb

    if-ne v13, v4, :cond_4

    .line 1072
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .local v15, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1074
    const-string v4, "( "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const-string v4, " ) AND "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1079
    .local v12, id:Ljava/lang/String;
    const-string v4, "_id = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1084
    .end local v12           #id:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1089
    .local v3, cr:Landroid/content/ContentResolver;
    const/16 v4, 0xa

    if-eq v13, v4, :cond_5

    if-nez v13, :cond_7

    .line 1090
    :cond_5
    const/4 v9, 0x0

    .line 1094
    .local v9, changingBookmarks:Z
    const-string v4, "bookmark"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1095
    const/4 v9, 0x1

    .line 1113
    :cond_6
    :goto_0
    if-eqz v9, :cond_7

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1118
    .end local v9           #changingBookmarks:Z
    :cond_7
    sget-object v4, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v13, 0xa

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1119
    .local v14, ret:I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1120
    return v14

    .line 1096
    .end local v14           #ret:I
    .restart local v9       #changingBookmarks:Z
    :cond_8
    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_9
    const-string v4, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1102
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "bookmark"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1106
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1107
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v9, 0x1

    .line 1109
    :cond_a
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1107
    :cond_b
    const/4 v9, 0x0

    goto :goto_1
.end method
