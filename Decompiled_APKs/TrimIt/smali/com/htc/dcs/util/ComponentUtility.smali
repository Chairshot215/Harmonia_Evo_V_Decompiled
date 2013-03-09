.class public Lcom/htc/dcs/util/ComponentUtility;
.super Ljava/lang/Object;
.source "ComponentUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;
    }
.end annotation


# static fields
.field private static final SEPARATE:Ljava/lang/String; = ";"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static getCurrentLocationInfo(Landroid/content/ContentResolver;)Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 126
    new-instance v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;

    invoke-direct {v2}, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;-><init>()V

    .line 127
    .local v2, info:Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;
    const-string v8, "com.htc.htclocationservice"

    invoke-static {p0, v8}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 128
    .local v1, current:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v1, :cond_0

    array-length v8, v1

    if-eq v8, v10, :cond_1

    .line 129
    :cond_0
    iput-boolean v9, v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->status:Z

    .line 153
    :goto_0
    return-object v2

    .line 133
    :cond_1
    aget-object v8, v1, v9

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, n1:Ljava/lang/String;
    aget-object v8, v1, v9

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, n2:Ljava/lang/String;
    aget-object v8, v1, v9

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, n3:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v5, :cond_2

    const-string v5, ""

    .end local v5           #n1:Ljava/lang/String;
    :cond_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_3

    const-string v6, ""

    .end local v6           #n2:Ljava/lang/String;
    :cond_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v7, :cond_4

    const-string v7, ""

    .end local v7           #n3:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, curName:Ljava/lang/String;
    aget-object v8, v1, v9

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, latitude:Ljava/lang/String;
    aget-object v8, v1, v9

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, longitude:Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v4, :cond_5

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 140
    :cond_5
    iput-boolean v9, v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->status:Z

    goto :goto_0

    .line 143
    :cond_6
    iput-boolean v10, v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->status:Z

    .line 144
    iput-object v3, v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->latitude:Ljava/lang/String;

    .line 145
    iput-object v4, v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->longitude:Ljava/lang/String;

    .line 147
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_cur_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/htc/dcs/util/ComponentUtility;->trimLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/htc/dcs/util/ComponentUtility;->trimLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->paramStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_cur_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->paramStr:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static loadWeatherData(Landroid/content/ContentResolver;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 14
    .parameter "cr"
    .parameter "params"

    .prologue
    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v8, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/os/Bundle;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v5, v0, v2

    .line 31
    .local v5, param:Landroid/os/Bundle;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v7, ret:Landroid/os/Bundle;
    const-string v6, ""

    .line 35
    .local v6, paramStr:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 36
    const-string v9, "status"

    const/4 v10, -0x3

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v9, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const-string v9, "cityCode"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 41
    const-string v9, "cityCode"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://com.htc.dcs.provider.weather/data/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v9, v10, v11}, Lcom/htc/dcs/util/ComponentUtility;->query(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 68
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_5

    .line 69
    const-string v9, "status"

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v9, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v9, "latitude"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "longitude"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 45
    const-string v9, "currentLocation"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "currentLocation"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 46
    invoke-static {p0}, Lcom/htc/dcs/util/ComponentUtility;->getCurrentLocationInfo(Landroid/content/ContentResolver;)Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;

    move-result-object v3

    .line 47
    .local v3, info:Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;
    iget-boolean v9, v3, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->status:Z

    if-eqz v9, :cond_2

    .line 48
    iget-object v6, v3, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->paramStr:Ljava/lang/String;

    goto :goto_2

    .line 50
    :cond_2
    const-string v9, "status"

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v9, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    .end local v3           #info:Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_loc_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "latitude"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "longitude"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 60
    :cond_4
    const-string v9, "status"

    const/4 v10, -0x3

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v9, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 73
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 75
    const-string v9, "status"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v9, "updateTime"

    const-string v10, "updateTime"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    const-string v9, "zoneOffset"

    const-string v10, "zoneOffset"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v9, "updateTimeGMT"

    const-string v10, "updateTime"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "zoneOffset"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    const-string v9, "name"

    const-string v10, "name"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v9, "country"

    const-string v10, "country"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v9, "currentTempC"

    const-string v10, "currentTempC"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v9, "currentTempF"

    const-string v10, "currentTempF"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v9, "currentIcon"

    const-string v10, "currentIcon"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v9, "currentCondition"

    const-string v10, "currentCondition"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v9, "currentTime"

    const-string v10, "currentTime"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v9, "totalForecast"

    const-string v10, "totalForecast"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v9, "forecastDate"

    const-string v10, "forecastDate"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    const-string v9, "forecastName"

    const-string v10, "forecastName"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    const-string v9, "forecastIcon"

    const-string v10, "forecastIcon"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    const-string v9, "forecastCondition"

    const-string v10, "forecastCondition"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    const-string v9, "forecastHighTempC"

    const-string v10, "forecastHighTempC"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    const-string v9, "forecastLowTempC"

    const-string v10, "forecastLowTempC"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    const-string v9, "forecastHighTempF"

    const-string v10, "forecastHighTempF"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    const-string v9, "forecastLowTempF"

    const-string v10, "forecastLowTempF"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    const-string v9, "forecastWindDir"

    const-string v10, "forecastWindDir"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    const-string v9, "forecastWindSpeedkph"

    const-string v10, "forecastWindSpeedkph"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    const-string v9, "forecastWindSpeedmph"

    const-string v10, "forecastWindSpeedmph"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    const-string v9, "forecastWindSpeedmps"

    const-string v10, "forecastWindSpeedmps"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    const-string v9, "forecastUvi"

    const-string v10, "forecastUvi"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 103
    :cond_6
    const-string v9, "status"

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v9, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 111
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v5           #param:Landroid/os/Bundle;
    .end local v6           #paramStr:Ljava/lang/String;
    .end local v7           #ret:Landroid/os/Bundle;
    :cond_7
    const/4 v9, 0x0

    new-array v9, v9, [Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    return-object v9
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "where"
    .parameter "sortOrder"

    .prologue
    const/4 v2, 0x0

    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static trimLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "loc"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    const-string v1, "[.]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, tmp:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 164
    .end local p0
    :goto_0
    return-object p0

    .line 161
    .restart local p0
    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 162
    aget-object v1, v0, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
