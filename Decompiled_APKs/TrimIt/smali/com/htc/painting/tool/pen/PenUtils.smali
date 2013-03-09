.class public Lcom/htc/painting/tool/pen/PenUtils;
.super Ljava/lang/Object;
.source "PenUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PenUtils"

.field private static final _DEBUG:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPen(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/tool/pen/Pen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllPen() start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 217
    .local v6, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 218
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 221
    .local v9, retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/tool/pen/PenPropsDatabase;->URI_PEN_PROPS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 228
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 230
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 231
    .local v11, size:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v9           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .local v10, retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    :cond_0
    invoke-static {v7, v6}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->getPen(Landroid/database/Cursor;Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;

    move-result-object v8

    .line 236
    .local v8, pen:Lcom/htc/painting/tool/pen/Pen;
    if-eqz v8, :cond_1

    .line 237
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .end local v8           #pen:Lcom/htc/painting/tool/pen/Pen;
    :cond_2
    move-object v9, v10

    .line 245
    .end local v10           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .end local v11           #size:I
    .restart local v9       #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    :cond_3
    if-eqz v7, :cond_4

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_4
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllPen() end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-object v9

    .line 245
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v7, :cond_5

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 245
    .end local v9           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .restart local v10       #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .restart local v11       #size:I
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .restart local v9       #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    goto :goto_0
.end method

.method public static getDefaultPen(Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;
    .locals 9
    .parameter "ctx"

    .prologue
    .line 163
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPen() start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 167
    .local v6, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 168
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 171
    .local v8, pen:Lcom/htc/painting/tool/pen/Pen;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/tool/pen/PenPropsDatabase;->URI_PEN_PROPS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 178
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 180
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->checkFlags(Landroid/database/Cursor;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-static {v7, v6}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->getPen(Landroid/database/Cursor;Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 194
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_2
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPen() end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v8

    .line 188
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getPen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/painting/tool/pen/Pen;
    .locals 10
    .parameter "ctx"
    .parameter "pkgName"
    .parameter "penName"

    .prologue
    .line 79
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPen() start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 83
    .local v6, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 84
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 87
    .local v9, retPen:Lcom/htc/painting/tool/pen/Pen;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/tool/pen/PenPropsDatabase;->URI_PEN_PROPS:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packagename=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 95
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {v7, v6}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->getPen(Landroid/database/Cursor;Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 109
    :cond_0
    if-eqz v7, :cond_1

    .line 110
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_1
    :goto_0
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPen() end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v9

    .line 102
    :catch_0
    move-exception v8

    .line 104
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t query pen as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v7, :cond_1

    .line 110
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 110
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPensByPackagename(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "ctx"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/tool/pen/Pen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPensByPackagename() start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 33
    .local v6, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 34
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 37
    .local v9, retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/tool/pen/PenPropsDatabase;->URI_PEN_PROPS:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packagename=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 44
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 47
    .local v11, size:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v9           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .local v10, retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    :cond_0
    invoke-static {v7, v6}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->getPen(Landroid/database/Cursor;Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;

    move-result-object v8

    .line 52
    .local v8, pen:Lcom/htc/painting/tool/pen/Pen;
    if-eqz v8, :cond_1

    .line 53
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .end local v8           #pen:Lcom/htc/painting/tool/pen/Pen;
    :cond_2
    move-object v9, v10

    .line 61
    .end local v10           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .end local v11           #size:I
    .restart local v9       #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    :cond_3
    if-eqz v7, :cond_4

    .line 62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_4
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPensByPackagename() end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v9

    .line 61
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v7, :cond_5

    .line 62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 61
    .end local v9           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .restart local v10       #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .restart local v11       #size:I
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    .restart local v9       #retPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    goto :goto_0
.end method

.method public static getSimplePen(Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;
    .locals 9
    .parameter "ctx"

    .prologue
    .line 120
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimplePen() start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 124
    .local v6, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 125
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 128
    .local v8, pen:Lcom/htc/painting/tool/pen/Pen;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/tool/pen/PenPropsDatabase;->URI_PEN_PROPS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 135
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->checkFlags(Landroid/database/Cursor;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-static {v7, v6}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->getPen(Landroid/database/Cursor;Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 151
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_2
    const-string v0, "PenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimplePen() end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v8

    .line 145
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
