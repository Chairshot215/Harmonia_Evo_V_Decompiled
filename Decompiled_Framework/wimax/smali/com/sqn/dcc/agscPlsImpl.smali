.class public Lcom/sqn/dcc/agscPlsImpl;
.super Lcom/sqn/dcc/DccClient;
.source "agscPlsImpl.java"


# static fields
.field public static _use:Lcom/sqn/dcc/PlsClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccClient;-><init>()V

    return-void
.end method

.method public static HostReady()I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1}, Lcom/sqn/dcc/agscHostReady;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v5, Lcom/sqn/dcc/agscHostReady;->_id:I

    const-string v7, "HostReady"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
.end method

.method public static ReplyData(J[S)I
    .locals 10

    const/16 v1, 0x3e80

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v1, [B

    move-wide v3, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscReplyData;->marshall([BILcom/sqn/dcc/OutValue;J[S)I

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return v8

    :cond_0
    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v6, v1, [B

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscReplyData;->_id:I

    const-string v3, "ReplyData"

    invoke-static {v1, v3, v6, v9}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v7

    move v8, v9

    goto :goto_0
.end method

.method public static ReplyStatus(JI)I
    .locals 10

    const/16 v1, 0x3e80

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v1, [B

    move-wide v3, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscReplyStatus;->marshall([BILcom/sqn/dcc/OutValue;JI)I

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return v8

    :cond_0
    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v6, v1, [B

    iget-object v1, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/sqn/dcc/agscReplyStatus;->_id:I

    const-string v3, "ReplyStatus"

    invoke-static {v1, v3, v6, v9}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v7

    move v8, v9

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

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iput v4, p4, Lcom/sqn/dcc/ServiceType;->value:I

    if-nez p1, :cond_0

    const-string v0, "ReplyData"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscReplyData;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    if-ne p1, v0, :cond_1

    const-string v0, "ReplyStatus"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscReplyStatus;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_3

    sget-object v2, Lcom/sqn/dcc/agscPlsImpl;->_use:Lcom/sqn/dcc/PlsClient;

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestRemove"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestRemove;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    sget-object v2, Lcom/sqn/dcc/agscPlsImpl;->_use:Lcom/sqn/dcc/PlsClient;

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestRetrieve"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestRetrieve;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_7

    sget-object v2, Lcom/sqn/dcc/agscPlsImpl;->_use:Lcom/sqn/dcc/PlsClient;

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestStore"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestStore;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    const-string v0, "HostReady"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscHostReady;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public getServicesQty()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public initialize(Lcom/sqn/dcc/PlsClient;)V
    .locals 1

    sput-object p1, Lcom/sqn/dcc/agscPlsImpl;->_use:Lcom/sqn/dcc/PlsClient;

    const-string v0, "pls"

    iput-object v0, p0, Lcom/sqn/dcc/DccClient;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sqn/dcc/DeviceController;->registerClient(Lcom/sqn/dcc/DccClient;)V

    return-void
.end method

.method public processNotification(I[B)I
    .locals 1

    sget v0, Lcom/sqn/dcc/agscRequestRemove;->_id:I

    if-ne v0, p1, :cond_0

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestRemove;->notify([B)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sqn/dcc/agscRequestRetrieve;->_id:I

    if-ne v0, p1, :cond_1

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestRetrieve;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/sqn/dcc/agscRequestStore;->_id:I

    if-ne v0, p1, :cond_2

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestStore;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resolveService(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ReplyData"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/sqn/dcc/agscReplyData;->_id:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "ReplyStatus"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput p2, Lcom/sqn/dcc/agscReplyStatus;->_id:I

    goto :goto_0

    :cond_1
    const-string v1, "RequestRemove"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput p2, Lcom/sqn/dcc/agscRequestRemove;->_id:I

    goto :goto_0

    :cond_2
    const-string v1, "RequestRetrieve"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput p2, Lcom/sqn/dcc/agscRequestRetrieve;->_id:I

    goto :goto_0

    :cond_3
    const-string v1, "RequestStore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput p2, Lcom/sqn/dcc/agscRequestStore;->_id:I

    goto :goto_0

    :cond_4
    const-string v1, "HostReady"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput p2, Lcom/sqn/dcc/agscHostReady;->_id:I

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method
