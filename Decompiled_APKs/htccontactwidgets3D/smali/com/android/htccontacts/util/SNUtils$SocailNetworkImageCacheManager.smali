.class public Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;
.super Ljava/lang/Object;
.source "SNUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/SNUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocailNetworkImageCacheManager"
.end annotation


# instance fields
.field final albumTable_name:Ljava/lang/String;

.field final cachetable_name:Ljava/lang/String;

.field final database_name:Ljava/lang/String;

.field id:Ljava/lang/String;

.field isLoadtoCacheMap:Z

.field last_icon_time:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field need_update:Ljava/lang/String;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 539
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const-string v0, "sn_info_cache.db"

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->database_name:Ljava/lang/String;

    .line 499
    const-string v0, "cache_image"

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->cachetable_name:Ljava/lang/String;

    .line 502
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->id:Ljava/lang/String;

    .line 503
    const-string v0, "path"

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->path:Ljava/lang/String;

    .line 504
    const-string v0, "need_update"

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->need_update:Ljava/lang/String;

    .line 505
    const-string v0, "last_icon_time"

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->last_icon_time:Ljava/lang/String;

    .line 507
    const-string v0, "cache_album"

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->albumTable_name:Ljava/lang/String;

    .line 540
    iput-object p1, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mContext:Landroid/content/Context;

    .line 541
    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isNeedFriendUpdate(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isNeedAlbumUpdate(J)Z

    move-result v0

    return v0
.end method

.method private getLastUpdateIconTime(JLjava/lang/String;)J
    .locals 8
    .parameter "rowid"
    .parameter "table"

    .prologue
    .line 626
    const-wide/16 v3, 0x0

    .line 627
    .local v3, result:J
    iget-object v5, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 628
    const-wide/16 v5, 0x0

    .line 642
    :goto_0
    return-wide v5

    .line 630
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 631
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select last_icon_time from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " where _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    iget-object v5, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 633
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 634
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 637
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-wide v5, v3

    .line 642
    goto :goto_0

    .line 639
    :catch_0
    move-exception v2

    .line 640
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastUpdateIconTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getPath(JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "rowid"
    .parameter "table"

    .prologue
    const/4 v4, 0x0

    .line 595
    const/4 v3, 0x0

    .line 596
    .local v3, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 613
    :goto_0
    return-object v4

    .line 600
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 601
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select path from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 603
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 604
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 607
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object v4, v3

    .line 613
    goto :goto_0

    .line 610
    :catch_0
    move-exception v2

    .line 611
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastUpdateIconTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private hasRowId(JLjava/lang/String;)Z
    .locals 7
    .parameter "userid"
    .parameter "table"

    .prologue
    .line 682
    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    .line 683
    const/4 v3, 0x0

    .line 700
    :cond_0
    :goto_0
    return v3

    .line 685
    :cond_1
    const/4 v3, 0x0

    .line 688
    .local v3, result:Z
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 689
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select _id from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 691
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 692
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    const/4 v3, 0x1

    .line 695
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 698
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasRowId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insert(JLjava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .parameter "userid"
    .parameter "table"
    .parameter "path"
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 750
    const/4 v1, 0x0

    .line 751
    .local v1, result:Z
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    move v2, v1

    .line 770
    :cond_0
    :goto_0
    return v2

    .line 753
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 757
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->hasRowId(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 758
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SET path=? ,  last_icon_time= ?  WHERE _id = ?; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 770
    goto :goto_0

    .line 762
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (_id, path, need_update, last_icon_time) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VALUES(?, ? , 0 , ?)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    const/4 v5, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "SocailNetworkImageCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private isNeedAlbumUpdate(J)Z
    .locals 1
    .parameter "rowid"

    .prologue
    .line 650
    const-string v0, "cache_album"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isNeedUpdate(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNeedFriendUpdate(J)Z
    .locals 1
    .parameter "rowid"

    .prologue
    .line 646
    const-string v0, "cache_image"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isNeedUpdate(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNeedUpdate(JLjava/lang/String;)Z
    .locals 8
    .parameter "rowid"
    .parameter "table"

    .prologue
    const/4 v4, 0x0

    .line 654
    const/4 v3, 0x0

    .line 655
    .local v3, result:Z
    iget-object v5, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 670
    :goto_0
    return v4

    .line 658
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 659
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select need_update from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " where _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    iget-object v5, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 661
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 662
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 663
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v3, 0x1

    .line 665
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    move v4, v3

    .line 670
    goto :goto_0

    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_3
    move v3, v4

    .line 663
    goto :goto_1

    .line 667
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 668
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setHasUpdate(JLjava/lang/String;Z)V
    .locals 8
    .parameter "userid"
    .parameter "table"
    .parameter "isupdate"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 783
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    if-eqz p4, :cond_2

    .line 788
    .local v2, value:I
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->hasRowId(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 789
    iget-object v3, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SET need_update = ? WHERE _id = ?; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$000()Lcom/android/htccontacts/util/SNUtils;

    move-result-object v3

    #getter for: Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->access$100(Lcom/android/htccontacts/util/SNUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    .line 791
    .local v1, info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    if-eqz v1, :cond_0

    .line 792
    iput v2, v1, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->update:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    .end local v1           #info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    :catch_0
    move-exception v0

    .line 795
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHasUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v2           #value:I
    :cond_2
    move v2, v3

    .line 787
    goto :goto_1
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_image"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_album"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 805
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 816
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 817
    return-void
.end method

.method public delete(I)V
    .locals 4
    .parameter "userid"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 811
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 824
    :cond_0
    return-void
.end method

.method public getAlbumCachePath(J)Ljava/lang/String;
    .locals 1
    .parameter "album_row_id"

    .prologue
    .line 591
    const-string v0, "cache_album"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getPath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendCachePath(J)Ljava/lang/String;
    .locals 1
    .parameter "userid"

    .prologue
    .line 587
    const-string v0, "cache_image"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getPath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateAlbumIconTime(J)J
    .locals 2
    .parameter "userid"

    .prologue
    .line 622
    const-string v0, "cache_album"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getLastUpdateIconTime(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdateFriendIconTime(J)J
    .locals 2
    .parameter "userid"

    .prologue
    .line 618
    const-string v0, "cache_image"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getLastUpdateIconTime(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAlbumRowId(J)Z
    .locals 1
    .parameter "userid"

    .prologue
    .line 678
    const-string v0, "cache_album"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->hasRowId(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasFriendRowId(J)Z
    .locals 1
    .parameter "userid"

    .prologue
    .line 674
    const-string v0, "cache_image"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->hasRowId(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public insertAlbumCache(JLjava/lang/String;)Z
    .locals 12
    .parameter "userid"
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    .line 727
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 745
    :goto_0
    return v8

    .line 729
    :cond_0
    const/4 v8, 0x0

    .line 731
    .local v8, result:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 732
    .local v9, userCursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 733
    .local v5, icon_time:J
    if-eqz v9, :cond_2

    .line 734
    const-string v0, "update_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 735
    .local v7, idxSNLastCheckIconTime:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 738
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 740
    .end local v7           #idxSNLastCheckIconTime:I
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$000()Lcom/android/htccontacts/util/SNUtils;

    move-result-object v0

    #getter for: Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/htccontacts/util/SNUtils;->access$300(Lcom/android/htccontacts/util/SNUtils;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    const/4 v4, 0x0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$CacheInfo;-><init>(JLjava/lang/String;IJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v3, "cache_album"

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->insert(JLjava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 742
    .end local v5           #icon_time:J
    .end local v9           #userCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public insertFriendCache(JLjava/lang/String;)Z
    .locals 12
    .parameter "userid"
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    .line 704
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 723
    :goto_0
    return v8

    .line 706
    :cond_0
    const/4 v8, 0x0

    .line 708
    .local v8, result:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 709
    .local v9, userCursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 710
    .local v5, icon_time:J
    if-eqz v9, :cond_2

    .line 711
    const-string v0, "profile_update_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 712
    .local v7, idxSNLastCheckIconTime:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 715
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 718
    .end local v7           #idxSNLastCheckIconTime:I
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$000()Lcom/android/htccontacts/util/SNUtils;

    move-result-object v0

    #getter for: Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/htccontacts/util/SNUtils;->access$100(Lcom/android/htccontacts/util/SNUtils;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    const/4 v4, 0x0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$CacheInfo;-><init>(JLjava/lang/String;IJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v3, "cache_image"

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->insert(JLjava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 720
    .end local v5           #icon_time:J
    .end local v9           #userCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loadCacheDBonThread()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 573
    iget-boolean v1, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isLoadtoCacheMap:Z

    if-eqz v1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->loadCacheInfoToCacheMap()V

    .line 576
    new-instance v0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager$1;-><init>(Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;)V

    .line 581
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 582
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 583
    iput-boolean v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isLoadtoCacheMap:Z

    goto :goto_0
.end method

.method public loadCacheInfoToCacheMap()V
    .locals 11

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 517
    .local v7, buffer:Ljava/lang/StringBuffer;
    const-string v0, "select * from cache_image"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 523
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 524
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 526
    .local v1, rowId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, photo_path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 528
    .local v4, update:I
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 531
    .local v5, icon_time:J
    invoke-static {}, Lcom/android/htccontacts/util/SNUtils;->access$000()Lcom/android/htccontacts/util/SNUtils;

    move-result-object v0

    #getter for: Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/htccontacts/util/SNUtils;->access$100(Lcom/android/htccontacts/util/SNUtils;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$CacheInfo;-><init>(JLjava/lang/String;IJ)V

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 534
    .end local v1           #rowId:J
    .end local v3           #photo_path:Ljava/lang/String;
    .end local v4           #update:I
    .end local v5           #icon_time:J
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public loadDatabase()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mContext:Landroid/content/Context;

    const-string v3, "sn_info_cache.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 545
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE IF NOT EXISTS cache_image ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INTEGER PRIMARY KEY,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " String , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->need_update:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INTEGER DEFAULT 0 ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->last_icon_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INTEGER DEFAULT 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE IF NOT EXISTS cache_album ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INTEGER PRIMARY KEY,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " String , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->need_update:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INTEGER DEFAULT 0 ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->last_icon_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INTEGER DEFAULT 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 562
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->mContext:Landroid/content/Context;

    const-string v3, "sn_info_cache.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 565
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setAlbumHasUpdate(JZ)V
    .locals 1
    .parameter "userid"
    .parameter "isupdate"

    .prologue
    .line 778
    const-string v0, "cache_album"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->setHasUpdate(JLjava/lang/String;Z)V

    .line 779
    return-void
.end method

.method public setFriendHasUpdate(JZ)V
    .locals 1
    .parameter "userid"
    .parameter "isupdate"

    .prologue
    .line 774
    const-string v0, "cache_image"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->setHasUpdate(JLjava/lang/String;Z)V

    .line 775
    return-void
.end method
