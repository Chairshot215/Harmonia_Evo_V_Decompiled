.class Lcom/google/android/location/GeocodeProvider;
.super Lcom/android/location/provider/GeocodeProvider;
.source "GeocodeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/location/provider/GeocodeProvider;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public onGetFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {p6}, Landroid/location/GeocoderParams;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p6}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/os/real/GlsClient;->reverseGeocode(Ljava/util/Locale;Ljava/lang/String;DDILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v8

    .line 48
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 50
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "GeocodeProvider"

    const-string v1, "getFromLocation got exception:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGetFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p12

    invoke-static/range {v0 .. v12}, Lcom/google/android/location/os/real/GlsClient;->forwardGeocode(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;DDDDILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v13

    .line 66
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    .end local v13           #e:Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 68
    .local v13, e:Ljava/lang/Exception;
    const-string v0, "GeocodeProvider"

    const-string v1, "getFromLocationName got exception:"

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method
