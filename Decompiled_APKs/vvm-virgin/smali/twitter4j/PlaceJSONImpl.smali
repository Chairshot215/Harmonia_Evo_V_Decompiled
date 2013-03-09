.class final Ltwitter4j/PlaceJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "PlaceJSONImpl.java"

# interfaces
.implements Ltwitter4j/Place;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x27e03da513dea854L


# instance fields
.field private boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

.field private boundingBoxType:Ljava/lang/String;

.field private containedWithIn:[Ltwitter4j/Place;

.field private country:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private geometryCoordinates:[[Ltwitter4j/GeoLocation;

.field private geometryType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private placeType:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 68
    invoke-direct {p0, p1}, Ltwitter4j/PlaceJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 69
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 0
    .parameter "json"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p2}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 63
    invoke-direct {p0, p1}, Ltwitter4j/PlaceJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 64
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    .local v0, json:Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/PlaceJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 55
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 57
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method static createPlaceList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 8
    .parameter "list"
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 150
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 151
    .local v5, size:I
    new-instance v4, Ltwitter4j/ResponseListImpl;

    invoke-direct {v4, v5, p1}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 153
    .local v4, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 154
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 155
    .local v1, json:Lorg/json/JSONObject;
    new-instance v3, Ltwitter4j/PlaceJSONImpl;

    invoke-direct {v3, v1}, Ltwitter4j/PlaceJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 156
    .local v3, place:Ltwitter4j/Place;
    invoke-interface {v4, v3}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    invoke-static {v3, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v3           #place:Ltwitter4j/Place;
    :cond_2
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 162
    invoke-static {v4, p0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :cond_3
    return-object v4

    .line 165
    .end local v0           #i:I
    .end local v4           #places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    .end local v5           #size:I
    :catch_0
    move-exception v2

    .line 166
    .local v2, jsone:Lorg/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 167
    .end local v2           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .line 168
    .local v6, te:Ltwitter4j/TwitterException;
    throw v6
.end method

.method static createPlaceList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 5
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "places"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p0, p1}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 13
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    const-string v6, "name"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->name:Ljava/lang/String;

    .line 74
    const-string v6, "street_address"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    .line 75
    const-string v6, "country_code"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    .line 76
    const-string v6, "id"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    .line 77
    const-string v6, "country"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->country:Ljava/lang/String;

    .line 78
    const-string v6, "place_type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    const-string v6, "place_type"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->placeType:Ljava/lang/String;

    .line 83
    :goto_0
    const-string v6, "url"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->url:Ljava/lang/String;

    .line 84
    const-string v6, "full_name"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->fullName:Ljava/lang/String;

    .line 85
    const-string v6, "bounding_box"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    const-string v6, "bounding_box"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    .local v1, boundingBoxJSON:Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-static {v6, v1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    .line 88
    const-string v6, "coordinates"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 89
    .local v0, array:Lorg/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/GeoLocation;->coordinatesAsGeoLocationArray(Lorg/json/JSONArray;)[[Ltwitter4j/GeoLocation;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    .line 95
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #boundingBoxJSON:Lorg/json/JSONObject;
    :goto_1
    const-string v6, "geometry"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 96
    const-string v6, "geometry"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    .local v3, geometryJSON:Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-static {v6, v3}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 98
    const-string v6, "coordinates"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    .restart local v0       #array:Lorg/json/JSONArray;
    iget-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    const-string v7, "Point"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Ltwitter4j/GeoLocation;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ltwitter4j/GeoLocation;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    .line 101
    iget-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    new-instance v8, Ltwitter4j/GeoLocation;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Ltwitter4j/GeoLocation;-><init>(DD)V

    aput-object v8, v6, v7

    .line 114
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #geometryJSON:Lorg/json/JSONObject;
    :goto_2
    const-string v6, "contained_within"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 115
    const-string v6, "contained_within"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 116
    .local v2, containedWithInJSON:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/Place;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    .line 117
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 118
    iget-object v6, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    new-instance v7, Ltwitter4j/PlaceJSONImpl;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Ltwitter4j/PlaceJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v7, v6, v4

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 81
    .end local v2           #containedWithInJSON:Lorg/json/JSONArray;
    .end local v4           #i:I
    :cond_0
    const-string v6, "type"

    invoke-static {v6, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->placeType:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v5

    .line 124
    .local v5, jsone:Lorg/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 91
    .end local v5           #jsone:Lorg/json/JSONException;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    .line 92
    const/4 v6, 0x0

    check-cast v6, [[Ltwitter4j/GeoLocation;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    goto/16 :goto_1

    .line 102
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #geometryJSON:Lorg/json/JSONObject;
    :cond_2
    iget-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    const-string v7, "Polygon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    invoke-static {v0}, Ltwitter4j/GeoLocation;->coordinatesAsGeoLocationArray(Lorg/json/JSONArray;)[[Ltwitter4j/GeoLocation;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    goto :goto_2

    .line 106
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 107
    const/4 v6, 0x0

    check-cast v6, [[Ltwitter4j/GeoLocation;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    goto :goto_2

    .line 110
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #geometryJSON:Lorg/json/JSONObject;
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 111
    const/4 v6, 0x0

    check-cast v6, [[Ltwitter4j/GeoLocation;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    goto/16 :goto_2

    .line 121
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :cond_6
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ltwitter4j/Place;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/PlaceJSONImpl;->compareTo(Ltwitter4j/Place;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Place;)I
    .locals 2
    .parameter "that"

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-interface {p1}, Ltwitter4j/Place;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    if-nez p1, :cond_1

    move v0, v1

    .line 233
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 230
    .restart local p1
    :cond_1
    if-eq p0, p1, :cond_0

    .line 233
    instance-of v2, p1, Ltwitter4j/Place;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Place;

    .end local p1
    invoke-interface {p1}, Ltwitter4j/Place;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getBoundingBoxCoordinates()[[Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getBoundingBoxType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    return-object v0
.end method

.method public getContainedWithIn()[Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometryCoordinates()[[Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->placeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x27

    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PlaceJSONImpl{name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", streetAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", countryCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", placeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->placeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", fullName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", boundingBoxType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", boundingBoxCoordinates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", geometryType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", geometryCoordinates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", containedWithIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method
