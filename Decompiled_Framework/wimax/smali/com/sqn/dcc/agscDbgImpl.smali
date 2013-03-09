.class public Lcom/sqn/dcc/agscDbgImpl;
.super Lcom/sqn/dcc/DccClient;
.source "agscDbgImpl.java"


# static fields
.field public static _use:Lcom/sqn/dcc/DbgClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccClient;-><init>()V

    return-void
.end method

.method public static Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscCli;->marshall([BILcom/sqn/dcc/OutValue;Ljava/lang/String;)I

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

    sget v6, Lcom/sqn/dcc/agscCli;->_id:I

    const-string v7, "Cli"

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

    invoke-static {v4, v6, v2, p1, p2}, Lcom/sqn/dcc/agscCli;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static DumpFftSymbols(JJLcom/sqn/dcc/OutValue;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x3e80

    new-array v0, v1, [B

    const/16 v1, 0x3e80

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sqn/dcc/agscDumpFftSymbols;->marshall([BILcom/sqn/dcc/OutValue;JJ)I

    move-result v10

    if-eqz v10, :cond_0

    move v1, v10

    :goto_0
    return v1

    :cond_0
    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v8, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v3, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscDumpFftSymbols;->_id:I

    const-string v3, "DumpFftSymbols"

    const/4 v4, 0x1

    invoke-static {v1, v3, v8, v4}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :try_start_0
    array-length v1, v9

    invoke-static {v9, v1, v2, p4}, Lcom/sqn/dcc/agscDumpFftSymbols;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    :goto_1
    move v1, v10

    goto :goto_0

    :catch_0
    move-exception v7

    const/4 v10, -0x1

    goto :goto_1

    :catch_1
    move-exception v7

    const/4 v10, -0x1

    goto :goto_1
.end method

.method public static Echo(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscEcho;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscEcho;->_id:I

    const-string v7, "Echo"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscEcho;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static FilterLog(Ljava/lang/String;)I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1, p0}, Lcom/sqn/dcc/agscFilterLog;->marshall([BILcom/sqn/dcc/OutValue;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, v1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v2, v5, [B

    iget-object v5, v1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v5, Lcom/sqn/dcc/agscFilterLog;->_id:I

    const-string v7, "FilterLog"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
.end method

.method public static GetCommandsList(IILcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/CommandDesc;",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscGetCommandsList;->marshall([BILcom/sqn/dcc/OutValue;II)I

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

    sget v6, Lcom/sqn/dcc/agscGetCommandsList;->_id:I

    const-string v7, "GetCommandsList"

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

    invoke-static {v4, v6, v2, p2}, Lcom/sqn/dcc/agscGetCommandsList;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static GetCommandsQty(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetCommandsQty;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetCommandsQty;->_id:I

    const-string v7, "GetCommandsQty"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetCommandsQty;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetDumpedFftSymbols(JLcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/FftSymbolDescriptor;",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscGetDumpedFftSymbols;->marshall([BILcom/sqn/dcc/OutValue;J)I

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

    sget v6, Lcom/sqn/dcc/agscGetDumpedFftSymbols;->_id:I

    const-string v7, "GetDumpedFftSymbols"

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

    invoke-static {v4, v6, v2, p2}, Lcom/sqn/dcc/agscGetDumpedFftSymbols;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetFatalErrorMode(Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/EpsFatalMode;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetFatalErrorMode;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetFatalErrorMode;->_id:I

    const-string v7, "GetFatalErrorMode"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetFatalErrorMode;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static GetLogList(Lcom/sqn/dcc/OutArray;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/LogDesc;",
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

    invoke-static {v1, v7, v2}, Lcom/sqn/dcc/agscGetLogList;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v6, Lcom/sqn/dcc/agscGetLogList;->_id:I

    const-string v7, "GetLogList"

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

    invoke-static {v4, v6, v2, p0}, Lcom/sqn/dcc/agscGetLogList;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
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

.method public static SendMngtMsg(I[SLcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[S",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscSendMngtMsg;->marshall([BILcom/sqn/dcc/OutValue;I[S)I

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

    sget v6, Lcom/sqn/dcc/agscSendMngtMsg;->_id:I

    const-string v7, "SendMngtMsg"

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

    invoke-static {v4, v6, v2, p2}, Lcom/sqn/dcc/agscSendMngtMsg;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetFatalErrorMode(Lcom/sqn/dcc/EpsFatalMode;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/EpsFatalMode;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscSetFatalErrorMode;->marshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/EpsFatalMode;)I

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

    sget v6, Lcom/sqn/dcc/agscSetFatalErrorMode;->_id:I

    const-string v7, "SetFatalErrorMode"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscSetFatalErrorMode;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SuppressWarnings(Z)I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1, p0}, Lcom/sqn/dcc/agscSuppressWarnings;->marshall([BILcom/sqn/dcc/OutValue;Z)I

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, v1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v2, v5, [B

    iget-object v5, v1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v5, Lcom/sqn/dcc/agscSuppressWarnings;->_id:I

    const-string v7, "SuppressWarnings"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
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

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iput v4, p4, Lcom/sqn/dcc/ServiceType;->value:I

    if-nez p1, :cond_0

    const-string v0, "GetDumpedFftSymbols"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetDumpedFftSymbols;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    if-ne p1, v0, :cond_1

    const-string v0, "DumpFftSymbols"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscDumpFftSymbols;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    const-string v0, "SetFatalErrorMode"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetFatalErrorMode;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    const-string v0, "GetFatalErrorMode"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetFatalErrorMode;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    const-string v0, "SendMngtMsg"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSendMngtMsg;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    const-string v0, "SuppressWarnings"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSuppressWarnings;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    const-string v0, "FilterLog"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscFilterLog;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    if-ne p1, v3, :cond_7

    const-string v0, "GetLogList"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetLogList;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    if-ne p1, v3, :cond_9

    sget-object v2, Lcom/sqn/dcc/agscDbgImpl;->_use:Lcom/sqn/dcc/DbgClient;

    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "Log"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscLog;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    const-string v0, "GetCommandsList"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetCommandsList;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    const-string v0, "GetCommandsQty"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscGetCommandsQty;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xb

    if-ne p1, v0, :cond_c

    const-string v0, "Cli"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscCli;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xc

    if-ne p1, v0, :cond_d

    const-string v0, "Echo"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscEcho;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    move v1, v2

    goto/16 :goto_0
.end method

.method public getServicesQty()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public initialize(Lcom/sqn/dcc/DbgClient;)V
    .locals 1

    sput-object p1, Lcom/sqn/dcc/agscDbgImpl;->_use:Lcom/sqn/dcc/DbgClient;

    const-string v0, "dbg"

    iput-object v0, p0, Lcom/sqn/dcc/DccClient;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sqn/dcc/DeviceController;->registerClient(Lcom/sqn/dcc/DccClient;)V

    return-void
.end method

.method public processNotification(I[B)I
    .locals 1

    sget v0, Lcom/sqn/dcc/agscLog;->_id:I

    if-ne v0, p1, :cond_0

    invoke-static {p2}, Lcom/sqn/dcc/agscLog;->notify([B)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resolveService(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "GetDumpedFftSymbols"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/sqn/dcc/agscGetDumpedFftSymbols;->_id:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "DumpFftSymbols"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput p2, Lcom/sqn/dcc/agscDumpFftSymbols;->_id:I

    goto :goto_0

    :cond_1
    const-string v1, "SetFatalErrorMode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput p2, Lcom/sqn/dcc/agscSetFatalErrorMode;->_id:I

    goto :goto_0

    :cond_2
    const-string v1, "GetFatalErrorMode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput p2, Lcom/sqn/dcc/agscGetFatalErrorMode;->_id:I

    goto :goto_0

    :cond_3
    const-string v1, "SendMngtMsg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput p2, Lcom/sqn/dcc/agscSendMngtMsg;->_id:I

    goto :goto_0

    :cond_4
    const-string v1, "SuppressWarnings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput p2, Lcom/sqn/dcc/agscSuppressWarnings;->_id:I

    goto :goto_0

    :cond_5
    const-string v1, "FilterLog"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput p2, Lcom/sqn/dcc/agscFilterLog;->_id:I

    goto :goto_0

    :cond_6
    const-string v1, "GetLogList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput p2, Lcom/sqn/dcc/agscGetLogList;->_id:I

    goto :goto_0

    :cond_7
    const-string v1, "Log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sput p2, Lcom/sqn/dcc/agscLog;->_id:I

    goto :goto_0

    :cond_8
    const-string v1, "GetCommandsList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sput p2, Lcom/sqn/dcc/agscGetCommandsList;->_id:I

    goto :goto_0

    :cond_9
    const-string v1, "GetCommandsQty"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sput p2, Lcom/sqn/dcc/agscGetCommandsQty;->_id:I

    goto :goto_0

    :cond_a
    const-string v1, "Cli"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sput p2, Lcom/sqn/dcc/agscCli;->_id:I

    goto :goto_0

    :cond_b
    const-string v1, "Echo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sput p2, Lcom/sqn/dcc/agscEcho;->_id:I

    goto/16 :goto_0

    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_0
.end method
