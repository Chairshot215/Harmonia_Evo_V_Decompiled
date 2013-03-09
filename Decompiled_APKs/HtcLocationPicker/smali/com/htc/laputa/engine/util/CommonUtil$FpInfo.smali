.class public Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/CommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FpInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/CommonUtil$FpInfo$FpColumns;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAddr:Ljava/lang/String;

.field public mIconPath:Ljava/lang/String;

.field public mLat:D

.field public mLon:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 368
    const-class v0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 380
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v2, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mAddr:Ljava/lang/String;

    .line 370
    iput-object v2, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mIconPath:Ljava/lang/String;

    .line 371
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLat:D

    .line 372
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLon:D

    .line 382
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 3
    .parameter "addr"
    .parameter "iconPath"
    .parameter "lat"
    .parameter "lon"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v2, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mAddr:Ljava/lang/String;

    .line 370
    iput-object v2, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mIconPath:Ljava/lang/String;

    .line 371
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLat:D

    .line 372
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLon:D

    .line 376
    iput-object p1, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mIconPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLat:D

    iput-wide p5, p0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLon:D

    .line 377
    return-void
.end method

.method protected static prepareFpData(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 36
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, bndlList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    sget-object v3, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v6, "prepareFpData(resolver, fpBndlList)"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 509
    .local v27, mapFidDs2FpBndl:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    const/4 v7, 0x0

    .line 513
    .local v7, fid_ds:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 514
    .local v9, N:I
    const/4 v11, 0x0

    .line 515
    .local v11, bndl:Landroid/os/Bundle;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v9, :cond_4

    .line 517
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #bndl:Landroid/os/Bundle;
    check-cast v11, Landroid/os/Bundle;

    .line 518
    .restart local v11       #bndl:Landroid/os/Bundle;
    const v3, 0xff02

    const-string v6, "root_category"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 520
    const-string v3, "street"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "icon_path"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "latitude"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "longitude"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 523
    :cond_2
    const-string v3, "%s,%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v33, "id"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v6, v8

    const/4 v8, 0x1

    const-string v33, "data_source"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 524
    .local v28, s:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .end local v28           #s:Ljava/lang/String;
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 531
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 532
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 536
    :cond_5
    if-nez v7, :cond_6

    .line 538
    sget-object v3, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v6, "    No fp data to prepare."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    :cond_6
    const/16 v18, 0x0

    .line 547
    .local v18, cursor:Landroid/database/Cursor;
    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "addr"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "pic_name"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "latitude"

    aput-object v6, v5, v3

    const/4 v3, 0x4

    const-string v6, "longitude"

    aput-object v6, v5, v3

    .line 548
    .local v5, columns:[Ljava/lang/String;
    const-string v3, "content://com.htc.laputa.lb.provider.LbContentProvider/footprint"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 552
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 553
    .local v31, tStart:J
    const-string v6, ""

    const-string v8, ""

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 555
    .local v29, tEnd:J
    sget-object v3, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v6, "!!!!query:%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v33, 0x0

    sub-long v34, v29, v31

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v8, v33

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    if-eqz v18, :cond_7

    .line 560
    const-string v3, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 561
    .local v15, col_idx_id:I
    const-string v3, "datasource"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 562
    .local v13, col_idx_ds:I
    const-string v3, "addr"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 563
    .local v12, col_idx_addr:I
    const-string v3, "pic_path"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 564
    .local v14, col_idx_icon_path:I
    const-string v3, "latitude_double"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 565
    .local v16, col_idx_lat_d:I
    const-string v3, "longitude_double"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 567
    .local v17, col_idx_lon_d:I
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 569
    const-string v3, "%s,%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 570
    .restart local v28       #s:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, addr:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 572
    .local v22, iconPath:Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v23

    .line 573
    .local v23, lat:D
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v25

    .line 575
    .local v25, lon:D
    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Bundle;

    .line 577
    .local v20, fpBndl:Landroid/os/Bundle;
    const-string v3, "street"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v3, "full_address"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v3, "icon_path"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v3, "latitude"

    move-object/from16 v0, v20

    move-wide/from16 v1, v23

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 581
    const-string v3, "longitude"

    move-object/from16 v0, v20

    move-wide/from16 v1, v25

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 584
    sget-object v3, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v6, "!!!!mAddr: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v33, 0x0

    aput-object v10, v8, v33

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    sget-object v3, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v6, "!!!!mIconPath: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v33, 0x0

    aput-object v22, v8, v33

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object v3, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v6, "!!!!mLat: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v33, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    aput-object v34, v8, v33

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    sget-object v3, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v6, "!!!!mLon: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v33, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    aput-object v34, v8, v33

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 591
    .end local v10           #addr:Ljava/lang/String;
    .end local v12           #col_idx_addr:I
    .end local v13           #col_idx_ds:I
    .end local v14           #col_idx_icon_path:I
    .end local v15           #col_idx_id:I
    .end local v16           #col_idx_lat_d:I
    .end local v17           #col_idx_lon_d:I
    .end local v20           #fpBndl:Landroid/os/Bundle;
    .end local v22           #iconPath:Ljava/lang/String;
    .end local v23           #lat:D
    .end local v25           #lon:D
    .end local v28           #s:Ljava/lang/String;
    .end local v29           #tEnd:J
    .end local v31           #tStart:J
    :catch_0
    move-exception v19

    .line 594
    .local v19, ex:Ljava/lang/Exception;
    :try_start_1
    const-class v3, Lcom/htc/laputa/engine/util/CommonUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "prepareFpData failed."

    move-object/from16 v0, v19

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    if-eqz v18, :cond_0

    .line 600
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 599
    .end local v19           #ex:Ljava/lang/Exception;
    .restart local v29       #tEnd:J
    .restart local v31       #tStart:J
    :cond_7
    if-eqz v18, :cond_0

    .line 600
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 599
    .end local v29           #tEnd:J
    .end local v31           #tStart:J
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_8

    .line 600
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method protected static queryFpProvider(Landroid/content/ContentResolver;ILjava/lang/String;)Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .locals 25
    .parameter "resolver"
    .parameter "fid"
    .parameter "ds"

    .prologue
    .line 438
    sget-object v2, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v5, "query(resolver, %d, %s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "%s,%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    .line 445
    .local v6, fid_ds:[Ljava/lang/String;
    const/16 v20, 0x0

    .line 446
    .local v20, fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    const/16 v18, 0x0

    .line 451
    .local v18, cursor:Landroid/database/Cursor;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "addr"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "pic_name"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "latitude"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "longitude"

    aput-object v5, v4, v2

    .line 452
    .local v4, columns:[Ljava/lang/String;
    const-string v2, "content://com.htc.laputa.lb.provider.LbContentProvider/footprint"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 456
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 457
    .local v23, tStart:J
    const-string v5, ""

    const-string v7, ""

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 459
    .local v21, tEnd:J
    sget-object v2, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v5, "!!!!query:%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long v10, v21, v23

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eqz v18, :cond_0

    .line 464
    const-string v2, "addr"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 465
    .local v14, col_idx_addr:I
    const-string v2, "pic_path"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 466
    .local v15, col_idx_icon_path:I
    const-string v2, "latitude_double"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 467
    .local v16, col_idx_lat_d:I
    const-string v2, "longitude_double"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 469
    .local v17, col_idx_lon_d:I
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    new-instance v7, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-direct/range {v7 .. v13}, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v20           #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .local v7, fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    :try_start_1
    sget-object v2, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v5, "!!!!mAddr: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v7, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mAddr:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v2, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v5, "!!!!mIconPath: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v7, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mIconPath:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v2, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v5, "!!!!mLat: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, v7, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLat:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    sget-object v2, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->TAG:Ljava/lang/String;

    const-string v5, "!!!!mLon: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, v7, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->mLon:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v20, v7

    .end local v7           #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .restart local v20       #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    goto :goto_0

    .end local v14           #col_idx_addr:I
    .end local v15           #col_idx_icon_path:I
    .end local v16           #col_idx_lat_d:I
    .end local v17           #col_idx_lon_d:I
    :cond_0
    move-object/from16 v7, v20

    .line 494
    .end local v20           #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .restart local v7       #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    if-eqz v18, :cond_1

    .line 495
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 497
    .end local v21           #tEnd:J
    .end local v23           #tStart:J
    :cond_1
    :goto_1
    return-object v7

    .line 485
    .end local v7           #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .restart local v20       #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    :catch_0
    move-exception v19

    move-object/from16 v7, v20

    .line 488
    .end local v20           #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .restart local v7       #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .local v19, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-class v2, Lcom/htc/laputa/engine/util/CommonUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "queryFpProvider failed."

    move-object/from16 v0, v19

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 489
    const/4 v7, 0x0

    .line 494
    if-eqz v18, :cond_1

    .line 495
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 494
    .end local v7           #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .end local v19           #ex:Ljava/lang/Exception;
    .restart local v20       #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    :catchall_0
    move-exception v2

    move-object/from16 v7, v20

    .end local v20           #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    .restart local v7       #fi:Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;
    :goto_3
    if-eqz v18, :cond_2

    .line 495
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 494
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 485
    .restart local v14       #col_idx_addr:I
    .restart local v15       #col_idx_icon_path:I
    .restart local v16       #col_idx_lat_d:I
    .restart local v17       #col_idx_lon_d:I
    .restart local v21       #tEnd:J
    .restart local v23       #tStart:J
    :catch_1
    move-exception v19

    goto :goto_2
.end method
