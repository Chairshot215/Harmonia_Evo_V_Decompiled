.class Lcom/android/i18n/addressinput/RegionDataConstants;
.super Ljava/lang/Object;
.source "RegionDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;
    }
.end annotation


# static fields
.field private static final COUNTRY_FORMAT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 404
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/i18n/addressinput/RegionDataConstants;->COUNTRY_FORMAT_MAP:Ljava/util/Map;

    .line 408
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;->values()[Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;

    move-result-object v0

    .local v0, arr$:[Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 409
    .local v3, region:Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;
    sget-object v4, Lcom/android/i18n/addressinput/RegionDataConstants;->COUNTRY_FORMAT_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;->getJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v3           #region:Lcom/android/i18n/addressinput/RegionDataConstants$RegionDataEnum;
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static convertArrayToJsonString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v1, object:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 40
    :try_start_0
    aget-object v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 41
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static getCountryFormatMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lcom/android/i18n/addressinput/RegionDataConstants;->COUNTRY_FORMAT_MAP:Ljava/util/Map;

    return-object v0
.end method
