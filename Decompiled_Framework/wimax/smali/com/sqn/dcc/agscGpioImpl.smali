.class public Lcom/sqn/dcc/agscGpioImpl;
.super Lcom/sqn/dcc/DccClient;
.source "agscGpioImpl.java"


# static fields
.field public static _use:Lcom/sqn/dcc/GpioClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccClient;-><init>()V

    return-void
.end method

.method public static GetState(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscGetState;->marshall([BILcom/sqn/dcc/OutValue;Ljava/lang/String;)I

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

    sget v6, Lcom/sqn/dcc/agscGetState;->_id:I

    const-string v7, "getState"

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

    invoke-static {v4, v6, v2, p1, p2}, Lcom/sqn/dcc/agscGetState;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SetState(Ljava/lang/String;ILcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscSetState;->marshall([BILcom/sqn/dcc/OutValue;Ljava/lang/String;I)I

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

    sget v6, Lcom/sqn/dcc/agscSetState;->_id:I

    const-string v7, "setState"

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

    invoke-static {v4, v6, v2, p2}, Lcom/sqn/dcc/agscSetState;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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
    .locals 3
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

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p4, Lcom/sqn/dcc/ServiceType;->value:I

    if-nez p1, :cond_0

    const-string v1, "getState"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscGetState;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string v1, "setState"

    iput-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v1, Lcom/sqn/dcc/agscSetState;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getServicesQty()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public initialize(Lcom/sqn/dcc/GpioClient;)V
    .locals 1

    sput-object p1, Lcom/sqn/dcc/agscGpioImpl;->_use:Lcom/sqn/dcc/GpioClient;

    const-string v0, "gpio"

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

    const-string v1, "getState"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/sqn/dcc/agscGetState;->_id:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "setState"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput p2, Lcom/sqn/dcc/agscSetState;->_id:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
