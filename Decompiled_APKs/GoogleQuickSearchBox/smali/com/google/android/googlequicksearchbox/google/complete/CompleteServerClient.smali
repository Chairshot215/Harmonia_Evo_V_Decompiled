.class public Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;
.super Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;
.source "CompleteServerClient.java"


# instance fields
.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 0
    .parameter "context"
    .parameter "searchUrlHelper"
    .parameter "config"
    .parameter "settings"
    .parameter "httpHelper"

    .prologue
    .line 67
    invoke-direct {p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 68
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 69
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 70
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 71
    return-void
.end method

.method private extractFromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 208
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 209
    .local v1, type:I
    if-nez v1, :cond_0

    .line 210
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/google/android/googlequicksearchbox/WebSuggestions;->createWebSuggestion(Ljava/lang/CharSequence;Z)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v3

    .line 223
    :goto_0
    return-object v3

    .line 214
    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 215
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, url:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, title:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v5

    invoke-static {v3, v4, v6, v5}, Lcom/google/android/googlequicksearchbox/WebSuggestions;->createNavSuggestion(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/content/Context;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v3

    goto :goto_0

    .line 222
    .end local v0           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    const-string v3, "QSB.CompleteServerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown suggestion type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->startListening()Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private parseJson(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 7
    .parameter "json"
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, array:Lorg/json/JSONArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 198
    .local v3, suggestions:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->extractFromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Lorg/json/JSONException;
    const-string v4, "QSB.CompleteServerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse suggestion at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 205
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "complete-server"

    return-object v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "extraData"
    .parameter "query"
    .parameter "trafficTagFlags"

    .prologue
    .line 149
    return-void
.end method

.method protected query(Ljava/lang/String;ZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 14
    .parameter "query"
    .parameter "extended"
    .parameter "list"

    .prologue
    .line 94
    if-eqz p2, :cond_2

    const-string v6, "http"

    .line 96
    .local v6, scheme:Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 97
    .local v8, uri:Landroid/net/Uri$Builder;
    const-string v9, "/complete/search"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    const-string v9, "client"

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/googlequicksearchbox/Config;->getCompleteServerClientId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    const-string v9, "hl"

    invoke-static {}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 103
    .local v4, loc:Landroid/location/Location;
    if-eqz v4, :cond_0

    .line 104
    new-instance v2, Ljava/util/Formatter;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v9}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 105
    .local v2, f:Ljava/util/Formatter;
    const-string v9, "%f,%f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 106
    const-string v9, "sll"

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    const-string v9, "X-Geo"

    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v2           #f:Ljava/util/Formatter;
    .end local v4           #loc:Landroid/location/Location;
    :cond_0
    const-string v9, "oe"

    const-string v10, "UTF-8"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    const/4 v5, 0x0

    .line 123
    .local v5, response:Ljava/lang/String;
    :try_start_0
    const-string v9, "q"

    invoke-virtual {v8, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    const/4 v7, 0x1

    .line 126
    .local v7, tag:I
    if-nez p2, :cond_1

    .line 127
    const/high16 v9, 0x1000

    or-int/2addr v7, v9

    .line 129
    :cond_1
    iget-object v9, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v3, v7}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->get(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v5

    .line 135
    move-object/from16 v0, p3

    invoke-direct {p0, v5, v0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->parseJson(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    :try_end_0
    .catch Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v7           #tag:I
    :goto_1
    return-void

    .line 94
    .end local v3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #response:Ljava/lang/String;
    .end local v6           #scheme:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri$Builder;
    :cond_2
    const-string v6, "http"

    goto/16 :goto_0

    .line 141
    .restart local v3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #response:Ljava/lang/String;
    .restart local v6       #scheme:Ljava/lang/String;
    .restart local v8       #uri:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Lorg/json/JSONException;
    const-string v9, "QSB.CompleteServerClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing suggestions \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v1           #e:Lorg/json/JSONException;
    :goto_2
    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setRequestFailed(Z)V

    goto :goto_1

    .line 139
    :catch_1
    move-exception v9

    goto :goto_2

    .line 137
    :catch_2
    move-exception v9

    goto :goto_2
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method
