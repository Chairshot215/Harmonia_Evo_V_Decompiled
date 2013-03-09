.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;
.super Ljava/lang/Object;
.source "GenieClient.java"


# static fields
.field private static final FEEDS_JOINER:Lcom/google/common/base/Joiner;


# instance fields
.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private final mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->FEEDS_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 2
    .parameter "context"
    .parameter "settings"
    .parameter "source"
    .parameter "searchUrlHelper"
    .parameter "httpHelper"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 100
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    .line 101
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 102
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 103
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 104
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;-><init>(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 114
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 116
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    const-string v1, "mobilepersonalfeeds"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requireAuthTokenType(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    return-object v0
.end method

.method private addSuggestion(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;ILorg/json/JSONArray;)V
    .locals 4
    .parameter "suggestions"
    .parameter "eventId"
    .parameter "networkInfo"
    .parameter "latency"
    .parameter "pos"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Landroid/net/NetworkInfo;)V

    .line 490
    .local v0, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putSearchAction(I)V

    .line 491
    invoke-virtual {v0, p5}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickPosition(I)V

    .line 493
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p6, v0, v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->fromJson(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;Z)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 494
    .local v1, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-eqz v1, :cond_0

    .line 495
    invoke-interface {p1, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 497
    :cond_0
    return-void
.end method

.method private addSuggestions(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)V
    .locals 11
    .parameter "suggestions"
    .parameter "response"
    .parameter "networkInfo"
    .parameter "latency"

    .prologue
    .line 288
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 294
    .local v10, results:Lorg/json/JSONArray;
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getEventId(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 296
    .local v2, eventId:Lorg/json/JSONArray;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v8, dbgTypes:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 298
    .local v7, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 300
    :try_start_1
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 301
    .local v6, entry:Lorg/json/JSONArray;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 302
    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->addSuggestion(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;ILorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    .end local v6           #entry:Lorg/json/JSONArray;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 289
    .end local v2           #eventId:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v7           #count:I
    .end local v8           #dbgTypes:Ljava/lang/StringBuilder;
    .end local v10           #results:Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 290
    .local v9, e:Lorg/json/JSONException;
    const-string v0, "QSB.GenieClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting entries: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v9           #e:Lorg/json/JSONException;
    :goto_2
    return-void

    .line 303
    .restart local v2       #eventId:Lorg/json/JSONArray;
    .restart local v5       #i:I
    .restart local v7       #count:I
    .restart local v8       #dbgTypes:Ljava/lang/StringBuilder;
    .restart local v10       #results:Lorg/json/JSONArray;
    :catch_1
    move-exception v9

    .line 304
    .restart local v9       #e:Lorg/json/JSONException;
    const-string v0, "QSB.GenieClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating suggestion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    .end local v9           #e:Lorg/json/JSONException;
    :cond_0
    const-string v0, "QSB.GenieClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: suggestions="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private callerHasLocationPermission()Z
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createGenieSearchRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Z)Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    .locals 14
    .parameter "query"
    .parameter
    .parameter "isRaw"
    .parameter "includeLocation"
    .parameter "authToken"
    .parameter "latency"
    .parameter "prefetchFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;",
            "Lcom/google/android/googlequicksearchbox/google/LatencyTracker;",
            "Z)",
            "Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v9, "begin_create_request"

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 418
    const/4 v6, 0x0

    .line 419
    .local v6, location:Landroid/location/Location;
    if-eqz p4, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 422
    const-string v9, "got_location"

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 426
    :cond_0
    new-instance v7, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;

    invoke-direct {v7}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;-><init>()V

    .line 427
    .local v7, request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    new-instance v4, Ljava/util/Formatter;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v9}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 430
    .local v4, f:Ljava/util/Formatter;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {p1, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 435
    .local v2, encodedQuery:Ljava/lang/String;
    if-eqz p5, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v10}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGeniePSuggestServer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?q=%s&hl=%s&app=%s&appv=%s&platform=%s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, baseUrl:Ljava/lang/String;
    :goto_0
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getLanguage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getApp(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getAppv(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getPlatform(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v1, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 444
    iget-object v9, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v9}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomainCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, glParam:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 446
    const-string v9, "&gl=%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 448
    :cond_1
    if-eqz v6, :cond_2

    .line 449
    const-string v9, "&sll=%f,%f&acc=%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 454
    :cond_2
    if-eqz p5, :cond_3

    .line 455
    const-string v9, "Authorization"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GoogleLogin auth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->getToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_3
    if-eqz p3, :cond_4

    .line 458
    const-string v9, "&raw=true"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 460
    :cond_4
    if-eqz p7, :cond_5

    .line 461
    const-string v9, "&pff=%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 463
    :cond_5
    const-string v9, "&feeds=%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->FEEDS_JOINER:Lcom/google/common/base/Joiner;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 464
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 465
    .local v8, url:Ljava/lang/String;
    const-string v10, "QSB.GenieClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request: chars="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";feeds="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";loc="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_7

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";auth="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p5, :cond_8

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {v7, v8}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->setUrl(Ljava/lang/String;)V

    .line 472
    .end local v1           #baseUrl:Ljava/lang/String;
    .end local v2           #encodedQuery:Ljava/lang/String;
    .end local v5           #glParam:Ljava/lang/String;
    .end local v7           #request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    .end local v8           #url:Ljava/lang/String;
    :goto_3
    return-object v7

    .line 431
    .restart local v7       #request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    :catch_0
    move-exception v3

    .line 432
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v9, "QSB.GenieClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error encoding query: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v7, 0x0

    goto :goto_3

    .line 435
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #encodedQuery:Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v10}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieSuggestServer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?q=%s&hl=%s&app=%s&appv=%s&platform=%s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 465
    .restart local v1       #baseUrl:Ljava/lang/String;
    .restart local v5       #glParam:Ljava/lang/String;
    .restart local v8       #url:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private createLoggingData(Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .locals 2
    .parameter "networkInfo"
    .parameter "latency"
    .parameter "response"

    .prologue
    .line 329
    invoke-direct {p0, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getEventId(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 330
    .local v0, eventId:Lorg/json/JSONArray;
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    invoke-direct {v1, v0, p2, p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Landroid/net/NetworkInfo;)V

    return-object v1
.end method

.method private executeGenieRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;IZ)Lorg/json/JSONArray;
    .locals 11
    .parameter "query"
    .parameter
    .parameter "isRaw"
    .parameter "includeLocation"
    .parameter "authToken"
    .parameter "latency"
    .parameter "trafficTag"
    .parameter "prefetchFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;",
            "Lcom/google/android/googlequicksearchbox/google/LatencyTracker;",
            "IZ)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->createGenieSearchRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Z)Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;

    move-result-object v10

    .line 345
    .local v10, request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {p0, v10, v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->sendGenieSearchRequest(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;I)Lorg/json/JSONArray;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    const-string v1, "mobilepersonalfeeds"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAuthToken(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getBasicFeeds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    .local v0, feeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "qs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    return-object v0
.end method

.method private getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method private getEnhancedFeeds(Z)Ljava/util/Set;
    .locals 2
    .parameter "includeHistory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    .local v0, feeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "qs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    if-eqz p1, :cond_0

    .line 255
    const-string v1, "hist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    return-object v0
.end method

.method private getEventId(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 315
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-object v1

    .line 317
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, ex:Lorg/json/JSONException;
    const-string v2, "QSB.GenieClient"

    const-string v3, "No EventId in response."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->startListening()Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    return-object v0
.end method

.method private getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized invalidateSessionCookie()V
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    const-string v1, "mobilepersonalfeeds"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logLatency(Ljava/lang/String;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;I)V
    .locals 5
    .parameter "query"
    .parameter "networkInfo"
    .parameter "latency"
    .parameter "response"
    .parameter "trafficTagFlags"

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x3fa999999999999aL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 273
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->createLoggingData(Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    move-result-object v0

    .line 274
    .local v0, latencyLogData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putQuery(Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putSearchAction(I)V

    .line 276
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->log(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;I)V

    .line 278
    .end local v0           #latencyLogData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    :cond_0
    return-void
.end method

.method private query(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V
    .locals 14
    .parameter "source"
    .parameter "query"
    .parameter
    .parameter "includeLocation"
    .parameter "includeAuthToken"
    .parameter "list"
    .parameter "trafficTagFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/googlequicksearchbox/MutableSuggestionList;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p3, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;

    const-string v1, "QSB.GenieClient"

    invoke-direct {v7, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;-><init>(Ljava/lang/String;)V

    .line 211
    .local v7, latency:Lcom/google/android/googlequicksearchbox/google/LatencyTracker;
    const-string v1, "query_start"

    invoke-virtual {v7, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 214
    .local v10, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setRequestFailed(Z)V

    .line 240
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v1, "got_network_info"

    invoke-virtual {v7, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 220
    if-eqz p5, :cond_3

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    move-result-object v6

    .line 221
    .local v6, authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    :goto_1
    if-eqz v6, :cond_2

    .line 222
    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->getAccount()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setAccount(Ljava/lang/String;)V

    .line 225
    :cond_2
    const/4 v4, 0x0

    or-int/lit8 v8, p7, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->executeGenieRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;IZ)Lorg/json/JSONArray;

    move-result-object v12

    .line 230
    .local v12, response:Lorg/json/JSONArray;
    if-nez v12, :cond_4

    .line 231
    const/4 v12, 0x0

    move-object v8, p0

    move-object/from16 v9, p2

    move-object v11, v7

    move/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->logLatency(Ljava/lang/String;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;I)V

    .line 232
    .end local v12           #response:Lorg/json/JSONArray;
    const/4 v1, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setRequestFailed(Z)V

    goto :goto_0

    .line 220
    .end local v6           #authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 236
    .restart local v6       #authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    .restart local v12       #response:Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v10, v7}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->addSuggestions(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)V

    .line 237
    const-string v1, "suggestions_built"

    invoke-virtual {v7, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    move-object v8, p0

    move-object/from16 v9, p2

    move-object v11, v7

    move/from16 v13, p7

    .line 239
    invoke-direct/range {v8 .. v13}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->logLatency(Ljava/lang/String;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;I)V

    goto :goto_0
.end method

.method private responseContainsAuthError(Lorg/json/JSONArray;)Z
    .locals 3
    .parameter "genieResponse"

    .prologue
    const/4 v1, 0x0

    .line 398
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 399
    .local v0, flags:I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private sendGenieSearchRequest(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;I)Lorg/json/JSONArray;
    .locals 9
    .parameter "request"
    .parameter "latency"
    .parameter "trafficTag"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 356
    if-nez p1, :cond_1

    move-object v3, v5

    .line 394
    :cond_0
    :goto_0
    return-object v3

    .line 359
    :cond_1
    const-string v6, "request_created"

    invoke-virtual {p2, v6}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 362
    :try_start_0
    const-string v6, "network_roundtrip_start"

    invoke-virtual {p2, v6}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 363
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-interface {v6, p1, p3}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->get(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, content:Ljava/lang/String;
    const-string v6, "network_roundtrip_end"

    invoke-virtual {p2, v6}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 366
    goto :goto_0

    .line 369
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    .line 371
    goto :goto_0

    .line 374
    :cond_3
    const-string v6, "/*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 375
    .local v4, start:I
    const-string v6, "*/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 376
    .local v2, end:I
    if-eq v4, v7, :cond_4

    if-eq v2, v7, :cond_4

    .line 377
    add-int/lit8 v6, v4, 0x3

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, genieResponse:Lorg/json/JSONArray;
    const-string v6, "json_parsed"

    invoke-virtual {p2, v6}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->responseContainsAuthError(Lorg/json/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    const-string v6, "QSB.GenieClient"

    const-string v7, "Genie reported auth error, invalidating cookie."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->invalidateSessionCookie()V

    .line 385
    const-string v6, "cookie_invalidated"

    invoke-virtual {p2, v6}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 389
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #end:I
    .end local v3           #genieResponse:Lorg/json/JSONArray;
    .end local v4           #start:I
    :catch_0
    move-exception v1

    .line 390
    .local v1, e:Ljava/io/IOException;
    const-string v6, "QSB.GenieClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP request error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    move-object v3, v5

    .line 394
    goto :goto_0

    .line 391
    :catch_1
    move-exception v1

    .line 392
    .local v1, e:Lorg/json/JSONException;
    const-string v6, "QSB.GenieClient"

    const-string v7, "Error parsing response: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 503
    :cond_0
    return-void
.end method

.method haveNetwork()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->haveNetworkConnection()Z

    move-result v0

    return v0
.end method

.method isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryBasicFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 8
    .parameter "source"
    .parameter "query"
    .parameter "list"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getBasicFeeds()Ljava/util/Set;

    move-result-object v3

    .line 177
    .local v3, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->callerHasLocationPermission()Z

    move-result v4

    .line 178
    .local v4, includeLocation:Z
    const/4 v5, 0x0

    const/high16 v7, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->query(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V

    .line 179
    return-void
.end method

.method public queryEnhancedFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 8
    .parameter "source"
    .parameter "query"
    .parameter "list"

    .prologue
    .line 188
    const/4 v4, 0x1

    .line 189
    .local v4, includeLocation:Z
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v5

    .line 190
    .local v5, includeHistory:Z
    invoke-direct {p0, v5}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getEnhancedFeeds(Z)Ljava/util/Set;

    move-result-object v3

    .line 191
    .local v3, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->query(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V

    .line 192
    return-void
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 9
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v6, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;

    const-string v0, "QSB.GenieClient"

    invoke-direct {v6, v0}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;-><init>(Ljava/lang/String;)V

    .line 198
    .local v6, latency:Lcom/google/android/googlequicksearchbox/google/LatencyTracker;
    const-string v0, "dhist"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    move-result-object v5

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->executeGenieRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;IZ)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
