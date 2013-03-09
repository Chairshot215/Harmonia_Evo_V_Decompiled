.class public Lcom/sqn/dcc/agscSniffImpl;
.super Lcom/sqn/dcc/DccClient;
.source "agscSniffImpl.java"


# static fields
.field public static _use:Lcom/sqn/dcc/SniffClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccClient;-><init>()V

    return-void
.end method

.method public static SniffAddFilter(Lcom/sqn/dcc/SniffFilterRule;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/SniffFilterRule;",
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

    invoke-static {v1, v7, v2, p0}, Lcom/sqn/dcc/agscSniffAddFilter;->marshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/SniffFilterRule;)I

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

    sget v6, Lcom/sqn/dcc/agscSniffAddFilter;->_id:I

    const-string v7, "sniffAddFilter"

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

    invoke-static {v4, v6, v2, p1}, Lcom/sqn/dcc/agscSniffAddFilter;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SniffClearFilters()I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1}, Lcom/sqn/dcc/agscSniffClearFilters;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v5, Lcom/sqn/dcc/agscSniffClearFilters;->_id:I

    const-string v7, "sniffClearFilters"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
.end method

.method public static SniffDelFilter(JLcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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

    invoke-static {v1, v7, v2, p0, p1}, Lcom/sqn/dcc/agscSniffDelFilter;->marshall([BILcom/sqn/dcc/OutValue;J)I

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

    sget v6, Lcom/sqn/dcc/agscSniffDelFilter;->_id:I

    const-string v7, "sniffDelFilter"

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

    invoke-static {v4, v6, v2, p2}, Lcom/sqn/dcc/agscSniffDelFilter;->unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

.method public static SniffDisable()I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1}, Lcom/sqn/dcc/agscSniffDisable;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v5, Lcom/sqn/dcc/agscSniffDisable;->_id:I

    const-string v7, "sniffDisable"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
.end method

.method public static SniffEnable()I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1}, Lcom/sqn/dcc/agscSniffEnable;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v5, Lcom/sqn/dcc/agscSniffEnable;->_id:I

    const-string v7, "sniffEnable"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
.end method

.method public static SniffFlush()I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1}, Lcom/sqn/dcc/agscSniffFlush;->marshall([BILcom/sqn/dcc/OutValue;)I

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

    sget v5, Lcom/sqn/dcc/agscSniffFlush;->_id:I

    const-string v7, "sniffFlush"

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

    if-nez p1, :cond_1

    sget-object v2, Lcom/sqn/dcc/agscSniffImpl;->_use:Lcom/sqn/dcc/SniffClient;

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "SniffCapture"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSniffCapture;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :goto_0
    return v1

    :cond_1
    if-ne p1, v0, :cond_2

    const-string v0, "sniffDelFilter"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSniffDelFilter;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    const-string v0, "sniffAddFilter"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSniffAddFilter;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    const-string v0, "sniffClearFilters"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSniffClearFilters;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const-string v0, "sniffFlush"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSniffFlush;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    const-string v0, "sniffDisable"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSniffDisable;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    const-string v0, "sniffEnable"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSniffEnable;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public getServicesQty()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public initialize(Lcom/sqn/dcc/SniffClient;)V
    .locals 1

    sput-object p1, Lcom/sqn/dcc/agscSniffImpl;->_use:Lcom/sqn/dcc/SniffClient;

    const-string v0, "sniff"

    iput-object v0, p0, Lcom/sqn/dcc/DccClient;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sqn/dcc/DeviceController;->registerClient(Lcom/sqn/dcc/DccClient;)V

    return-void
.end method

.method public processNotification(I[B)I
    .locals 1

    sget v0, Lcom/sqn/dcc/agscSniffCapture;->_id:I

    if-ne v0, p1, :cond_0

    invoke-static {p2}, Lcom/sqn/dcc/agscSniffCapture;->notify([B)I

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

    const-string v1, "SniffCapture"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/sqn/dcc/agscSniffCapture;->_id:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "sniffDelFilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput p2, Lcom/sqn/dcc/agscSniffDelFilter;->_id:I

    goto :goto_0

    :cond_1
    const-string v1, "sniffAddFilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput p2, Lcom/sqn/dcc/agscSniffAddFilter;->_id:I

    goto :goto_0

    :cond_2
    const-string v1, "sniffClearFilters"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput p2, Lcom/sqn/dcc/agscSniffClearFilters;->_id:I

    goto :goto_0

    :cond_3
    const-string v1, "sniffFlush"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput p2, Lcom/sqn/dcc/agscSniffFlush;->_id:I

    goto :goto_0

    :cond_4
    const-string v1, "sniffDisable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput p2, Lcom/sqn/dcc/agscSniffDisable;->_id:I

    goto :goto_0

    :cond_5
    const-string v1, "sniffEnable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput p2, Lcom/sqn/dcc/agscSniffEnable;->_id:I

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method
