.class public Lcom/sqn/dcc/agscNdssImpl;
.super Lcom/sqn/dcc/DccClient;
.source "agscNdssImpl.java"


# static fields
.field public static _use:Lcom/sqn/dcc/NdssClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccClient;-><init>()V

    return-void
.end method

.method public static ChangeBandConfig(Lcom/sqn/dcc/ProvisionedBand;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/ProvisionedBand;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscChangeBandConfig;->marshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/ProvisionedBand;)I

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

    sget v6, Lcom/sqn/dcc/agscChangeBandConfig;->_id:I

    const-string v7, "changeBandConfig"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscChangeBandConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static ChangeChannelConfig(Lcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/ProvisionedChannel;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscChangeChannelConfig;->marshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/ProvisionedChannel;)I

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

    sget v6, Lcom/sqn/dcc/agscChangeChannelConfig;->_id:I

    const-string v7, "changeChannelConfig"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscChangeChannelConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static ClearChannelList(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscClearChannelList;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscClearChannelList;->_id:I

    const-string v7, "clearChannelList"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscClearChannelList;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static ConnectToNetwork(IJSILcom/sqn/dcc/OutValue;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJSI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v12, 0x0

    new-instance v3, Lcom/sqn/dcc/OutValue;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x3e80

    new-array v1, v2, [B

    const/16 v2, 0x3e80

    move v4, p0

    move-wide v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v1 .. v8}, Lcom/sqn/dcc/agscConnectToNetwork;->marshall([BILcom/sqn/dcc/OutValue;IJSI)I

    move-result v12

    if-eqz v12, :cond_0

    move v2, v12

    :goto_0
    return v2

    :cond_0
    iget-object v2, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v10, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v4, v10, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v2, Lcom/sqn/dcc/agscConnectToNetwork;->_id:I

    const-string v4, "connectToNetwork"

    const/4 v5, 0x1

    invoke-static {v2, v4, v10, v5}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v2, v11

    move-object/from16 v0, p5

    invoke-static {v11, v2, v3, v0}, Lcom/sqn/dcc/agscConnectToNetwork;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    :goto_1
    move v2, v12

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

.method public static ConnectToNetworkExt(IJJSILcom/sqn/dcc/OutValue;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJSI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v14, 0x0

    new-instance v3, Lcom/sqn/dcc/OutValue;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x3e80

    new-array v1, v2, [B

    const/16 v2, 0x3e80

    move v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/sqn/dcc/agscConnectToNetworkExt;->marshall([BILcom/sqn/dcc/OutValue;IJJSI)I

    move-result v14

    if-eqz v14, :cond_0

    move v2, v14

    :goto_0
    return v2

    :cond_0
    iget-object v2, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v12, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v4, v12, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v2, Lcom/sqn/dcc/agscConnectToNetworkExt;->_id:I

    const-string v4, "connectToNetworkExt"

    const/4 v5, 0x1

    invoke-static {v2, v4, v12, v5}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v13

    if-nez v13, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v2, v13

    move-object/from16 v0, p7

    invoke-static {v13, v2, v3, v0}, Lcom/sqn/dcc/agscConnectToNetworkExt;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    :goto_1
    move v2, v14

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

.method public static DisconnectFromNetwork(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscDisconnectFromNetwork;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscDisconnectFromNetwork;->_id:I

    const-string v7, "disconnectFromNetwork"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscDisconnectFromNetwork;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetBandConfig(JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/ProvisionedBand;",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscGetBandConfig;->marshall([BILcom/sqn/dcc/OutValue;J)I

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

    sget v6, Lcom/sqn/dcc/agscGetBandConfig;->_id:I

    const-string v7, "getBandConfig"

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

    invoke-static {v4, v6, v2, p2, p3}, Lcom/sqn/dcc/agscGetBandConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetBandList(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedBand;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetBandList;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetBandList;->_id:I

    const-string v7, "getBandList"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetBandList;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetChannelConfig(JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/ProvisionedChannel;",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscGetChannelConfig;->marshall([BILcom/sqn/dcc/OutValue;J)I

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

    sget v6, Lcom/sqn/dcc/agscGetChannelConfig;->_id:I

    const-string v7, "getChannelConfig"

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

    invoke-static {v4, v6, v2, p2, p3}, Lcom/sqn/dcc/agscGetChannelConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetChannelList(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedChannel;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetChannelList;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetChannelList;->_id:I

    const-string v7, "getChannelList"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetChannelList;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetEntryCriteriaStatus(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v3, 0x3e80

    const/4 v5, 0x0

    const/4 v9, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v7, v3, [B

    invoke-static {v7, v3, v2}, Lcom/sqn/dcc/agscGetEntryCriteriaStatus;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    new-array v8, v1, [B

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v7, v5, v8, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscGetEntryCriteriaStatus;->_id:I

    const-string v3, "getEntryCriteriaStatus"

    const/4 v4, 0x1

    invoke-static {v1, v3, v8, v4}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v1, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscGetEntryCriteriaStatus;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetExitCriteriaStatus(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v3, 0x3e80

    const/4 v5, 0x0

    const/4 v9, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v7, v3, [B

    invoke-static {v7, v3, v2}, Lcom/sqn/dcc/agscGetExitCriteriaStatus;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    new-array v8, v1, [B

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v7, v5, v8, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscGetExitCriteriaStatus;->_id:I

    const-string v3, "getExitCriteriaStatus"

    const/4 v4, 0x1

    invoke-static {v1, v3, v8, v4}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v1, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscGetExitCriteriaStatus;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetHomeNsp(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetHomeNsp;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetHomeNsp;->_id:I

    const-string v7, "getHomeNsp"

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

    invoke-static {v4, v6, v2, p0, p1}, Lcom/sqn/dcc/agscGetHomeNsp;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetNdsBackoffConfig(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/16 v7, 0x3e80

    const/4 v9, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v1, v7, [B

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetNdsBackoffConfig;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetNdsBackoffConfig;->_id:I

    const-string v7, "getNdsBackoffConfig"

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

    invoke-static {v4, v6, v2, p0, p1}, Lcom/sqn/dcc/agscGetNdsBackoffConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetNdsConfig(Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/ConnectionConfig;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetNdsConfig;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetNdsConfig;->_id:I

    const-string v7, "getNdsConfig"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetNdsConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetNdsState(Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetNdsState;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetNdsState;->_id:I

    const-string v7, "getNdsState"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetNdsState;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetProvisionedNaps(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedNap;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetProvisionedNaps;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetProvisionedNaps;->_id:I

    const-string v7, "getProvisionedNaps"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetProvisionedNaps;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetProvisionedNsps(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedNsp;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetProvisionedNsps;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetProvisionedNsps;->_id:I

    const-string v7, "getProvisionedNsps"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetProvisionedNsps;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetScanProgress(Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetScanProgress;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetScanProgress;->_id:I

    const-string v7, "getScanProgress"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetScanProgress;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetScanResults(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ScanResult;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetScanResults;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetScanResults;->_id:I

    const-string v7, "getScanResults"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetScanResults;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetScanResultsExt(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ScanResultExt;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetScanResultsExt;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetScanResultsExt;->_id:I

    const-string v7, "getScanResultsExt"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetScanResultsExt;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetScanResultsExtBand(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ScanResultExtBand;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetScanResultsExtBand;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetScanResultsExtBand;->_id:I

    const-string v7, "getScanResultsExtBand"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetScanResultsExtBand;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static Scan(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscScan;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscScan;->_id:I

    const-string v7, "scan"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscScan;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetBandList([Lcom/sqn/dcc/ProvisionedBand;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedBand;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscSetBandList;->marshall([BILcom/sqn/dcc/OutValue;[Lcom/sqn/dcc/ProvisionedBand;)I

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

    sget v6, Lcom/sqn/dcc/agscSetBandList;->_id:I

    const-string v7, "setBandList"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscSetBandList;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetChannelList([Lcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedChannel;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscSetChannelList;->marshall([BILcom/sqn/dcc/OutValue;[Lcom/sqn/dcc/ProvisionedChannel;)I

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

    sget v6, Lcom/sqn/dcc/agscSetChannelList;->_id:I

    const-string v7, "setChannelList"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscSetChannelList;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetHomeNsp(Ljava/lang/String;[ILcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscSetHomeNsp;->marshall([BILcom/sqn/dcc/OutValue;Ljava/lang/String;[I)I

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

    sget v6, Lcom/sqn/dcc/agscSetHomeNsp;->_id:I

    const-string v7, "setHomeNsp"

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

    invoke-static {v4, v6, v2, p2}, Lcom/sqn/dcc/agscSetHomeNsp;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetInitialChannel(IIILcom/sqn/dcc/OutValue;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
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

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscSetInitialChannel;->marshall([BILcom/sqn/dcc/OutValue;III)I

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

    sget v1, Lcom/sqn/dcc/agscSetInitialChannel;->_id:I

    const-string v3, "setInitialChannel"

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

    invoke-static {v8, v1, v2, p3}, Lcom/sqn/dcc/agscSetInitialChannel;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetNdsBackoffConfig(IILcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscSetNdsBackoffConfig;->marshall([BILcom/sqn/dcc/OutValue;II)I

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

    sget v6, Lcom/sqn/dcc/agscSetNdsBackoffConfig;->_id:I

    const-string v7, "setNdsBackoffConfig"

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

    invoke-static {v4, v6, v2, p2}, Lcom/sqn/dcc/agscSetNdsBackoffConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/ConnectionConfig;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscSetNdsConfig;->marshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/ConnectionConfig;)I

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

    sget v6, Lcom/sqn/dcc/agscSetNdsConfig;->_id:I

    const-string v7, "setNdsConfig"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscSetNdsConfig;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetProvisionedNaps([Lcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedNap;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscSetProvisionedNaps;->marshall([BILcom/sqn/dcc/OutValue;[Lcom/sqn/dcc/ProvisionedNap;)I

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

    sget v6, Lcom/sqn/dcc/agscSetProvisionedNaps;->_id:I

    const-string v7, "setProvisionedNaps"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscSetProvisionedNaps;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetProvisionedNsps([Lcom/sqn/dcc/ProvisionedNsp;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedNsp;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscSetProvisionedNsps;->marshall([BILcom/sqn/dcc/OutValue;[Lcom/sqn/dcc/ProvisionedNsp;)I

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

    sget v6, Lcom/sqn/dcc/agscSetProvisionedNsps;->_id:I

    const-string v7, "setProvisionedNsps"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscSetProvisionedNsps;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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


# virtual methods
.method public getServiceFromIndex(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/ServiceType;)I
    .locals 5
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

    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iput v4, p4, Lcom/sqn/dcc/ServiceType;->value:I

    if-nez p1, :cond_0

    const-string v0, "getNdsBackoffConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetNdsBackoffConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    if-ne p1, v0, :cond_1

    const-string v0, "setNdsBackoffConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetNdsBackoffConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_3

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "backoffStopped"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscBackoffStopped;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "backoffStarted"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscBackoffStarted;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    const-string v0, "disconnectFromNetwork"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscDisconnectFromNetwork;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    const-string v0, "connectToNetworkExt"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscConnectToNetworkExt;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    const-string v0, "connectToNetwork"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscConnectToNetwork;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    if-ne p1, v3, :cond_9

    const-string v0, "setInitialChannel"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetInitialChannel;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_9
    const/16 v3, 0x8

    if-ne p1, v3, :cond_a

    const-string v0, "getExitCriteriaStatus"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetExitCriteriaStatus;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x9

    if-ne p1, v3, :cond_c

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_b

    move v0, v1

    :cond_b
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "autodetectExitCriteriaMet"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscAutodetectExitCriteriaMet;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xa

    if-ne p1, v3, :cond_d

    const-string v0, "getEntryCriteriaStatus"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetEntryCriteriaStatus;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xb

    if-ne p1, v3, :cond_f

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_e

    move v0, v1

    :cond_e
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "autodetectEntryCriteriaMetExtBand"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMetExtBand;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xc

    if-ne p1, v3, :cond_11

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_10

    move v0, v1

    :cond_10
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "autodetectEntryCriteriaMet"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMet;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xd

    if-ne p1, v3, :cond_13

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_12

    move v0, v1

    :cond_12
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "scanBsFoundExtBand"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscScanBsFoundExtBand;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xe

    if-ne p1, v3, :cond_14

    const-string v0, "getScanResultsExtBand"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetScanResultsExtBand;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xf

    if-ne p1, v3, :cond_16

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_15

    move v0, v1

    :cond_15
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "scanBsFoundExt"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscScanBsFoundExt;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x10

    if-ne p1, v3, :cond_17

    const-string v0, "getScanResultsExt"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetScanResultsExt;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x11

    if-ne p1, v3, :cond_19

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_18

    move v0, v1

    :cond_18
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "scanBsFound"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscScanBsFound;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x12

    if-ne p1, v3, :cond_1a

    const-string v0, "getScanResults"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetScanResults;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x13

    if-ne p1, v3, :cond_1c

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_1b

    move v0, v1

    :cond_1b
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "scanRoundCompleted"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscScanRoundCompleted;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x14

    if-ne p1, v3, :cond_1d

    const-string v0, "scan"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscScan;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x15

    if-ne p1, v3, :cond_1e

    const-string v0, "getNdsConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetNdsConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x16

    if-ne p1, v3, :cond_1f

    const-string v0, "setNdsConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetNdsConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x17

    if-ne p1, v3, :cond_21

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_20

    move v0, v1

    :cond_20
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "ndsStateChange"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscNdsStateChange;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x18

    if-ne p1, v0, :cond_22

    const-string v0, "getNdsState"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetNdsState;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x19

    if-ne p1, v0, :cond_23

    const-string v0, "getScanProgress"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetScanProgress;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_24

    const-string v0, "getBandList"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetBandList;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_25

    const-string v0, "getBandConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetBandConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_26

    const-string v0, "changeBandConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscChangeBandConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_27

    const-string v0, "setBandList"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetBandList;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_28

    const-string v0, "getChannelList"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetChannelList;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_29

    const-string v0, "getChannelConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetChannelConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x20

    if-ne p1, v0, :cond_2a

    const-string v0, "changeChannelConfig"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscChangeChannelConfig;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2b

    const-string v0, "setChannelList"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetChannelList;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0x22

    if-ne p1, v0, :cond_2c

    const-string v0, "clearChannelList"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscClearChannelList;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0x23

    if-ne p1, v0, :cond_2d

    const-string v0, "getProvisionedNsps"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetProvisionedNsps;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0x24

    if-ne p1, v0, :cond_2e

    const-string v0, "setProvisionedNsps"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetProvisionedNsps;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0x25

    if-ne p1, v0, :cond_2f

    const-string v0, "getProvisionedNaps"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetProvisionedNaps;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0x26

    if-ne p1, v0, :cond_30

    const-string v0, "setProvisionedNaps"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetProvisionedNaps;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0x27

    if-ne p1, v0, :cond_31

    const-string v0, "getHomeNsp"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetHomeNsp;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0x28

    if-ne p1, v0, :cond_32

    const-string v0, "setHomeNsp"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetHomeNsp;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_32
    move v1, v2

    goto/16 :goto_0
.end method

.method public getServicesQty()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public initialize(Lcom/sqn/dcc/NdssClient;)V
    .locals 1

    sput-object p1, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    const-string v0, "ndss"

    iput-object v0, p0, Lcom/sqn/dcc/DccClient;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sqn/dcc/DeviceController;->registerClient(Lcom/sqn/dcc/DccClient;)V

    return-void
.end method

.method public processNotification(I[B)I
    .locals 1

    sget v0, Lcom/sqn/dcc/agscBackoffStopped;->_id:I

    if-ne v0, p1, :cond_0

    invoke-static {p2}, Lcom/sqn/dcc/agscBackoffStopped;->notify([B)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sqn/dcc/agscBackoffStarted;->_id:I

    if-ne v0, p1, :cond_1

    invoke-static {p2}, Lcom/sqn/dcc/agscBackoffStarted;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/sqn/dcc/agscAutodetectExitCriteriaMet;->_id:I

    if-ne v0, p1, :cond_2

    invoke-static {p2}, Lcom/sqn/dcc/agscAutodetectExitCriteriaMet;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMetExtBand;->_id:I

    if-ne v0, p1, :cond_3

    invoke-static {p2}, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMetExtBand;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMet;->_id:I

    if-ne v0, p1, :cond_4

    invoke-static {p2}, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMet;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_4
    sget v0, Lcom/sqn/dcc/agscScanBsFoundExtBand;->_id:I

    if-ne v0, p1, :cond_5

    invoke-static {p2}, Lcom/sqn/dcc/agscScanBsFoundExtBand;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_5
    sget v0, Lcom/sqn/dcc/agscScanBsFoundExt;->_id:I

    if-ne v0, p1, :cond_6

    invoke-static {p2}, Lcom/sqn/dcc/agscScanBsFoundExt;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_6
    sget v0, Lcom/sqn/dcc/agscScanBsFound;->_id:I

    if-ne v0, p1, :cond_7

    invoke-static {p2}, Lcom/sqn/dcc/agscScanBsFound;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_7
    sget v0, Lcom/sqn/dcc/agscScanRoundCompleted;->_id:I

    if-ne v0, p1, :cond_8

    invoke-static {p2}, Lcom/sqn/dcc/agscScanRoundCompleted;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_8
    sget v0, Lcom/sqn/dcc/agscNdsStateChange;->_id:I

    if-ne v0, p1, :cond_9

    invoke-static {p2}, Lcom/sqn/dcc/agscNdsStateChange;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resolveService(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "getNdsBackoffConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/sqn/dcc/agscGetNdsBackoffConfig;->_id:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "setNdsBackoffConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput p2, Lcom/sqn/dcc/agscSetNdsBackoffConfig;->_id:I

    goto :goto_0

    :cond_1
    const-string v1, "backoffStopped"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput p2, Lcom/sqn/dcc/agscBackoffStopped;->_id:I

    goto :goto_0

    :cond_2
    const-string v1, "backoffStarted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput p2, Lcom/sqn/dcc/agscBackoffStarted;->_id:I

    goto :goto_0

    :cond_3
    const-string v1, "disconnectFromNetwork"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput p2, Lcom/sqn/dcc/agscDisconnectFromNetwork;->_id:I

    goto :goto_0

    :cond_4
    const-string v1, "connectToNetworkExt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput p2, Lcom/sqn/dcc/agscConnectToNetworkExt;->_id:I

    goto :goto_0

    :cond_5
    const-string v1, "connectToNetwork"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput p2, Lcom/sqn/dcc/agscConnectToNetwork;->_id:I

    goto :goto_0

    :cond_6
    const-string v1, "setInitialChannel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput p2, Lcom/sqn/dcc/agscSetInitialChannel;->_id:I

    goto :goto_0

    :cond_7
    const-string v1, "getExitCriteriaStatus"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sput p2, Lcom/sqn/dcc/agscGetExitCriteriaStatus;->_id:I

    goto :goto_0

    :cond_8
    const-string v1, "autodetectExitCriteriaMet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sput p2, Lcom/sqn/dcc/agscAutodetectExitCriteriaMet;->_id:I

    goto :goto_0

    :cond_9
    const-string v1, "getEntryCriteriaStatus"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sput p2, Lcom/sqn/dcc/agscGetEntryCriteriaStatus;->_id:I

    goto :goto_0

    :cond_a
    const-string v1, "autodetectEntryCriteriaMetExtBand"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sput p2, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMetExtBand;->_id:I

    goto :goto_0

    :cond_b
    const-string v1, "autodetectEntryCriteriaMet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sput p2, Lcom/sqn/dcc/agscAutodetectEntryCriteriaMet;->_id:I

    goto/16 :goto_0

    :cond_c
    const-string v1, "scanBsFoundExtBand"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sput p2, Lcom/sqn/dcc/agscScanBsFoundExtBand;->_id:I

    goto/16 :goto_0

    :cond_d
    const-string v1, "getScanResultsExtBand"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sput p2, Lcom/sqn/dcc/agscGetScanResultsExtBand;->_id:I

    goto/16 :goto_0

    :cond_e
    const-string v1, "scanBsFoundExt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    sput p2, Lcom/sqn/dcc/agscScanBsFoundExt;->_id:I

    goto/16 :goto_0

    :cond_f
    const-string v1, "getScanResultsExt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    sput p2, Lcom/sqn/dcc/agscGetScanResultsExt;->_id:I

    goto/16 :goto_0

    :cond_10
    const-string v1, "scanBsFound"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sput p2, Lcom/sqn/dcc/agscScanBsFound;->_id:I

    goto/16 :goto_0

    :cond_11
    const-string v1, "getScanResults"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    sput p2, Lcom/sqn/dcc/agscGetScanResults;->_id:I

    goto/16 :goto_0

    :cond_12
    const-string v1, "scanRoundCompleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    sput p2, Lcom/sqn/dcc/agscScanRoundCompleted;->_id:I

    goto/16 :goto_0

    :cond_13
    const-string v1, "scan"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    sput p2, Lcom/sqn/dcc/agscScan;->_id:I

    goto/16 :goto_0

    :cond_14
    const-string v1, "getNdsConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    sput p2, Lcom/sqn/dcc/agscGetNdsConfig;->_id:I

    goto/16 :goto_0

    :cond_15
    const-string v1, "setNdsConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    sput p2, Lcom/sqn/dcc/agscSetNdsConfig;->_id:I

    goto/16 :goto_0

    :cond_16
    const-string v1, "ndsStateChange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    sput p2, Lcom/sqn/dcc/agscNdsStateChange;->_id:I

    goto/16 :goto_0

    :cond_17
    const-string v1, "getNdsState"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    sput p2, Lcom/sqn/dcc/agscGetNdsState;->_id:I

    goto/16 :goto_0

    :cond_18
    const-string v1, "getScanProgress"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    sput p2, Lcom/sqn/dcc/agscGetScanProgress;->_id:I

    goto/16 :goto_0

    :cond_19
    const-string v1, "getBandList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sput p2, Lcom/sqn/dcc/agscGetBandList;->_id:I

    goto/16 :goto_0

    :cond_1a
    const-string v1, "getBandConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sput p2, Lcom/sqn/dcc/agscGetBandConfig;->_id:I

    goto/16 :goto_0

    :cond_1b
    const-string v1, "changeBandConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    sput p2, Lcom/sqn/dcc/agscChangeBandConfig;->_id:I

    goto/16 :goto_0

    :cond_1c
    const-string v1, "setBandList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sput p2, Lcom/sqn/dcc/agscSetBandList;->_id:I

    goto/16 :goto_0

    :cond_1d
    const-string v1, "getChannelList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sput p2, Lcom/sqn/dcc/agscGetChannelList;->_id:I

    goto/16 :goto_0

    :cond_1e
    const-string v1, "getChannelConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sput p2, Lcom/sqn/dcc/agscGetChannelConfig;->_id:I

    goto/16 :goto_0

    :cond_1f
    const-string v1, "changeChannelConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    sput p2, Lcom/sqn/dcc/agscChangeChannelConfig;->_id:I

    goto/16 :goto_0

    :cond_20
    const-string v1, "setChannelList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    sput p2, Lcom/sqn/dcc/agscSetChannelList;->_id:I

    goto/16 :goto_0

    :cond_21
    const-string v1, "clearChannelList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    sput p2, Lcom/sqn/dcc/agscClearChannelList;->_id:I

    goto/16 :goto_0

    :cond_22
    const-string v1, "getProvisionedNsps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    sput p2, Lcom/sqn/dcc/agscGetProvisionedNsps;->_id:I

    goto/16 :goto_0

    :cond_23
    const-string v1, "setProvisionedNsps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    sput p2, Lcom/sqn/dcc/agscSetProvisionedNsps;->_id:I

    goto/16 :goto_0

    :cond_24
    const-string v1, "getProvisionedNaps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    sput p2, Lcom/sqn/dcc/agscGetProvisionedNaps;->_id:I

    goto/16 :goto_0

    :cond_25
    const-string v1, "setProvisionedNaps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    sput p2, Lcom/sqn/dcc/agscSetProvisionedNaps;->_id:I

    goto/16 :goto_0

    :cond_26
    const-string v1, "getHomeNsp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    sput p2, Lcom/sqn/dcc/agscGetHomeNsp;->_id:I

    goto/16 :goto_0

    :cond_27
    const-string v1, "setHomeNsp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    sput p2, Lcom/sqn/dcc/agscSetHomeNsp;->_id:I

    goto/16 :goto_0

    :cond_28
    const/4 v0, -0x1

    goto/16 :goto_0
.end method
