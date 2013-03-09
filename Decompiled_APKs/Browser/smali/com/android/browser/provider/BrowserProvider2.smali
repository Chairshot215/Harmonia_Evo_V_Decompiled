.class public Lcom/android/browser/provider/BrowserProvider2;
.super Lcom/android/browser/provider/SQLiteContentProvider;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;,
        Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;,
        Lcom/android/browser/provider/BrowserProvider2$OmniboxSuggestions;,
        Lcom/android/browser/provider/BrowserProvider2$Thumbnails;
    }
.end annotation


# static fields
.field static final ACCOUNTS:I = 0x1b58

.field static final ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BOOKMARKS:I = 0x3e8

.field static final BOOKMARKS_DEFAULT_FOLDER_ID:I = 0x3ed

.field static final BOOKMARKS_FOLDER:I = 0x3ea

.field static final BOOKMARKS_FOLDER_ID:I = 0x3eb

.field static final BOOKMARKS_ID:I = 0x3e9

.field static final BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BOOKMARKS_SUGGESTIONS:I = 0x3ec

.field static final COMBINED:I = 0x1770

.field static final COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final COMBINED_ID:I = 0x1771

.field static final DEFAULT_BOOKMARKS_SORT_ORDER:Ljava/lang/String; = "folder DESC, position ASC, _id ASC"

.field static final DEFAULT_BOOKMARKS_SORT_ORDER_SYNC:Ljava/lang/String; = "position ASC, _id ASC"

.field static final DEFAULT_SORT_ACCOUNTS:Ljava/lang/String; = "account_name IS NOT NULL DESC, account_name ASC"

.field static final DEFAULT_SORT_HISTORY:Ljava/lang/String; = "date DESC"

.field public static final FIXED_ID_ROOT:J = 0x1L

.field static final FORMAT_COMBINED_JOIN_SUBQUERY_JOIN_IMAGES:Ljava/lang/String; = "history LEFT OUTER JOIN (%s) bookmarks ON history.url = bookmarks.url LEFT OUTER JOIN images ON history.url = images.url_key"

.field static final HISTORY:I = 0x7d0

.field static final HISTORY_ID:I = 0x7d1

.field static final HISTORY_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final IMAGES:I = 0x1388

.field static final IMAGES_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGE_PRUNE:Ljava/lang/String; = "url_key NOT IN (SELECT url FROM bookmarks WHERE url IS NOT NULL AND deleted == 0) AND url_key NOT IN (SELECT url FROM history WHERE url IS NOT NULL)"

.field static final LEGACY:I = 0x2328

.field public static final LEGACY_AUTHORITY:Ljava/lang/String; = "browser"

.field static final LEGACY_AUTHORITY_URI:Landroid/net/Uri; = null

.field static final LEGACY_ID:I = 0x2329

.field static final OMNIBOX_SUGGESTIONS:I = 0x14

.field static final OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAM_ALLOW_EMPTY_ACCOUNTS:Ljava/lang/String; = "allowEmptyAccounts"

.field public static final PARAM_GROUP_BY:Ljava/lang/String; = "groupBy"

.field static final SEARCHES:I = 0xbb8

.field static final SEARCHES_ID:I = 0xbb9

.field static final SEARCHES_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SETTINGS:I = 0x1f40

.field static final SETTINGS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SQL_CREATE_VIEW_OMNIBOX_SUGGESTIONS:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS v_omnibox_suggestions  AS   SELECT _id, url, title, 1 AS bookmark, 0 AS visits, 0 AS date  FROM bookmarks   WHERE deleted = 0 AND folder = 0   UNION ALL   SELECT _id, url, title, 0 AS bookmark, visits, date   FROM history   WHERE url NOT IN (SELECT url FROM bookmarks    WHERE deleted = 0 AND folder = 0)   ORDER BY bookmark DESC, visits DESC, date DESC "

.field private static final SQL_WHERE_ACCOUNT_HAS_BOOKMARKS:Ljava/lang/String; = "0 < ( SELECT count(*) FROM bookmarks WHERE deleted = 0 AND folder = 0   AND (     v_accounts.account_name = bookmarks.account_name     OR (v_accounts.account_name IS NULL AND bookmarks.account_name IS NULL)   )   AND (     v_accounts.account_type = bookmarks.account_type     OR (v_accounts.account_type IS NULL AND bookmarks.account_type IS NULL)   ) )"

.field private static final SUGGEST_ORDER_BY:Ljava/lang/String; = "history.date DESC"

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String; = null

.field private static final SUGGEST_SELECTION:Ljava/lang/String; = "history.url LIKE ? OR history.url LIKE ? OR history.url LIKE ? OR history.url LIKE ? OR history.title LIKE ? OR bookmarks.title LIKE ?"

.field static final SYNCSTATE:I = 0xfa0

.field static final SYNCSTATE_ID:I = 0xfa1

.field static final SYNC_STATE_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TABLE_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field private static final TABLE_BOOKMARKS_JOIN_HISTORY:Ljava/lang/String; = "history LEFT OUTER JOIN bookmarks ON history.url = bookmarks.url"

.field static final TABLE_BOOKMARKS_JOIN_IMAGES:Ljava/lang/String; = "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

.field static final TABLE_HISTORY:Ljava/lang/String; = "history"

.field static final TABLE_HISTORY_JOIN_IMAGES:Ljava/lang/String; = "history LEFT OUTER JOIN images ON history.url = images.url_key"

.field static final TABLE_IMAGES:Ljava/lang/String; = "images"

.field static final TABLE_SEARCHES:Ljava/lang/String; = "searches"

.field static final TABLE_SETTINGS:Ljava/lang/String; = "settings"

.field static final TABLE_SNAPSHOTS:Ljava/lang/String; = "snapshots"

.field static final TABLE_SYNC_STATE:Ljava/lang/String; = "syncstate"

.field static final TABLE_THUMBNAILS:Ljava/lang/String; = "thumbnails"

.field static final THUMBNAILS:I = 0xa

.field static final THUMBNAILS_ID:I = 0xb

.field static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field static final VIEW_ACCOUNTS:Ljava/lang/String; = "v_accounts"

.field static final VIEW_OMNIBOX_SUGGESTIONS:Ljava/lang/String; = "v_omnibox_suggestions"

.field static final VIEW_SNAPSHOTS_COMBINED:Ljava/lang/String; = "v_snapshots_combined"

.field private static final ZERO_QUERY_SUGGEST_SELECTION:Ljava/lang/String; = "history.date != 0"


# instance fields
.field mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

.field mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

.field mSyncToNetwork:Z

.field mUpdateWidgets:Z

.field mWidgetObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xbb9

    const/16 v9, 0xbb8

    const/16 v8, 0x3ec

    .line 75
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "browser"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    .line 125
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "history"

    const-string v6, "_id"

    invoke-static {v5, v6}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "history"

    const-string v6, "url"

    invoke-static {v5, v6}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "title"

    invoke-static {v5}, Lcom/android/browser/provider/BrowserProvider2;->bookmarkOrHistoryColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "url"

    const v6, 0x7f02001c

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f02002c

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/browser/provider/BrowserProvider2;->bookmarkOrHistoryLiteral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "history"

    const-string v6, "date"

    invoke-static {v5, v6}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 190
    new-instance v3, Landroid/content/UriMatcher;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 193
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 194
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 197
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->SYNC_STATE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 198
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->IMAGES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 199
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 200
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap;

    .line 201
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->SEARCHES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 202
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/browser/provider/BrowserProvider2;->SETTINGS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 205
    sget-object v2, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 206
    .local v2, matcher:Landroid/content/UriMatcher;
    const-string v0, "com.android.browser"

    .line 207
    .local v0, authority:Ljava/lang/String;
    const-string v3, "com.android.browser"

    const-string v4, "accounts"

    const/16 v5, 0x1b58

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    const-string v3, "com.android.browser"

    const-string v4, "bookmarks"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    const-string v3, "com.android.browser"

    const-string v4, "bookmarks/#"

    const/16 v5, 0x3e9

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    const-string v3, "com.android.browser"

    const-string v4, "bookmarks/folder"

    const/16 v5, 0x3ea

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    const-string v3, "com.android.browser"

    const-string v4, "bookmarks/folder/#"

    const/16 v5, 0x3eb

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    const-string v3, "com.android.browser"

    const-string v4, "bookmarks/folder/id"

    const/16 v5, 0x3ed

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    const-string v3, "com.android.browser"

    const-string v4, "search_suggest_query"

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    const-string v3, "com.android.browser"

    const-string v4, "bookmarks/search_suggest_query"

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    const-string v3, "com.android.browser"

    const-string v4, "history"

    const/16 v5, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    const-string v3, "com.android.browser"

    const-string v4, "history/#"

    const/16 v5, 0x7d1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    const-string v3, "com.android.browser"

    const-string v4, "searches"

    invoke-virtual {v2, v3, v4, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    const-string v3, "com.android.browser"

    const-string v4, "searches/#"

    invoke-virtual {v2, v3, v4, v10}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    const-string v3, "com.android.browser"

    const-string v4, "syncstate"

    const/16 v5, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    const-string v3, "com.android.browser"

    const-string v4, "syncstate/#"

    const/16 v5, 0xfa1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    const-string v3, "com.android.browser"

    const-string v4, "images"

    const/16 v5, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    const-string v3, "com.android.browser"

    const-string v4, "combined"

    const/16 v5, 0x1770

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    const-string v3, "com.android.browser"

    const-string v4, "combined/#"

    const/16 v5, 0x1771

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    const-string v3, "com.android.browser"

    const-string v4, "settings"

    const/16 v5, 0x1f40

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    const-string v3, "com.android.browser"

    const-string v4, "thumbnails"

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    const-string v3, "com.android.browser"

    const-string v4, "thumbnails/#"

    const/16 v5, 0xb

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    const-string v3, "com.android.browser"

    const-string v4, "omnibox_suggestions"

    const/16 v5, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    const-string v3, "browser"

    const-string v4, "searches"

    invoke-virtual {v2, v3, v4, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    const-string v3, "browser"

    const-string v4, "searches/#"

    invoke-virtual {v2, v3, v4, v10}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    const-string v3, "browser"

    const-string v4, "bookmarks"

    const/16 v5, 0x2328

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    const-string v3, "browser"

    const-string v4, "bookmarks/#"

    const/16 v5, 0x2329

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    const-string v3, "browser"

    const-string v4, "search_suggest_query"

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    const-string v3, "browser"

    const-string v4, "bookmarks/search_suggest_query"

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 250
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "account_type"

    const-string v4, "account_type"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v3, "root_id"

    const-string v4, "root_id"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 256
    const-string v3, "_id"

    const-string v4, "bookmarks"

    const-string v5, "_id"

    invoke-static {v4, v5}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v3, "url"

    const-string v4, "url"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v3, "favicon"

    const-string v4, "favicon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v3, "thumbnail"

    const-string v4, "thumbnail"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "touch_icon"

    const-string v4, "touch_icon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v3, "folder"

    const-string v4, "folder"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v3, "parent"

    const-string v4, "parent"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v3, "position"

    const-string v4, "position"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v3, "insert_after"

    const-string v4, "insert_after"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v3, "deleted"

    const-string v4, "deleted"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v3, "account_type"

    const-string v4, "account_type"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v3, "sourceid"

    const-string v4, "sourceid"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v3, "version"

    const-string v4, "version"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v3, "created"

    const-string v4, "created"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v3, "modified"

    const-string v4, "modified"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v3, "dirty"

    const-string v4, "dirty"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v3, "sync1"

    const-string v4, "sync1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v3, "sync2"

    const-string v4, "sync2"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "sync3"

    const-string v4, "sync3"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v3, "sync4"

    const-string v4, "sync4"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v3, "sync5"

    const-string v4, "sync5"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v3, "parent_source"

    const-string v4, "(SELECT sourceid FROM bookmarks A WHERE A._id=bookmarks.parent) AS parent_source"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v3, "insert_after_source"

    const-string v4, "(SELECT sourceid FROM bookmarks A WHERE A._id=bookmarks.insert_after) AS insert_after_source"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v3, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v4, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 290
    sget-object v3, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v4, "position"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 295
    const-string v3, "_id"

    const-string v4, "history"

    const-string v5, "_id"

    invoke-static {v4, v5}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v3, "url"

    const-string v4, "url"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v3, "favicon"

    const-string v4, "favicon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v3, "thumbnail"

    const-string v4, "thumbnail"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v3, "touch_icon"

    const-string v4, "touch_icon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v3, "created"

    const-string v4, "created"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v3, "visits"

    const-string v4, "visits"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v3, "user_entered"

    const-string v4, "user_entered"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->SYNC_STATE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 308
    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v3, "account_type"

    const-string v4, "account_type"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v3, "data"

    const-string v4, "data"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->IMAGES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 315
    const-string v3, "url_key"

    const-string v4, "url_key"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v3, "favicon"

    const-string v4, "favicon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v3, "thumbnail"

    const-string v4, "thumbnail"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v3, "touch_icon"

    const-string v4, "touch_icon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 322
    const-string v3, "_id"

    const-string v4, "_id"

    invoke-static {v4}, Lcom/android/browser/provider/BrowserProvider2;->bookmarkOrHistoryColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v3, "title"

    const-string v4, "title"

    invoke-static {v4}, Lcom/android/browser/provider/BrowserProvider2;->bookmarkOrHistoryColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v3, "url"

    const-string v4, "history"

    const-string v5, "url"

    invoke-static {v4, v5}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v3, "created"

    const-string v4, "history"

    const-string v5, "created"

    invoke-static {v4, v5}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v3, "bookmark"

    const-string v4, "CASE WHEN bookmarks._id IS NOT NULL THEN 1 ELSE 0 END AS bookmark"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v3, "visits"

    const-string v4, "visits"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v3, "favicon"

    const-string v4, "favicon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v3, "thumbnail"

    const-string v4, "thumbnail"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v3, "touch_icon"

    const-string v4, "touch_icon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v3, "user_entered"

    const-string v4, "NULL AS user_entered"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap;

    .line 338
    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v3, "url"

    const-string v4, "url"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v3, "created"

    const-string v4, "created"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v3, "date"

    const-string v4, "NULL AS date"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v3, "bookmark"

    const-string v4, "1 AS bookmark"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v3, "visits"

    const-string v4, "0 AS visits"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v3, "favicon"

    const-string v4, "favicon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v3, "thumbnail"

    const-string v4, "thumbnail"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v3, "touch_icon"

    const-string v4, "touch_icon"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v3, "user_entered"

    const-string v4, "NULL AS user_entered"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->SEARCHES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 352
    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v3, "search"

    const-string v4, "search"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->SETTINGS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 358
    const-string v3, "key"

    const-string v4, "key"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v3, "value"

    const-string v4, "value"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/browser/provider/SQLiteContentProvider;-><init>()V

    .line 378
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mUpdateWidgets:Z

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mSyncToNetwork:Z

    .line 2077
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/provider/BrowserProvider2;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/browser/provider/BrowserProvider2;->insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static final bookmarkOrHistoryColumn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE WHEN bookmarks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NOT NULL THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bookmarks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE history."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final bookmarkOrHistoryLiteral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "column"
    .parameter "bookmarkValue"
    .parameter "historyValue"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE WHEN bookmarks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NOT NULL THEN \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" ELSE \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createCombinedQuery(Landroid/net/Uri;[Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;)[Ljava/lang/String;
    .locals 21
    .parameter "uri"
    .parameter "projection"
    .parameter "qb"

    .prologue
    .line 1149
    const/4 v12, 0x0

    .line 1150
    .local v12, args:[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1151
    .local v19, whereBuilder:Ljava/lang/StringBuilder;
    const-string v2, "deleted"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v2, " = 0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    .line 1155
    .local v20, withAccount:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v16, v20, v2

    check-cast v16, Ljava/lang/String;

    .line 1156
    .local v16, selection:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v20, v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v17, v2

    check-cast v17, [Ljava/lang/String;

    .line 1157
    .local v17, selectionArgs:[Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    if-eqz v17, :cond_0

    .line 1161
    move-object/from16 v0, v17

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    .line 1162
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v12, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1163
    const/4 v2, 0x0

    move-object/from16 v0, v17

    array-length v3, v0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v12, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1167
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, where:Ljava/lang/String;
    const-string v2, "bookmarks"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1170
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1172
    .local v18, subQuery:Ljava/lang/String;
    const-string v2, "history LEFT OUTER JOIN (%s) bookmarks ON history.url = bookmarks.url LEFT OUTER JOIN images ON history.url = images.url_key"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1173
    sget-object v2, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1174
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v5 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1177
    .local v14, historySubQuery:Ljava/lang/String;
    const-string v2, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1178
    sget-object v2, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND %s NOT IN (SELECT %s FROM %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "history"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1181
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1184
    .local v13, bookmarksSubQuery:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1187
    .local v15, query:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1188
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1189
    return-object v12
.end method

.method private doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1117
    aget-object v0, p2, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    const-string p1, "history.date != 0"

    .line 1119
    const/4 p2, 0x0

    .line 1140
    :goto_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "history LEFT OUTER JOIN bookmarks ON history.url = bookmarks.url"

    sget-object v2, Lcom/android/browser/provider/BrowserProvider2;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v7, "history.date DESC"

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1144
    .local v9, c:Landroid/database/Cursor;
    new-instance v0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;

    invoke-direct {v0, v9}, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0

    .line 1121
    .end local v9           #c:Landroid/database/Cursor;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1122
    .local v10, like:Ljava/lang/String;
    aget-object v0, p2, v2

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p2, v2

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    :cond_1
    aput-object v10, p2, v2

    .line 1136
    :goto_1
    const-string v0, "deleted=0 AND folder=0"

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1126
    :cond_2
    const/4 v0, 0x6

    new-array p2, v0, [Ljava/lang/String;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    .line 1128
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1129
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1130
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1132
    const/4 v0, 0x4

    aput-object v10, p2, v0

    .line 1133
    const/4 v0, 0x5

    aput-object v10, p2, v0

    .line 1134
    const-string p1, "history.url LIKE ? OR history.url LIKE ? OR history.url LIKE ? OR history.url LIKE ? OR history.title LIKE ? OR bookmarks.title LIKE ?"

    goto :goto_1
.end method

.method private filterSearchClient(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 1535
    const-string v2, "client="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1536
    .local v1, index:I
    if-lez v1, :cond_0

    const-string v2, ".google."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1537
    const/16 v2, 0x26

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1538
    .local v0, end:I
    if-lez v0, :cond_1

    .line 1539
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1546
    .end local v0           #end:I
    :cond_0
    :goto_0
    return-object p1

    .line 1543
    .restart local v0       #end:I
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private filterSearchClient([Ljava/lang/String;)V
    .locals 2
    .parameter "selectionArgs"

    .prologue
    .line 1524
    if-eqz p1, :cond_0

    .line 1525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1526
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1529
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private getAccountNameAndType(J)[Ljava/lang/String;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1483
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gtz v0, :cond_0

    .line 1498
    :goto_0
    return-object v3

    .line 1486
    :cond_0
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1487
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "account_name"

    aput-object v0, v2, v9

    const-string v0, "account_type"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/provider/BrowserProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1491
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1493
    .local v7, parentName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1494
    .local v8, parentType:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v3, v0

    const/4 v0, 0x1

    aput-object v8, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #parentName:Ljava/lang/String;
    .end local v8           #parentType:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private insertSearchesInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 12
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1553
    const-string v0, "search"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1554
    .local v11, search:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include the SEARCH field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_0
    const/4 v8, 0x0

    .line 1559
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "searches"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "search=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1561
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1563
    .local v9, id:J
    const-string v0, "searches"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1570
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #id:J
    :cond_1
    :goto_0
    return-wide v9

    .line 1567
    :cond_2
    :try_start_1
    const-string v0, "searches"

    const-string v1, "search"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 1570
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 12
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1578
    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1579
    .local v11, key:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include the KEY field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1582
    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    aput-object v11, v4, v1

    .line 1583
    .local v4, keyArray:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1585
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "settings"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "key"

    aput-object v3, v2, v0

    const-string v3, "key=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1587
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1588
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1589
    .local v9, id:J
    const-string v0, "settings"

    const-string v1, "key=?"

    invoke-virtual {p1, v0, p2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #id:J
    :cond_1
    :goto_0
    return-wide v9

    .line 1592
    :cond_2
    :try_start_1
    const-string v0, "settings"

    const-string v1, "value"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 1595
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isValidParent(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4
    .parameter "accountType"
    .parameter "accountName"
    .parameter "parentId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1514
    invoke-direct {p0, p3, p4}, Lcom/android/browser/provider/BrowserProvider2;->getAccountNameAndType(J)[Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, parent:[Ljava/lang/String;
    if-eqz v0, :cond_0

    aget-object v3, v0, v2

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1520
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method static final qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "table"
    .parameter "column"

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setParentValues(JLandroid/content/ContentValues;)Z
    .locals 4
    .parameter "parentId"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1503
    invoke-direct {p0, p1, p2}, Lcom/android/browser/provider/BrowserProvider2;->getAccountNameAndType(J)[Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, parent:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1509
    :goto_0
    return v1

    .line 1507
    :cond_0
    const-string v3, "account_name"

    aget-object v1, v0, v1

    invoke-virtual {p3, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v1, "account_type"

    aget-object v3, v0, v2

    invoke-virtual {p3, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1509
    goto :goto_0
.end method

.method private shouldUpdateImages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 16
    .parameter "db"
    .parameter "url"
    .parameter "values"

    .prologue
    .line 1749
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "favicon"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "thumbnail"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "touch_icon"

    aput-object v2, v3, v1

    .line 1754
    .local v3, projection:[Ljava/lang/String;
    const-string v2, "images"

    const-string v4, "url_key=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1756
    .local v12, cursor:Landroid/database/Cursor;
    const-string v1, "favicon"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 1757
    .local v13, nfavicon:[B
    const-string v1, "thumbnail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 1758
    .local v14, nthumb:[B
    const-string v1, "touch_icon"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 1759
    .local v15, ntouch:[B
    const/4 v9, 0x0

    .line 1760
    .local v9, cfavicon:[B
    const/4 v10, 0x0

    .line 1761
    .local v10, cthumb:[B
    const/4 v11, 0x0

    .line 1763
    .local v11, ctouch:[B
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    .line 1764
    if-nez v13, :cond_0

    if-nez v14, :cond_0

    if-eqz v15, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1787
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1789
    :goto_1
    return v1

    .line 1764
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1766
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1767
    if-eqz v13, :cond_3

    .line 1768
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1769
    invoke-static {v13, v9}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1770
    const/4 v1, 0x1

    .line 1787
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1773
    :cond_3
    if-eqz v14, :cond_4

    .line 1774
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1775
    invoke-static {v14, v10}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 1776
    const/4 v1, 0x1

    .line 1787
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1779
    :cond_4
    if-eqz v15, :cond_2

    .line 1780
    const/4 v1, 0x2

    :try_start_3
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 1781
    invoke-static {v15, v11}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1782
    const/4 v1, 0x1

    .line 1787
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1789
    const/4 v1, 0x0

    goto :goto_1

    .line 1787
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 1988
    const-string v5, "account_name"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, accountName:Ljava/lang/String;
    const-string v5, "account_type"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1991
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int v2, v5, v6

    .line 1992
    .local v2, partialUri:Z
    if-eqz v2, :cond_0

    .line 1994
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2000
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    .line 2001
    .local v4, validAccount:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 2002
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2006
    .local v3, selectionSb:Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2007
    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2011
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2013
    .end local v3           #selectionSb:Ljava/lang/StringBuilder;
    .end local p2
    :cond_2
    return-object p2

    .line 2000
    .end local v4           #validAccount:Z
    .restart local p2
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method deleteBookmarks(Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 5
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1195
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1196
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_0

    .line 1197
    const-string v2, "bookmarks"

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1202
    :goto_0
    return v2

    .line 1199
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1200
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1201
    const-string v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/browser/provider/BrowserProvider2;->updateBookmarksInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    goto :goto_0
.end method

.method public deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 22
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1209
    sget-object v7, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 1210
    .local v18, match:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v7}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1211
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    .line 1212
    .local v14, deleted:I
    sparse-switch v18, :sswitch_data_0

    .line 1319
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown delete URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1214
    :sswitch_0
    const-string v7, "bookmarks._id=?"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1216
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1222
    :sswitch_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v21

    .line 1223
    .local v21, withAccount:[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object p2, v21, v7

    .end local p2
    check-cast p2, Ljava/lang/String;

    .line 1224
    .restart local p2
    const/4 v7, 0x1

    aget-object v7, v21, v7

    check-cast v7, [Ljava/lang/String;

    move-object/from16 p3, v7

    check-cast p3, [Ljava/lang/String;

    .line 1225
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->deleteBookmarks(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v14

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()I

    .line 1227
    if-lez v14, :cond_0

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1322
    .end local v21           #withAccount:[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-lez v14, :cond_1

    .line 1323
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1324
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->shouldNotifyLegacy(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1325
    sget-object v7, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1328
    :cond_1
    return v14

    .line 1234
    :sswitch_2
    const-string v7, "history._id=?"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1235
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1240
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient([Ljava/lang/String;)V

    .line 1241
    const-string v7, "history"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()I

    goto :goto_0

    .line 1247
    :sswitch_4
    const-string v7, "searches._id=?"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1248
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1253
    :sswitch_5
    const-string v7, "searches"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1254
    goto :goto_0

    .line 1258
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1259
    goto :goto_0

    .line 1262
    :sswitch_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p2, :cond_2

    const-string v7, ""

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1265
    .local v19, selectionWithId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1266
    goto/16 :goto_0

    .line 1262
    .end local v19           #selectionWithId:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1269
    :sswitch_8
    const-string v7, "_id = CAST(? AS INTEGER)"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1271
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1276
    :sswitch_9
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "bookmark"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "url"

    aput-object v8, v6, v7

    .line 1278
    .local v6, projection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1279
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v4}, Lcom/android/browser/provider/BrowserProvider2;->createCombinedQuery(Landroid/net/Uri;[Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;)[Ljava/lang/String;

    move-result-object v12

    .line 1280
    .local v12, args:[Ljava/lang/String;
    if-nez p3, :cond_3

    .line 1281
    move-object/from16 p3, v12

    .line 1286
    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1288
    .local v13, c:Landroid/database/Cursor;
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1289
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1290
    .local v15, id:J
    const/4 v7, 0x1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/16 v17, 0x1

    .line 1291
    .local v17, isBookmark:Z
    :goto_4
    const/4 v7, 0x2

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1292
    .local v20, url:Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 1293
    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/browser/provider/BrowserProvider2;->deleteBookmarks(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v14, v7

    .line 1296
    const-string v7, "history"

    const-string v8, "url=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v20, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 1283
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    .end local v17           #isBookmark:Z
    .end local v20           #url:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 1290
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #id:J
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 1299
    .restart local v17       #isBookmark:Z
    .restart local v20       #url:Ljava/lang/String;
    :cond_5
    const-string v7, "history"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v14, v7

    goto :goto_3

    .line 1304
    .end local v15           #id:J
    .end local v17           #isBookmark:Z
    .end local v20           #url:Ljava/lang/String;
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1308
    .end local v4           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v6           #projection:[Ljava/lang/String;
    .end local v12           #args:[Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    :sswitch_a
    const-string v7, "_id = ?"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1310
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1315
    :sswitch_b
    const-string v7, "thumbnails"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1316
    goto/16 :goto_0

    .line 1212
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_0
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_2
        0xbb8 -> :sswitch_5
        0xbb9 -> :sswitch_4
        0xfa0 -> :sswitch_6
        0xfa1 -> :sswitch_7
        0x2328 -> :sswitch_9
        0x2329 -> :sswitch_8
    .end sparse-switch
.end method

.method extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "values"
    .parameter "url"

    .prologue
    .line 2018
    const/4 v0, 0x0

    .line 2020
    .local v0, imageValues:Landroid/content/ContentValues;
    const-string v1, "favicon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2021
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #imageValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2022
    .restart local v0       #imageValues:Landroid/content/ContentValues;
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2023
    const-string v1, "favicon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2027
    :cond_0
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2028
    if-nez v0, :cond_1

    .line 2029
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #imageValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2031
    .restart local v0       #imageValues:Landroid/content/ContentValues;
    :cond_1
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2032
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2036
    :cond_2
    const-string v1, "touch_icon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2037
    if-nez v0, :cond_3

    .line 2038
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #imageValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2040
    .restart local v0       #imageValues:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2041
    const-string v1, "touch_icon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2044
    :cond_4
    if-eqz v0, :cond_5

    .line 2045
    const-string v1, "url_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    :cond_5
    return-object v0
.end method

.method public getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 775
    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;-><init>(Lcom/android/browser/provider/BrowserProvider2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    monitor-exit p0

    return-object v0

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 841
    const-string v3, "acct_type"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, accountType:Ljava/lang/String;
    const-string v3, "acct_name"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, accountName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 844
    .local v2, hasAccounts:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0, v1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 846
    const-string v3, "account_type=? AND account_name=? "

    invoke-static {p2, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 848
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {p3, v3}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 850
    const/4 v2, 0x1

    .line 857
    :cond_0
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    return-object v3

    .line 852
    :cond_1
    const-string v3, "account_name IS NULL AND account_type IS NULL"

    invoke-static {p2, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 813
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 814
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 830
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 817
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    goto :goto_0

    .line 820
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 822
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/browser-history"

    goto :goto_0

    .line 824
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/browser-history"

    goto :goto_0

    .line 826
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 828
    :sswitch_5
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 814
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_3
        0xbb8 -> :sswitch_4
        0xbb9 -> :sswitch_5
        0x2328 -> :sswitch_0
        0x2329 -> :sswitch_1
    .end sparse-switch
.end method

.method getUrlCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "db"
    .parameter "table"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1793
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v1

    const-string v3, "url = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v1

    move-object v0, p1

    move-object v1, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1796
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1797
    .local v9, count:I
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1802
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v9

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 25
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1352
    sget-object v21, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 1353
    .local v15, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1354
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v11, -0x1

    .line 1355
    .local v11, id:J
    const/16 v21, 0x2328

    move/from16 v0, v21

    if-ne v15, v0, :cond_1

    .line 1357
    const-string v21, "bookmark"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1358
    .local v6, bookmark:Ljava/lang/Integer;
    const-string v21, "bookmark"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1359
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-nez v21, :cond_2

    .line 1360
    :cond_0
    const/16 v15, 0x7d0

    .line 1369
    .end local v6           #bookmark:Ljava/lang/Integer;
    :cond_1
    :goto_0
    sparse-switch v15, :sswitch_data_0

    .line 1467
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown insert URI "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1362
    .restart local v6       #bookmark:Ljava/lang/Integer;
    :cond_2
    const/16 v15, 0x3e8

    .line 1363
    const-string v21, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1364
    const-string v21, "visits"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1365
    const-string v21, "user_entered"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1366
    const-string v21, "folder"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1372
    .end local v6           #bookmark:Ljava/lang/Integer;
    :sswitch_0
    if-nez p3, :cond_5

    .line 1373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1374
    .local v16, now:J
    const-string v21, "created"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1375
    const-string v21, "modified"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1376
    const-string v21, "dirty"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    const-string v21, "account_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string v21, "account_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    :cond_3
    const/4 v9, 0x1

    .line 1380
    .local v9, hasAccounts:Z
    :goto_1
    const-string v21, "account_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1382
    .local v5, accountType:Ljava/lang/String;
    const-string v21, "account_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1384
    .local v4, accountName:Ljava/lang/String;
    const-string v21, "parent"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    .line 1385
    .local v10, hasParent:Z
    if-eqz v10, :cond_b

    if-eqz v9, :cond_b

    .line 1387
    const-string v21, "parent"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1388
    .local v18, parentId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->isValidParent(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v10

    .line 1396
    .end local v18           #parentId:J
    :cond_4
    :goto_2
    if-nez v10, :cond_5

    .line 1397
    const-string v21, "parent"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/browser/provider/BrowserProvider2;->queryDefaultFolderId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1403
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #accountType:Ljava/lang/String;
    .end local v9           #hasAccounts:Z
    .end local v10           #hasParent:Z
    .end local v16           #now:J
    :cond_5
    const-string v21, "position"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 1404
    const-string v21, "position"

    const-wide/high16 v22, -0x8000

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    :cond_6
    const-string v21, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1409
    .local v20, url:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v13

    .line 1410
    .local v13, imageValues:Landroid/content/ContentValues;
    const-string v21, "folder"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    .line 1411
    .local v14, isFolder:Ljava/lang/Boolean;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_8

    :cond_7
    if-eqz v13, :cond_8

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 1413
    const-string v21, "images"

    const-string v22, "url_key=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1415
    .local v7, count:I
    if-nez v7, :cond_8

    .line 1416
    const-string v21, "images"

    const-string v22, "favicon"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1420
    .end local v7           #count:I
    :cond_8
    const-string v21, "bookmarks"

    const-string v22, "dirty"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1471
    .end local v13           #imageValues:Landroid/content/ContentValues;
    .end local v14           #isFolder:Ljava/lang/Boolean;
    .end local v20           #url:Ljava/lang/String;
    :goto_3
    const-wide/16 v21, 0x0

    cmp-long v21, v11, v21

    if-ltz v21, :cond_e

    .line 1472
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1473
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->shouldNotifyLegacy(Landroid/net/Uri;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1474
    sget-object v21, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1476
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 1478
    :goto_4
    return-object v21

    .line 1378
    .restart local v16       #now:J
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1390
    .restart local v4       #accountName:Ljava/lang/String;
    .restart local v5       #accountType:Ljava/lang/String;
    .restart local v9       #hasAccounts:Z
    .restart local v10       #hasParent:Z
    :cond_b
    if-eqz v10, :cond_4

    if-nez v9, :cond_4

    .line 1391
    const-string v21, "parent"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1392
    .restart local v18       #parentId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->setParentValues(JLandroid/content/ContentValues;)Z

    move-result v10

    goto/16 :goto_2

    .line 1427
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #accountType:Ljava/lang/String;
    .end local v9           #hasAccounts:Z
    .end local v10           #hasParent:Z
    .end local v16           #now:J
    .end local v18           #parentId:J
    :sswitch_1
    const-string v21, "created"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 1428
    const-string v21, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1430
    :cond_c
    const-string v21, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1431
    .restart local v20       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1432
    const-string v21, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const-string v21, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v13

    .line 1437
    .restart local v13       #imageValues:Landroid/content/ContentValues;
    if-eqz v13, :cond_d

    .line 1438
    const-string v21, "images"

    const-string v22, "favicon"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1441
    :cond_d
    const-string v21, "history"

    const-string v22, "visits"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1442
    goto/16 :goto_3

    .line 1446
    .end local v13           #imageValues:Landroid/content/ContentValues;
    .end local v20           #url:Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/android/browser/provider/BrowserProvider2;->insertSearchesInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1447
    goto/16 :goto_3

    .line 1451
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1452
    goto/16 :goto_3

    .line 1456
    :sswitch_4
    const-wide/16 v11, 0x0

    .line 1457
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/android/browser/provider/BrowserProvider2;->insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    goto/16 :goto_3

    .line 1462
    :sswitch_5
    const-string v21, "thumbnails"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1463
    goto/16 :goto_3

    .line 1478
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 1369
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1f40 -> :sswitch_4
    .end sparse-switch
.end method

.method public isCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 785
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNullAccount(Ljava/lang/String;)Z
    .locals 2
    .parameter "account"

    .prologue
    const/4 v0, 0x1

    .line 834
    if-nez p1, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 835
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onEndTransaction(Z)V
    .locals 2
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v1, 0x0

    .line 799
    invoke-super {p0, p1}, Lcom/android/browser/provider/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 800
    iget-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mUpdateWidgets:Z

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    .line 806
    :goto_0
    iput-boolean v1, p0, Lcom/android/browser/provider/BrowserProvider2;->mUpdateWidgets:Z

    .line 808
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mSyncToNetwork:Z

    .line 809
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    goto :goto_0
.end method

.method pruneImages()I
    .locals 4

    .prologue
    .line 2051
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2052
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "images"

    const-string v2, "url_key NOT IN (SELECT url FROM bookmarks WHERE url IS NOT NULL AND deleted == 0) AND url_key NOT IN (SELECT url FROM history WHERE url IS NOT NULL)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 35
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 863
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 864
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v30

    .line 865
    .local v30, match:I
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 866
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 867
    .local v19, limit:Ljava/lang/String;
    const-string v5, "groupBy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 868
    .local v16, groupBy:Ljava/lang/String;
    sparse-switch v30, :sswitch_data_0

    .line 1106
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 870
    :sswitch_0
    const-string v5, "v_accounts"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 871
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 872
    const-string v5, "allowEmptyAccounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 873
    .local v22, allowEmpty:Ljava/lang/String;
    const-string v5, "false"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 874
    const-string v5, "0 < ( SELECT count(*) FROM bookmarks WHERE deleted = 0 AND folder = 0   AND (     v_accounts.account_name = bookmarks.account_name     OR (v_accounts.account_name IS NULL AND bookmarks.account_name IS NULL)   )   AND (     v_accounts.account_type = bookmarks.account_type     OR (v_accounts.account_type IS NULL AND bookmarks.account_type IS NULL)   ) )"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 877
    :cond_0
    if-nez p5, :cond_1

    .line 878
    const-string p5, "account_name IS NOT NULL DESC, account_name ASC"

    .line 1110
    .end local v22           #allowEmpty:Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v17, 0x0

    move-object v11, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1112
    .local v26, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-interface {v0, v5, v7}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1113
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v26           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v26

    .line 887
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_1
    const-string v5, "show_deleted"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 888
    const-string v5, "deleted=0"

    move-object/from16 v0, p3

    invoke-static {v5, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 892
    :cond_3
    const/16 v5, 0x3e9

    move/from16 v0, v30

    if-ne v0, v5, :cond_6

    .line 894
    const-string v5, "bookmarks._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 896
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 906
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v34

    .line 907
    .local v34, withAccount:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object p3, v34, v5

    .end local p3
    check-cast p3, Ljava/lang/String;

    .line 908
    .restart local p3
    const/4 v5, 0x1

    aget-object v5, v34, v5

    check-cast v5, [Ljava/lang/String;

    move-object/from16 p4, v5

    check-cast p4, [Ljava/lang/String;

    .line 909
    const/4 v5, 0x2

    aget-object v5, v34, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    .line 912
    .local v27, hasAccounts:Z
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 913
    if-eqz v27, :cond_7

    .line 914
    const-string p5, "position ASC, _id ASC"

    .line 920
    :cond_5
    :goto_3
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 921
    const-string v5, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    .end local v27           #hasAccounts:Z
    .end local v34           #withAccount:[Ljava/lang/Object;
    :cond_6
    const/16 v5, 0x3eb

    move/from16 v0, v30

    if-ne v0, v5, :cond_4

    .line 900
    const-string v5, "bookmarks.parent=?"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 902
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 916
    .restart local v27       #hasAccounts:Z
    .restart local v34       #withAccount:[Ljava/lang/Object;
    :cond_7
    const-string p5, "folder DESC, position ASC, _id ASC"

    goto :goto_3

    .line 927
    .end local v27           #hasAccounts:Z
    .end local v34           #withAccount:[Ljava/lang/Object;
    :sswitch_2
    const/16 v33, 0x0

    .line 928
    .local v33, useAccount:Z
    const-string v5, "acct_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 929
    .local v21, accountType:Ljava/lang/String;
    const-string v5, "acct_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 930
    .local v20, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 931
    const/16 v33, 0x1

    .line 934
    :cond_8
    const-string v5, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 938
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 939
    if-eqz v33, :cond_c

    .line 940
    const-string p5, "position ASC, _id ASC"

    .line 945
    :cond_9
    :goto_4
    if-nez v33, :cond_d

    .line 946
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 947
    const-string v6, "parent=? AND deleted=0"

    .line 948
    .local v6, where:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 949
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v23, v5

    .line 950
    .local v23, args:[Ljava/lang/String;
    if-eqz p4, :cond_a

    .line 951
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 953
    :cond_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 992
    .local v32, query:Ljava/lang/String;
    :cond_b
    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 993
    .restart local v26       #cursor:Landroid/database/Cursor;
    if-eqz v26, :cond_2

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-interface {v0, v5, v7}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 942
    .end local v6           #where:Ljava/lang/String;
    .end local v23           #args:[Ljava/lang/String;
    .end local v26           #cursor:Landroid/database/Cursor;
    .end local v32           #query:Ljava/lang/String;
    :cond_c
    const-string p5, "folder DESC, position ASC, _id ASC"

    goto :goto_4

    .line 955
    :cond_d
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 956
    const-string v6, "account_type=? AND account_name=? AND parent = (SELECT _id FROM bookmarks WHERE sync3=\'bookmark_bar\' AND account_type = ? AND account_name = ?) AND deleted=0"

    .line 964
    .restart local v6       #where:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 965
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 967
    .local v24, bookmarksBarQuery:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    aput-object v21, v23, v5

    const/4 v5, 0x1

    aput-object v20, v23, v5

    const/4 v5, 0x2

    aput-object v21, v23, v5

    const/4 v5, 0x3

    aput-object v20, v23, v5

    .line 969
    .restart local v23       #args:[Ljava/lang/String;
    if-eqz p4, :cond_e

    .line 970
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 973
    :cond_e
    const-string v6, "account_type=? AND account_name=? AND sync3=?"

    .line 975
    move-object/from16 v0, p3

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 976
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 977
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 980
    .local v31, otherBookmarksQuery:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v24, v5, v7

    const/4 v7, 0x1

    aput-object v31, v5, v7

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 984
    .restart local v32       #query:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v5, v7

    const/4 v7, 0x1

    aput-object v20, v5, v7

    const/4 v7, 0x2

    const-string v8, "other_bookmarks"

    aput-object v8, v5, v7

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 987
    if-eqz p4, :cond_b

    .line 988
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_5

    .line 1001
    .end local v6           #where:Ljava/lang/String;
    .end local v20           #accountName:Ljava/lang/String;
    .end local v21           #accountType:Ljava/lang/String;
    .end local v23           #args:[Ljava/lang/String;
    .end local v24           #bookmarksBarQuery:Ljava/lang/String;
    .end local v31           #otherBookmarksQuery:Ljava/lang/String;
    .end local v32           #query:Ljava/lang/String;
    .end local v33           #useAccount:Z
    :sswitch_3
    const-string v5, "acct_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1002
    .restart local v20       #accountName:Ljava/lang/String;
    const-string v5, "acct_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1003
    .restart local v21       #accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->queryDefaultFolderId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 1004
    .local v28, id:J
    new-instance v25, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1005
    .local v25, c:Landroid/database/MatrixCursor;
    invoke-virtual/range {v25 .. v25}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v26, v25

    .line 1006
    goto/16 :goto_1

    .line 1010
    .end local v20           #accountName:Ljava/lang/String;
    .end local v21           #accountType:Ljava/lang/String;
    .end local v25           #c:Landroid/database/MatrixCursor;
    .end local v28           #id:J
    :sswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    goto/16 :goto_1

    .line 1014
    :sswitch_5
    const-string v5, "history._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1015
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1020
    :sswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient([Ljava/lang/String;)V

    .line 1021
    if-nez p5, :cond_f

    .line 1022
    const-string p5, "date DESC"

    .line 1024
    :cond_f
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1025
    const-string v5, "history LEFT OUTER JOIN images ON history.url = images.url_key"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1030
    :sswitch_7
    const-string v5, "searches._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1031
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1036
    :sswitch_8
    const-string v5, "searches"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1037
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->SEARCHES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1042
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v8, v12

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v26

    goto/16 :goto_1

    .line 1046
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1047
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p3, :cond_10

    const-string v5, ""

    :goto_6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1050
    .local v10, selectionWithId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v8, v12

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v26

    goto/16 :goto_1

    .line 1047
    .end local v10           #selectionWithId:Ljava/lang/String;
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1054
    :sswitch_b
    const-string v5, "images"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1055
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->IMAGES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1061
    :sswitch_c
    const-string v5, "_id = CAST(? AS INTEGER)"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1063
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1069
    :sswitch_d
    const/16 v5, 0x2328

    move/from16 v0, v30

    if-eq v0, v5, :cond_11

    const/16 v5, 0x2329

    move/from16 v0, v30

    if-ne v0, v5, :cond_12

    :cond_11
    if-nez p2, :cond_12

    .line 1071
    sget-object p2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 1073
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/browser/provider/BrowserProvider2;->createCombinedQuery(Landroid/net/Uri;[Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;)[Ljava/lang/String;

    move-result-object v23

    .line 1074
    .restart local v23       #args:[Ljava/lang/String;
    if-nez p4, :cond_13

    .line 1075
    move-object/from16 p4, v23

    goto/16 :goto_0

    .line 1077
    :cond_13
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1079
    goto/16 :goto_0

    .line 1083
    .end local v23           #args:[Ljava/lang/String;
    :sswitch_e
    const-string v5, "settings"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1084
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->SETTINGS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1089
    :sswitch_f
    const-string v5, "_id = ?"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1091
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1096
    :sswitch_10
    const-string v5, "thumbnails"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :sswitch_11
    const-string v5, "v_omnibox_suggestions"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_10
        0xb -> :sswitch_f
        0x14 -> :sswitch_11
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_3
        0x7d0 -> :sswitch_6
        0x7d1 -> :sswitch_5
        0xbb8 -> :sswitch_8
        0xbb9 -> :sswitch_7
        0xfa0 -> :sswitch_9
        0xfa1 -> :sswitch_a
        0x1388 -> :sswitch_b
        0x1770 -> :sswitch_d
        0x1771 -> :sswitch_c
        0x1b58 -> :sswitch_0
        0x1f40 -> :sswitch_e
        0x2328 -> :sswitch_d
        0x2329 -> :sswitch_c
    .end sparse-switch
.end method

.method queryDefaultFolderId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1333
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1334
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "bookmarks"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "sync3 = ? AND account_type = ? AND account_name = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "bookmark_bar"

    aput-object v6, v4, v7

    aput-object p2, v4, v9

    const/4 v6, 0x2

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1340
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1347
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :goto_0
    return-wide v1

    .line 1344
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1347
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    const-wide/16 v1, 0x1

    goto :goto_0

    .line 1344
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method refreshWidgets()V
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mUpdateWidgets:Z

    .line 795
    return-void
.end method

.method public setWidgetObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "obs"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 791
    return-void
.end method

.method shouldNotifyLegacy(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 2056
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "history"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "searches"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2059
    :cond_0
    const/4 v0, 0x1

    .line 2061
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected syncToNetwork(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 2066
    const-string v0, "com.android.browser"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    iget-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mSyncToNetwork:Z

    .line 2074
    :goto_0
    return v0

    .line 2070
    :cond_0
    const-string v0, "browser"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2072
    const/4 v0, 0x1

    goto :goto_0

    .line 2074
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateBookmarksInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 36
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1811
    const/16 v18, 0x0

    .line 1812
    .local v18, count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1813
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "version"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string v6, "url"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-string v6, "title"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const-string v6, "folder"

    aput-object v6, v5, v4

    const/4 v4, 0x5

    const-string v6, "account_name"

    aput-object v6, v5, v4

    const/4 v4, 0x6

    const-string v6, "account_type"

    aput-object v6, v5, v4

    .line 1822
    .local v5, bookmarksProjection:[Ljava/lang/String;
    const-string v4, "bookmarks"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1824
    .local v19, cursor:Landroid/database/Cursor;
    const-string v4, "parent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v32

    .line 1825
    .local v32, updatingParent:Z
    const/16 v29, 0x0

    .line 1826
    .local v29, parentAccountName:Ljava/lang/String;
    const/16 v30, 0x0

    .line 1827
    .local v30, parentAccountType:Ljava/lang/String;
    if-eqz v32, :cond_9

    .line 1828
    const-string v4, "parent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 1829
    .local v27, parent:J
    const-string v7, "bookmarks"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "account_name"

    aput-object v6, v8, v4

    const/4 v4, 0x1

    const-string v6, "account_type"

    aput-object v6, v8, v4

    const-string v9, "_id = ?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1833
    .local v17, c:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1834
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1835
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1837
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1843
    .end local v17           #c:Landroid/database/Cursor;
    .end local v27           #parent:J
    :cond_1
    :goto_0
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1845
    .local v16, args:[Ljava/lang/String;
    if-nez p4, :cond_2

    .line 1846
    const-string v4, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1847
    const-string v4, "dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1850
    :cond_2
    const-string v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v33

    .line 1851
    .local v33, updatingUrl:Z
    const/16 v35, 0x0

    .line 1852
    .local v35, url:Ljava/lang/String;
    if-eqz v33, :cond_3

    .line 1853
    const-string v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1855
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v22

    .line 1857
    .local v22, imageValues:Landroid/content/ContentValues;
    :cond_4
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1858
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1859
    .local v20, id:J
    const/4 v4, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v16, v4

    .line 1860
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1861
    .local v14, accountName:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1864
    .local v15, accountType:Ljava/lang/String;
    if-eqz v32, :cond_a

    move-object/from16 v0, v29

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1871
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->valuesFromCursor(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v26

    .line 1872
    .local v26, newValues:Landroid/content/ContentValues;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1873
    const-string v4, "_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1874
    const-string v4, "version"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1875
    const-string v4, "account_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v4, "account_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    sget-object v4, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p4

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v23

    .line 1879
    .local v23, insertUri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 1880
    .local v24, newId:J
    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    .line 1882
    new-instance v31, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1883
    .local v31, updateChildren:Landroid/content/ContentValues;
    const-string v4, "parent"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1884
    const-string v4, "parent=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p4

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/browser/provider/BrowserProvider2;->updateBookmarksInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v4

    add-int v18, v18, v4

    .line 1889
    .end local v31           #updateChildren:Landroid/content/ContentValues;
    :cond_6
    sget-object v4, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    .line 1890
    .local v34, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, p4

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/browser/provider/BrowserProvider2;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    .line 1891
    add-int/lit8 v18, v18, 0x1

    .line 1901
    .end local v23           #insertUri:Landroid/net/Uri;
    .end local v24           #newId:J
    .end local v26           #newValues:Landroid/content/ContentValues;
    .end local v34           #uri:Landroid/net/Uri;
    :goto_2
    if-eqz v22, :cond_4

    .line 1902
    if-nez v33, :cond_7

    .line 1903
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1904
    const-string v4, "url_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    :cond_7
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1908
    const/4 v4, 0x0

    aput-object v35, v16, v4

    .line 1909
    const-string v4, "images"

    const-string v6, "url_key=?"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v3, v4, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 1910
    const-string v4, "images"

    const-string v6, "favicon"

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1916
    .end local v14           #accountName:Ljava/lang/String;
    .end local v15           #accountType:Ljava/lang/String;
    .end local v16           #args:[Ljava/lang/String;
    .end local v20           #id:J
    .end local v22           #imageValues:Landroid/content/ContentValues;
    .end local v33           #updatingUrl:Z
    .end local v35           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 1838
    :cond_9
    const-string v4, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 1893
    .restart local v14       #accountName:Ljava/lang/String;
    .restart local v15       #accountType:Ljava/lang/String;
    .restart local v16       #args:[Ljava/lang/String;
    .restart local v20       #id:J
    .restart local v22       #imageValues:Landroid/content/ContentValues;
    .restart local v33       #updatingUrl:Z
    .restart local v35       #url:Ljava/lang/String;
    :cond_a
    if-nez p4, :cond_b

    .line 1895
    :try_start_1
    const-string v4, "version"

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1897
    :cond_b
    const-string v4, "bookmarks"

    const-string v6, "_id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v3, v4, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    add-int v18, v18, v4

    goto :goto_2

    .line 1916
    .end local v14           #accountName:Ljava/lang/String;
    .end local v15           #accountType:Ljava/lang/String;
    .end local v20           #id:J
    :cond_c
    if-eqz v19, :cond_d

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1918
    :cond_d
    return v18
.end method

.method updateHistoryInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 14
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1948
    const/4 v8, 0x0

    .line 1949
    .local v8, count:I
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 1950
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient([Ljava/lang/String;)V

    .line 1951
    sget-object v2, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "url"

    aput-object v4, v3, v1

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/browser/provider/BrowserProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1955
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v7, v1, [Ljava/lang/String;

    .line 1957
    .local v7, args:[Ljava/lang/String;
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 1958
    .local v12, updatingUrl:Z
    const/4 v13, 0x0

    .line 1959
    .local v13, url:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 1960
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1961
    const-string v1, "url"

    invoke-virtual {p1, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_0
    invoke-virtual {p0, p1, v13}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v11

    .line 1965
    .local v11, imageValues:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1966
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1967
    const-string v1, "history"

    const-string v2, "_id=?"

    invoke-virtual {v10, v1, p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v8, v1

    .line 1970
    if-eqz v11, :cond_1

    .line 1971
    if-nez v12, :cond_2

    .line 1972
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1973
    const-string v1, "url_key"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    :cond_2
    const/4 v1, 0x0

    aput-object v13, v7, v1

    .line 1976
    const-string v1, "images"

    const-string v2, "url_key=?"

    invoke-virtual {v10, v1, v11, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1977
    const-string v1, "images"

    const-string v2, "favicon"

    invoke-virtual {v10, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1982
    .end local v7           #args:[Ljava/lang/String;
    .end local v11           #imageValues:Landroid/content/ContentValues;
    .end local v12           #updatingUrl:Z
    .end local v13           #url:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .restart local v7       #args:[Ljava/lang/String;
    .restart local v11       #imageValues:Landroid/content/ContentValues;
    .restart local v12       #updatingUrl:Z
    .restart local v13       #url:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1984
    :cond_5
    return v8
.end method

.method public updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 19
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1602
    sget-object v15, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 1603
    .local v9, match:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v15}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1604
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v15, 0x2328

    if-eq v9, v15, :cond_0

    const/16 v15, 0x2329

    if-ne v9, v15, :cond_2

    .line 1606
    :cond_0
    const-string v15, "bookmark"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1607
    .local v6, bookmark:Ljava/lang/Integer;
    const-string v15, "bookmark"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1608
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_4

    .line 1609
    :cond_1
    const/16 v15, 0x2328

    if-ne v9, v15, :cond_3

    .line 1610
    const/16 v9, 0x7d0

    .line 1625
    .end local v6           #bookmark:Ljava/lang/Integer;
    :cond_2
    :goto_0
    const/4 v10, 0x0

    .line 1626
    .local v10, modified:I
    sparse-switch v9, :sswitch_data_0

    .line 1728
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown update URI "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1612
    .end local v10           #modified:I
    .restart local v6       #bookmark:Ljava/lang/Integer;
    :cond_3
    const/16 v9, 0x7d1

    goto :goto_0

    .line 1615
    :cond_4
    const/16 v15, 0x2328

    if-ne v9, v15, :cond_5

    .line 1616
    const/16 v9, 0x3e8

    .line 1620
    :goto_1
    const-string v15, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1621
    const-string v15, "visits"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1622
    const-string v15, "user_entered"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1618
    :cond_5
    const/16 v9, 0x3e9

    goto :goto_1

    .line 1628
    .end local v6           #bookmark:Ljava/lang/Integer;
    .restart local v10       #modified:I
    :sswitch_0
    const-string v15, "bookmarks._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1630
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p4

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1635
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v14

    .line 1636
    .local v14, withAccount:[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object p3, v14, v15

    .end local p3
    check-cast p3, Ljava/lang/String;

    .line 1637
    .restart local p3
    const/4 v15, 0x1

    aget-object v15, v14, v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 p4, v15

    check-cast p4, [Ljava/lang/String;

    .line 1638
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/browser/provider/BrowserProvider2;->updateBookmarksInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v10

    .line 1640
    if-lez v10, :cond_6

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1731
    .end local v14           #withAccount:[Ljava/lang/Object;
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()I

    .line 1732
    if-lez v10, :cond_7

    .line 1733
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1734
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->shouldNotifyLegacy(Landroid/net/Uri;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1735
    sget-object v15, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    :cond_7
    move v7, v10

    .line 1738
    :goto_3
    return v7

    .line 1647
    :sswitch_2
    const-string v15, "history._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1648
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p4

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1653
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->updateHistoryInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1654
    goto :goto_2

    .line 1658
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1660
    goto :goto_2

    .line 1664
    :sswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1665
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez p3, :cond_8

    const-string v15, ""

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1668
    .local v11, selectionWithId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v15, v0, v1, v11, v2}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1670
    goto/16 :goto_2

    .line 1665
    .end local v11           #selectionWithId:Ljava/lang/String;
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " AND ("

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    .line 1674
    :sswitch_6
    const-string v15, "url_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1675
    .local v13, url:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1676
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Images.URL is required"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1678
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v13, v1}, Lcom/android/browser/provider/BrowserProvider2;->shouldUpdateImages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 1679
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1681
    :cond_a
    const-string v15, "images"

    const-string v16, "url_key=?"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v8, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1683
    .local v7, count:I
    if-nez v7, :cond_b

    .line 1684
    const-string v15, "images"

    const-string v16, "favicon"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v8, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1685
    const/4 v7, 0x1

    .line 1690
    :cond_b
    const/4 v12, 0x0

    .line 1691
    .local v12, updatedLegacy:Z
    const-string v15, "bookmarks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v13}, Lcom/android/browser/provider/BrowserProvider2;->getUrlCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_c

    .line 1692
    sget-object v15, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1693
    const-string v15, "favicon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1696
    :cond_c
    const-string v15, "history"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v13}, Lcom/android/browser/provider/BrowserProvider2;->getUrlCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_d

    .line 1697
    sget-object v15, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1698
    const-string v15, "favicon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 1700
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()I

    move-result v15

    if-gtz v15, :cond_e

    if-eqz v12, :cond_f

    .line 1701
    :cond_e
    sget-object v15, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1706
    :cond_f
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncToNetwork:Z

    goto/16 :goto_3

    .line 1711
    .end local v7           #count:I
    .end local v12           #updatedLegacy:Z
    .end local v13           #url:Ljava/lang/String;
    :sswitch_7
    const-string v15, "searches"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1712
    goto/16 :goto_2

    .line 1716
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v5

    .line 1717
    .local v5, accounts:[Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    goto/16 :goto_2

    .line 1722
    .end local v5           #accounts:[Landroid/accounts/Account;
    :sswitch_9
    const-string v15, "thumbnails"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1724
    goto/16 :goto_2

    .line 1626
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_9
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_0
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_2
        0xbb8 -> :sswitch_7
        0xfa0 -> :sswitch_4
        0xfa1 -> :sswitch_5
        0x1388 -> :sswitch_6
        0x1b58 -> :sswitch_8
    .end sparse-switch
.end method

.method valuesFromCursor(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 7
    .parameter "c"

    .prologue
    .line 1922
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 1923
    .local v1, count:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1924
    .local v3, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, colNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1926
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1925
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1928
    :pswitch_0
    aget-object v4, v0, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 1931
    :pswitch_1
    aget-object v4, v0, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 1934
    :pswitch_2
    aget-object v4, v0, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1937
    :pswitch_3
    aget-object v4, v0, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1941
    :cond_0
    return-object v3

    .line 1926
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
