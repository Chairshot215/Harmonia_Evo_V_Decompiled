.class public Lcom/htc/android/worldclock/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/CityInfo$LocationColumns;,
        Lcom/htc/android/worldclock/CityInfo$CityColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method public static declared-synchronized deleteCity(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 139
    const-class v2, Lcom/htc/android/worldclock/CityInfo;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 139
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getCityCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7
    .parameter "contentResolver"

    .prologue
    .line 92
    const-class v6, Lcom/htc/android/worldclock/CityInfo;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 93
    sget-object v1, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CITY_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "seq ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized insertCity(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "seq"
    .parameter "id"
    .parameter "name"
    .parameter "shortName"

    .prologue
    .line 79
    const-class v4, Lcom/htc/android/worldclock/CityInfo;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 80
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 81
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "seq"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v3, "cityId"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "cityName"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "cityNameShort"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v3, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 87
    .local v1, uri:Landroid/net/Uri;
    monitor-exit v4

    return-object v1

    .line 79
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized queryCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 145
    const-class v8, Lcom/htc/android/worldclock/CityInfo;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 146
    const/4 v6, -0x1

    .line 147
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 150
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 154
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_1
    monitor-exit v8

    return v6

    .line 145
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #count:I
    .end local v7           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public static declared-synchronized updateCitySeq(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/worldclock/CityTime;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, myList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/CityTime;>;"
    const/4 v10, 0x0

    .line 99
    const-class v11, Lcom/htc/android/worldclock/CityInfo;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 104
    .local v6, size:I
    const/4 v7, 0x0

    .line 105
    .local v7, updated:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 106
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/htc/android/worldclock/CityInfo;->getCityCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 107
    .local v1, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_6

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 110
    :cond_0
    const/4 v7, 0x0

    .line 111
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 112
    .local v3, id:I
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 113
    .local v5, seq:I
    const/4 v9, 0x3

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, cityName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 115
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/worldclock/CityTime;

    invoke-virtual {v9}, Lcom/htc/android/worldclock/CityTime;->getCityName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 116
    if-eq v2, v5, :cond_1

    .line 117
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 118
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "seq"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    sget-object v9, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v12, v3

    invoke-static {v9, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v9, v8, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v7, 0x1

    .line 126
    :cond_2
    if-nez v7, :cond_3

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: cannot find city "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 129
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    .end local v0           #cityName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v5           #seq:I
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v10

    .line 134
    :goto_1
    monitor-exit v11

    return v9

    .line 114
    .restart local v0       #cityName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #id:I
    .restart local v5       #seq:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v0           #cityName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v5           #seq:I
    :cond_6
    const/4 v9, -0x1

    goto :goto_1

    .line 99
    .end local v1           #cur:Landroid/database/Cursor;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v6           #size:I
    .end local v7           #updated:Z
    :catchall_0
    move-exception v9

    monitor-exit v11

    throw v9
.end method
