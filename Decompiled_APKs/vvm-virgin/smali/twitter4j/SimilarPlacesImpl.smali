.class public Ltwitter4j/SimilarPlacesImpl;
.super Ltwitter4j/ResponseListImpl;
.source "SimilarPlacesImpl.java"

# interfaces
.implements Ltwitter4j/SimilarPlaces;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltwitter4j/ResponseListImpl",
        "<",
        "Ltwitter4j/Place;",
        ">;",
        "Ltwitter4j/SimilarPlaces;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d9aa5641015e03bL


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/ResponseList;Ltwitter4j/internal/http/HttpResponse;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    invoke-interface {p1}, Ltwitter4j/ResponseList;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 34
    invoke-virtual {p0, p1}, Ltwitter4j/SimilarPlacesImpl;->addAll(Ljava/util/Collection;)Z

    .line 35
    iput-object p3, p0, Ltwitter4j/SimilarPlacesImpl;->token:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static createSimilarPlaces(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/SimilarPlaces;
    .locals 6
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    .local v2, result:Lorg/json/JSONObject;
    new-instance v3, Ltwitter4j/SimilarPlacesImpl;

    const-string v4, "places"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, p0, p1}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v4

    const-string v5, "token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Ltwitter4j/SimilarPlacesImpl;-><init>(Ltwitter4j/ResponseList;Ltwitter4j/internal/http/HttpResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 53
    .end local v2           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 54
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method public getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/ResponseListImpl;->getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/ResponseListImpl;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltwitter4j/SimilarPlacesImpl;->token:Ljava/lang/String;

    return-object v0
.end method
