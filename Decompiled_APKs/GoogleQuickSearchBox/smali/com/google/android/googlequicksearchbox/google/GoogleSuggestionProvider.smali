.class public Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "GoogleSuggestionProvider.java"


# instance fields
.field private mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private buildUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, authority:Ljava/lang/String;
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 132
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "search_suggest_query"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    const-string v2, "search_suggest_query/*"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    return-object v1
.end method

.method private emptyIfNull(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "result"
    .parameter "query"

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance p1, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    .end local p1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .restart local p1
    :cond_0
    return-object p1
.end method

.method private getQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private declared-synchronized getSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".google"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 70
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 53
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->buildUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->allowSuggestionLogicCreation()V

    .line 89
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 91
    .local v0, match:I
    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, query:Ljava/lang/String;
    new-instance v2, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->emptyIfNull(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 96
    .end local v1           #query:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 95
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 96
    const/4 v2, 0x0

    goto :goto_0

    .line 98
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
