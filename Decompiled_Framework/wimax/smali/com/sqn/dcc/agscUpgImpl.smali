.class public Lcom/sqn/dcc/agscUpgImpl;
.super Lcom/sqn/dcc/DccClient;
.source "agscUpgImpl.java"


# static fields
.field public static _use:Lcom/sqn/dcc/UpgClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccClient;-><init>()V

    return-void
.end method

.method public static CloseFile(IJLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v1, 0x3e80

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v1, [B

    move v3, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscCloseFile;->marshall([BILcom/sqn/dcc/OutValue;IJ)I

    move-result v9

    if-eqz v9, :cond_0

    move v1, v9

    :goto_0
    return v1

    :cond_0
    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v7, v1, [B

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v10, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscCloseFile;->_id:I

    const-string v3, "CloseFile"

    const/4 v4, 0x1

    invoke-static {v1, v3, v7, v4}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v1, v8

    invoke-static {v8, v1, v2, p3, p4}, Lcom/sqn/dcc/agscCloseFile;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    :goto_1
    move v1, v9

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v9, -0x1

    goto :goto_1

    :catch_1
    move-exception v6

    const/4 v9, -0x1

    goto :goto_1
.end method

.method public static OpenFile(ILjava/lang/String;Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x3e80

    new-array v0, v1, [B

    const/16 v1, 0x3e80

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscOpenFile;->marshall([BILcom/sqn/dcc/OutValue;ILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    move v1, v11

    :goto_0
    return v1

    :cond_0
    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v10, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v4, v10, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscOpenFile;->_id:I

    const-string v4, "OpenFile"

    const/4 v5, 0x1

    invoke-static {v1, v4, v10, v5}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v4, v3

    move-object v5, v2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Lcom/sqn/dcc/agscOpenFile;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    :goto_1
    move v1, v11

    goto :goto_0

    :catch_0
    move-exception v9

    const/4 v11, -0x1

    goto :goto_1

    :catch_1
    move-exception v9

    const/4 v11, -0x1

    goto :goto_1
.end method

.method public static ReadFile(IJILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    const/4 v12, 0x0

    new-instance v4, Lcom/sqn/dcc/OutValue;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x3e80

    new-array v2, v3, [B

    const/16 v3, 0x3e80

    move v5, p0

    move-wide v6, p1

    move/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/sqn/dcc/agscReadFile;->marshall([BILcom/sqn/dcc/OutValue;IJI)I

    move-result v12

    if-eqz v12, :cond_0

    move v3, v12

    :goto_0
    return v3

    :cond_0
    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v10, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v5, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v3, Lcom/sqn/dcc/agscReadFile;->_id:I

    const-string v5, "ReadFile"

    const/4 v6, 0x1

    invoke-static {v3, v5, v10, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v3, v11

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v11, v3, v4, v0, v1}, Lcom/sqn/dcc/agscReadFile;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    :goto_1
    move v3, v12

    goto :goto_0

    :catch_0
    move-exception v9

    const/4 v12, -0x1

    goto :goto_1

    :catch_1
    move-exception v9

    const/4 v12, -0x1

    goto :goto_1
.end method

.method public static ReadFileEx(JJJLcom/sqn/dcc/OutArray;Lcom/sqn/dcc/OutValue;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v14, 0x0

    new-instance v4, Lcom/sqn/dcc/OutValue;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x3e80

    new-array v2, v3, [B

    const/16 v3, 0x3e80

    move-wide v5, p0

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-static/range {v2 .. v10}, Lcom/sqn/dcc/agscReadFileEx;->marshall([BILcom/sqn/dcc/OutValue;JJJ)I

    move-result v14

    if-eqz v14, :cond_0

    move v3, v14

    :goto_0
    return v3

    :cond_0
    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v12, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v5, v12, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v3, Lcom/sqn/dcc/agscReadFileEx;->_id:I

    const-string v5, "ReadFileEx"

    const/4 v6, 0x1

    invoke-static {v3, v5, v12, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v13

    if-nez v13, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v3, v13

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static {v13, v3, v4, v0, v1}, Lcom/sqn/dcc/agscReadFileEx;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    :goto_1
    move v3, v14

    goto :goto_0

    :catch_0
    move-exception v11

    const/4 v14, -0x1

    goto :goto_1

    :catch_1
    move-exception v11

    const/4 v14, -0x1

    goto :goto_1
.end method

.method public static ReadNvm(JILcom/sqn/dcc/OutArray;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    const/16 v1, 0x3e80

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v1, [B

    move-wide v3, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscReadNvm;->marshall([BILcom/sqn/dcc/OutValue;JI)I

    move-result v9

    if-eqz v9, :cond_0

    move v1, v9

    :goto_0
    return v1

    :cond_0
    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v7, v1, [B

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v10, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscReadNvm;->_id:I

    const-string v3, "ReadNvm"

    const/4 v4, 0x1

    invoke-static {v1, v3, v7, v4}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v1, v8

    invoke-static {v8, v1, v2, p3}, Lcom/sqn/dcc/agscReadNvm;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    :goto_1
    move v1, v9

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v9, -0x1

    goto :goto_1

    :catch_1
    move-exception v6

    const/4 v9, -0x1

    goto :goto_1
.end method

.method public static SyncNvm(Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v7, 0x3e80

    const/4 v9, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v1, v7, [B

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscSyncNvm;->marshall([BILcom/sqn/dcc/OutValue;)I

    move-result v5

    if-eqz v5, :cond_0

    move v6, v5

    :goto_0
    return v6

    :cond_0
    iget-object v6, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v3, v6, [B

    iget-object v6, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v1, v9, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v6, Lcom/sqn/dcc/agscSyncNvm;->_id:I

    const-string v7, "SyncNvm"

    const/4 v8, 0x1

    invoke-static {v6, v7, v3, v8}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v6, v4

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscSyncNvm;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    :goto_1
    move v6, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v5, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v5, -0x1

    goto :goto_1
.end method

.method public static SysFormat(Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v7, 0x3e80

    const/4 v9, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v1, v7, [B

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscSysFormat;->marshall([BILcom/sqn/dcc/OutValue;)I

    move-result v5

    if-eqz v5, :cond_0

    move v6, v5

    :goto_0
    return v6

    :cond_0
    iget-object v6, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v3, v6, [B

    iget-object v6, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v1, v9, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v6, Lcom/sqn/dcc/agscSysFormat;->_id:I

    const-string v7, "SysFormat"

    const/4 v8, 0x1

    invoke-static {v6, v7, v3, v8}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v6, v4

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscSysFormat;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    :goto_1
    move v6, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v5, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v5, -0x1

    goto :goto_1
.end method

.method public static WriteFile(IJ[SLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ[S",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v12, 0x0

    new-instance v4, Lcom/sqn/dcc/OutValue;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x3e80

    new-array v2, v3, [B

    const/16 v3, 0x3e80

    move v5, p0

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/sqn/dcc/agscWriteFile;->marshall([BILcom/sqn/dcc/OutValue;IJ[S)I

    move-result v12

    if-eqz v12, :cond_0

    move v3, v12

    :goto_0
    return v3

    :cond_0
    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v10, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v5, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v3, Lcom/sqn/dcc/agscWriteFile;->_id:I

    const-string v5, "WriteFile"

    const/4 v6, 0x1

    invoke-static {v3, v5, v10, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v3, v11

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v11, v3, v4, v0, v1}, Lcom/sqn/dcc/agscWriteFile;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    :goto_1
    move v3, v12

    goto :goto_0

    :catch_0
    move-exception v9

    const/4 v12, -0x1

    goto :goto_1

    :catch_1
    move-exception v9

    const/4 v12, -0x1

    goto :goto_1
.end method

.method public static WriteFileEx(JJ[SLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[S",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v13, 0x0

    new-instance v4, Lcom/sqn/dcc/OutValue;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x3e80

    new-array v2, v3, [B

    const/16 v3, 0x3e80

    move-wide v5, p0

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/sqn/dcc/agscWriteFileEx;->marshall([BILcom/sqn/dcc/OutValue;JJ[S)I

    move-result v13

    if-eqz v13, :cond_0

    move v3, v13

    :goto_0
    return v3

    :cond_0
    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v11, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v5, v11, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v3, Lcom/sqn/dcc/agscWriteFileEx;->_id:I

    const-string v5, "WriteFileEx"

    const/4 v6, 0x1

    invoke-static {v3, v5, v11, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v12

    if-nez v12, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v3, v12

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v12, v3, v4, v0, v1}, Lcom/sqn/dcc/agscWriteFileEx;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    :goto_1
    move v3, v13

    goto :goto_0

    :catch_0
    move-exception v10

    const/4 v13, -0x1

    goto :goto_1

    :catch_1
    move-exception v10

    const/4 v13, -0x1

    goto :goto_1
.end method

.method public static WriteNvm(J[SLcom/sqn/dcc/OutValue;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[S",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v1, 0x3e80

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v1, [B

    move-wide v3, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscWriteNvm;->marshall([BILcom/sqn/dcc/OutValue;J[S)I

    move-result v9

    if-eqz v9, :cond_0

    move v1, v9

    :goto_0
    return v1

    :cond_0
    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v7, v1, [B

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v10, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscWriteNvm;->_id:I

    const-string v3, "WriteNvm"

    const/4 v4, 0x1

    invoke-static {v1, v3, v7, v4}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v1, v8

    invoke-static {v8, v1, v2, p3}, Lcom/sqn/dcc/agscWriteNvm;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    :goto_1
    move v1, v9

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v9, -0x1

    goto :goto_1

    :catch_1
    move-exception v6

    const/4 v9, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getServiceFromIndex(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/ServiceType;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/ServiceType;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iput v3, p4, Lcom/sqn/dcc/ServiceType;->value:I

    if-nez p1, :cond_0

    const-string v1, "SyncNvm"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscSyncNvm;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string v1, "ReadNvm"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscReadNvm;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    const-string v1, "WriteNvm"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscWriteNvm;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string v1, "SysFormat"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscSysFormat;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    const-string v1, "ReadFileEx"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscReadFileEx;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    const-string v1, "ReadFile"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscReadFile;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    const-string v1, "WriteFileEx"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscWriteFileEx;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne p1, v2, :cond_7

    const-string v1, "WriteFile"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscWriteFile;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    const-string v1, "CloseFile"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscCloseFile;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_9

    const-string v1, "OpenFile"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscOpenFile;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public getServicesQty()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public initialize(Lcom/sqn/dcc/UpgClient;)V
    .locals 1

    sput-object p1, Lcom/sqn/dcc/agscUpgImpl;->_use:Lcom/sqn/dcc/UpgClient;

    const-string v0, "upg"

    iput-object v0, p0, Lcom/sqn/dcc/DccClient;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sqn/dcc/DeviceController;->registerClient(Lcom/sqn/dcc/DccClient;)V

    return-void
.end method

.method public processNotification(I[B)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public resolveService(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SyncNvm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/sqn/dcc/agscSyncNvm;->_id:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "ReadNvm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput p2, Lcom/sqn/dcc/agscReadNvm;->_id:I

    goto :goto_0

    :cond_1
    const-string v1, "WriteNvm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput p2, Lcom/sqn/dcc/agscWriteNvm;->_id:I

    goto :goto_0

    :cond_2
    const-string v1, "SysFormat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput p2, Lcom/sqn/dcc/agscSysFormat;->_id:I

    goto :goto_0

    :cond_3
    const-string v1, "ReadFileEx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput p2, Lcom/sqn/dcc/agscReadFileEx;->_id:I

    goto :goto_0

    :cond_4
    const-string v1, "ReadFile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput p2, Lcom/sqn/dcc/agscReadFile;->_id:I

    goto :goto_0

    :cond_5
    const-string v1, "WriteFileEx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput p2, Lcom/sqn/dcc/agscWriteFileEx;->_id:I

    goto :goto_0

    :cond_6
    const-string v1, "WriteFile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput p2, Lcom/sqn/dcc/agscWriteFile;->_id:I

    goto :goto_0

    :cond_7
    const-string v1, "CloseFile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sput p2, Lcom/sqn/dcc/agscCloseFile;->_id:I

    goto :goto_0

    :cond_8
    const-string v1, "OpenFile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sput p2, Lcom/sqn/dcc/agscOpenFile;->_id:I

    goto :goto_0

    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method
