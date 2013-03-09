.class public Lcom/android/mms/util/CustomizeProvider;
.super Landroid/content/ContentProvider;
.source "CustomizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/CustomizeProvider$CustomizeHelper;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.mms.customize"

.field public static CONTENT_TYPE:Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "com.android.mms.customize"

.field private static final TAG:Ljava/lang/String; = "CustomizeProvider"

.field private static URI_MATCHER:Landroid/content/UriMatcher;

.field private static mKeys:[Ljava/lang/Object;

.field private static mSP:Landroid/content/SharedPreferences;

.field private static mSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "vnd.android.cursor.dir/com.android.mms.customize"

    sput-object v0, Lcom/android/mms/util/CustomizeProvider;->CONTENT_TYPE:Ljava/lang/String;

    .line 47
    const-string v0, "content://com.android.mms.customize/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/CustomizeProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 50
    sput-object v1, Lcom/android/mms/util/CustomizeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 52
    sput-object v1, Lcom/android/mms/util/CustomizeProvider;->mSP:Landroid/content/SharedPreferences;

    .line 53
    sput-object v1, Lcom/android/mms/util/CustomizeProvider;->mSetting:Ljava/util/Map;

    .line 54
    sput-object v1, Lcom/android/mms/util/CustomizeProvider;->mKeys:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAll()V
    .locals 3

    .prologue
    .line 131
    const-class v2, Lcom/android/mms/util/CustomizeProvider;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/util/CustomizeProvider;->mSP:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/android/mms/util/CustomizeProvider;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-static {}, Lcom/android/mms/util/CustomizeProvider;->loadSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    monitor-exit v2

    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static loadSettings()V
    .locals 6

    .prologue
    .line 63
    new-instance v4, Landroid/content/UriMatcher;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v4, Lcom/android/mms/util/CustomizeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 64
    const/4 v4, 0x0

    sput-object v4, Lcom/android/mms/util/CustomizeProvider;->mKeys:[Ljava/lang/Object;

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, idx:I
    sget-object v4, Lcom/android/mms/util/CustomizeProvider;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lcom/android/mms/util/CustomizeProvider;->mSetting:Ljava/util/Map;

    .line 67
    sget-object v4, Lcom/android/mms/util/CustomizeProvider;->mSetting:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, key:Ljava/lang/String;
    sget-object v4, Lcom/android/mms/util/CustomizeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v5, "com.android.mms.customize"

    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    invoke-virtual {v4, v5, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_0

    .line 70
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    if-lez v1, :cond_1

    .line 71
    sget-object v4, Lcom/android/mms/util/CustomizeProvider;->mSetting:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/android/mms/util/CustomizeProvider;->mKeys:[Ljava/lang/Object;

    .line 72
    :cond_1
    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;Lcom/android/mms/util/CustomizeProvider$CustomizeHelper;)Z
    .locals 4
    .parameter "context"
    .parameter "helper"

    .prologue
    .line 140
    const-class v3, Lcom/android/mms/util/CustomizeProvider;

    monitor-enter v3

    :try_start_0
    invoke-interface {p1}, Lcom/android/mms/util/CustomizeProvider$CustomizeHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, tag:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/mms/util/CustomizeProvider$CustomizeHelper;->getValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 164
    .local v1, value:Z
    monitor-exit v3

    return v1

    .line 140
    .end local v0           #tag:Ljava/lang/String;
    .end local v1           #value:Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, count:I
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 83
    sget-object v0, Lcom/android/mms/util/CustomizeProvider;->CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, url:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    sget-object v3, Lcom/android/mms/util/CustomizeProvider;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    invoke-static {}, Lcom/android/mms/util/CustomizeProvider;->loadSettings()V

    .line 117
    move-object v2, p1

    .line 120
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v2
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/mms/util/CustomizeProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.mms.customize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/CustomizeProvider;->mSP:Landroid/content/SharedPreferences;

    .line 77
    invoke-static {}, Lcom/android/mms/util/CustomizeProvider;->loadSettings()V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, mc:Landroid/database/MatrixCursor;
    sget-object v5, Lcom/android/mms/util/CustomizeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 92
    .local v0, match:I
    sget-object v5, Lcom/android/mms/util/CustomizeProvider;->mKeys:[Ljava/lang/Object;

    if-eqz v5, :cond_0

    if-ltz v0, :cond_0

    sget-object v5, Lcom/android/mms/util/CustomizeProvider;->mKeys:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 93
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #mc:Landroid/database/MatrixCursor;
    new-array v5, v3, [Ljava/lang/String;

    sget-object v6, Lcom/android/mms/util/CustomizeProvider;->mKeys:[Ljava/lang/Object;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 94
    .restart local v1       #mc:Landroid/database/MatrixCursor;
    new-array v2, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/android/mms/util/CustomizeProvider;->mSP:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/android/mms/util/CustomizeProvider;->mKeys:[Ljava/lang/Object;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 95
    .local v2, row:[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 98
    .end local v2           #row:[Ljava/lang/Object;
    :cond_0
    return-object v1

    :cond_1
    move v3, v4

    .line 94
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, count:I
    return v0
.end method
