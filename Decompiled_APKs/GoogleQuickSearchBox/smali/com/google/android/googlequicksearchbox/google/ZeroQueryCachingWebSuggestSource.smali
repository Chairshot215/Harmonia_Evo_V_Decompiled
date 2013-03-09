.class public Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;
.super Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;
.source "ZeroQueryCachingWebSuggestSource.java"


# instance fields
.field final mAccountsObserver:Landroid/database/DataSetObserver;

.field private final mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private final mHistoryObservable:Landroid/database/DataSetObservable;

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mSearchHistoryWasEnabled:Z

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field final mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Landroid/database/DataSetObservable;)V
    .locals 3
    .parameter "wrappedSource"
    .parameter "settings"
    .parameter "loginHelper"
    .parameter "historyObservable"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V

    .line 89
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 90
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 91
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z

    .line 93
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$1;-><init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mAccountsObserver:Landroid/database/DataSetObserver;

    .line 100
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$2;-><init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 109
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 110
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->loadSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->validateCache(Z)V

    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mAccountsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 116
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mHistoryObservable:Landroid/database/DataSetObservable;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->validateCache(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->cacheResults(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method private declared-synchronized cacheResults(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isValid(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 202
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->serializeSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, json:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getCachedZeroQueryWebResults()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setCachedZeroQueryWebResults(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mHistoryObservable:Landroid/database/DataSetObservable;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mHistoryObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0           #json:Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 215
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setCachedZeroQueryWebResults(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    return v0
.end method

.method private isValid(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 2
    .parameter "list"

    .prologue
    .line 194
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->isRequestFailed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 248
    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v11}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getCachedZeroQueryWebResults()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, json:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 252
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string v11, "source"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, sourceName:Ljava/lang/String;
    const-string v11, "account"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, account:Ljava/lang/String;
    const-string v11, "q"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, userQuery:Ljava/lang/String;
    new-instance v5, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-direct {v5, v7, v9}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v5, list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    invoke-interface {v5, v0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setAccount(Ljava/lang/String;)V

    .line 260
    const-string v11, "suggestions"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 261
    .local v8, suggestions:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_1

    .line 262
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, query:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v11

    const-string v12, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v11, v12}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v11

    invoke-interface {v5, v11}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    .end local v6           #query:Ljava/lang/String;
    .end local v7           #sourceName:Ljava/lang/String;
    .end local v8           #suggestions:Lorg/json/JSONArray;
    .end local v9           #userQuery:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Lorg/json/JSONException;
    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v11, v10}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setCachedZeroQueryWebResults(Ljava/lang/String;)V

    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    move-object v5, v10

    .line 276
    :cond_1
    return-object v5
.end method

.method private declared-synchronized removeQueryFromCache(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 226
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->clearCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static serializeSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)Ljava/lang/String;
    .locals 6
    .parameter "list"

    .prologue
    .line 282
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v4, "source"

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v4, "account"

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v4, "q"

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 288
    .local v3, suggestions:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 289
    invoke-interface {p0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    const-string v4, "suggestions"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 297
    .end local v1           #i:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #suggestions:Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private declared-synchronized validateCache(Z)V
    .locals 1
    .parameter "fetchIfInvalid"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isValid(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z

    if-nez v0, :cond_1

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->clearCache()V

    .line 180
    if-nez p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 185
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mAccountsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 242
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->close()V

    .line 243
    return-void
.end method

.method public declared-synchronized getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    move-object v0, p2

    .line 138
    .local v0, originalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance p2, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;

    .end local p2           #consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-direct {p2, p0, v0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;-><init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 145
    .end local v0           #originalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    .restart local p2       #consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 146
    return-void
.end method

.method public declared-synchronized isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 160
    :goto_0
    monitor-exit p0

    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_1
    :try_start_1
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->isLikelyToReturnZeroQueryResults()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->removeQueryFromCache(Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
