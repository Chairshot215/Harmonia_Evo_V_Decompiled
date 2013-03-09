.class Ltwitter4j/AccountSettingsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "AccountSettingsJSONImpl.java"

# interfaces
.implements Ltwitter4j/AccountSettings;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6eca9ae824b25838L


# instance fields
.field private final GEO_ENABLED:Z

.field private final SLEEP_END_TIME:Ljava/lang/String;

.field private final SLEEP_START_TIME:Ljava/lang/String;

.field private final SLEEP_TIME_ENABLED:Z

.field private final TREND_LOCATION:[Ltwitter4j/Location;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "res"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 43
    :try_start_0
    const-string v4, "sleep_time"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, sleepTime:Lorg/json/JSONObject;
    const-string v4, "enabled"

    invoke-static {v4, v3}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_TIME_ENABLED:Z

    .line 45
    const-string v4, "start_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_START_TIME:Ljava/lang/String;

    .line 46
    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_END_TIME:Ljava/lang/String;

    .line 47
    const-string v4, "trend_location"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const/4 v4, 0x0

    new-array v4, v4, [Ltwitter4j/Location;

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    .line 56
    :cond_0
    const-string v4, "geo_enabled"

    invoke-static {v4, p2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->GEO_ENABLED:Z

    .line 60
    return-void

    .line 50
    :cond_1
    const-string v4, "trend_location"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 51
    .local v2, locations:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ltwitter4j/Location;

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    .line 52
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 53
    iget-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    new-instance v5, Ltwitter4j/LocationJSONImpl;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/LocationJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v5, v4, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1           #i:I
    .end local v2           #locations:Lorg/json/JSONArray;
    .end local v3           #sleepTime:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    invoke-direct {v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;)V

    .line 64
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 66
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getSleepEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_END_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_START_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getTrendLocations()[Ltwitter4j/Location;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    return-object v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->GEO_ENABLED:Z

    return v0
.end method

.method public isSleepTimeEnabled()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_TIME_ENABLED:Z

    return v0
.end method
