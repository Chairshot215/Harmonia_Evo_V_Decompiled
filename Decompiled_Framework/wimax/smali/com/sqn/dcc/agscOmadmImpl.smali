.class public Lcom/sqn/dcc/agscOmadmImpl;
.super Lcom/sqn/dcc/DccClient;
.source "agscOmadmImpl.java"


# static fields
.field public static _use:Lcom/sqn/dcc/OmadmClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccClient;-><init>()V

    return-void
.end method

.method public static ReplyChoice(J[J)I
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

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscReplyChoice;->marshall([BILcom/sqn/dcc/OutValue;J[J)I

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

    sget v1, Lcom/sqn/dcc/agscReplyChoice;->_id:I

    const-string v3, "ReplyChoice"

    invoke-static {v1, v3, v6, v9}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v7

    move v8, v9

    goto :goto_0
.end method

.method public static ReplyConfirm(JZ)I
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

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscReplyConfirm;->marshall([BILcom/sqn/dcc/OutValue;JZ)I

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

    sget v1, Lcom/sqn/dcc/agscReplyConfirm;->_id:I

    const-string v3, "ReplyConfirm"

    invoke-static {v1, v3, v6, v9}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v7

    move v8, v9

    goto :goto_0
.end method

.method public static ReplyTextInput(JLjava/lang/String;)I
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

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/agscReplyTextInput;->marshall([BILcom/sqn/dcc/OutValue;JLjava/lang/String;)I

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

    sget v1, Lcom/sqn/dcc/agscReplyTextInput;->_id:I

    const-string v3, "ReplyTextInput"

    invoke-static {v1, v3, v6, v9}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v7

    move v8, v9

    goto :goto_0
.end method

.method public static ReprovisionDevice(J)I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1, p0, p1}, Lcom/sqn/dcc/agscReprovisionDevice;->marshall([BILcom/sqn/dcc/OutValue;J)I

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

    sget v5, Lcom/sqn/dcc/agscReprovisionDevice;->_id:I

    const-string v7, "ReprovisionDevice"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
.end method

.method public static ResetFallbackCounter(J)I
    .locals 8

    const/16 v7, 0x3e80

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-array v0, v7, [B

    invoke-static {v0, v7, v1, p0, p1}, Lcom/sqn/dcc/agscResetFallbackCounter;->marshall([BILcom/sqn/dcc/OutValue;J)I

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

    sget v5, Lcom/sqn/dcc/agscResetFallbackCounter;->_id:I

    const-string v7, "ResetFallbackCounter"

    invoke-static {v5, v7, v2, v6}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v3

    move v4, v6

    goto :goto_0
.end method

.method public static SetAuthenticationCredentials(JLjava/lang/String;Z)I
    .locals 11

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

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sqn/dcc/agscSetAuthenticationCredentials;->marshall([BILcom/sqn/dcc/OutValue;JLjava/lang/String;Z)I

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    return v9

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

    sget v1, Lcom/sqn/dcc/agscSetAuthenticationCredentials;->_id:I

    const-string v3, "SetAuthenticationCredentials"

    invoke-static {v1, v3, v7, v10}, Lcom/sqn/dcc/DeviceController;->invoke(ILjava/lang/String;[BZ)[B

    move-result-object v8

    move v9, v10

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

    const-string v0, "SetAuthenticationCredentials"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSetAuthenticationCredentials;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    if-ne p1, v0, :cond_1

    const-string v0, "ReprovisionDevice"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscReprovisionDevice;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    const-string v0, "ResetFallbackCounter"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscResetFallbackCounter;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    const-string v0, "ReplyChoice"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscReplyChoice;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    const-string v0, "ReplyConfirm"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscReplyConfirm;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    const-string v0, "ReplyTextInput"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscReplyTextInput;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    if-ne p1, v3, :cond_7

    sget-object v2, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestOpenWebBrowser"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestOpenWebBrowser;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 v3, 0x7

    if-ne p1, v3, :cond_9

    sget-object v2, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestChoice"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestChoice;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0

    :cond_9
    const/16 v3, 0x8

    if-ne p1, v3, :cond_b

    sget-object v2, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v2, :cond_a

    move v0, v1

    :cond_a
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestConfirm"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestConfirm;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x9

    if-ne p1, v3, :cond_d

    sget-object v2, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v2, :cond_c

    move v0, v1

    :cond_c
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestTextInput"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestTextInput;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xa

    if-ne p1, v3, :cond_f

    sget-object v2, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v2, :cond_e

    move v0, v1

    :cond_e
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "RequestDisplay"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscRequestDisplay;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xb

    if-ne p1, v3, :cond_11

    sget-object v2, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v2, :cond_10

    move v0, v1

    :cond_10
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "SessionEnd"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSessionEnd;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xc

    if-ne p1, v3, :cond_13

    sget-object v2, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v2, :cond_12

    move v0, v1

    :cond_12
    iput v0, p4, Lcom/sqn/dcc/ServiceType;->value:I

    const-string v0, "SessionStart"

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget v0, Lcom/sqn/dcc/agscSessionStart;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto/16 :goto_0
.end method

.method public getServicesQty()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public initialize(Lcom/sqn/dcc/OmadmClient;)V
    .locals 1

    sput-object p1, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    const-string v0, "omadm"

    iput-object v0, p0, Lcom/sqn/dcc/DccClient;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sqn/dcc/DeviceController;->registerClient(Lcom/sqn/dcc/DccClient;)V

    return-void
.end method

.method public processNotification(I[B)I
    .locals 1

    sget v0, Lcom/sqn/dcc/agscRequestOpenWebBrowser;->_id:I

    if-ne v0, p1, :cond_0

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestOpenWebBrowser;->notify([B)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sqn/dcc/agscRequestChoice;->_id:I

    if-ne v0, p1, :cond_1

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestChoice;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/sqn/dcc/agscRequestConfirm;->_id:I

    if-ne v0, p1, :cond_2

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestConfirm;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/sqn/dcc/agscRequestTextInput;->_id:I

    if-ne v0, p1, :cond_3

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestTextInput;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/sqn/dcc/agscRequestDisplay;->_id:I

    if-ne v0, p1, :cond_4

    invoke-static {p2}, Lcom/sqn/dcc/agscRequestDisplay;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_4
    sget v0, Lcom/sqn/dcc/agscSessionEnd;->_id:I

    if-ne v0, p1, :cond_5

    invoke-static {p2}, Lcom/sqn/dcc/agscSessionEnd;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_5
    sget v0, Lcom/sqn/dcc/agscSessionStart;->_id:I

    if-ne v0, p1, :cond_6

    invoke-static {p2}, Lcom/sqn/dcc/agscSessionStart;->notify([B)I

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resolveService(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SetAuthenticationCredentials"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/sqn/dcc/agscSetAuthenticationCredentials;->_id:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "ReprovisionDevice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput p2, Lcom/sqn/dcc/agscReprovisionDevice;->_id:I

    goto :goto_0

    :cond_1
    const-string v1, "ResetFallbackCounter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput p2, Lcom/sqn/dcc/agscResetFallbackCounter;->_id:I

    goto :goto_0

    :cond_2
    const-string v1, "ReplyChoice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput p2, Lcom/sqn/dcc/agscReplyChoice;->_id:I

    goto :goto_0

    :cond_3
    const-string v1, "ReplyConfirm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput p2, Lcom/sqn/dcc/agscReplyConfirm;->_id:I

    goto :goto_0

    :cond_4
    const-string v1, "ReplyTextInput"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput p2, Lcom/sqn/dcc/agscReplyTextInput;->_id:I

    goto :goto_0

    :cond_5
    const-string v1, "RequestOpenWebBrowser"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput p2, Lcom/sqn/dcc/agscRequestOpenWebBrowser;->_id:I

    goto :goto_0

    :cond_6
    const-string v1, "RequestChoice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput p2, Lcom/sqn/dcc/agscRequestChoice;->_id:I

    goto :goto_0

    :cond_7
    const-string v1, "RequestConfirm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sput p2, Lcom/sqn/dcc/agscRequestConfirm;->_id:I

    goto :goto_0

    :cond_8
    const-string v1, "RequestTextInput"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sput p2, Lcom/sqn/dcc/agscRequestTextInput;->_id:I

    goto :goto_0

    :cond_9
    const-string v1, "RequestDisplay"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sput p2, Lcom/sqn/dcc/agscRequestDisplay;->_id:I

    goto :goto_0

    :cond_a
    const-string v1, "SessionEnd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sput p2, Lcom/sqn/dcc/agscSessionEnd;->_id:I

    goto :goto_0

    :cond_b
    const-string v1, "SessionStart"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sput p2, Lcom/sqn/dcc/agscSessionStart;->_id:I

    goto/16 :goto_0

    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_0
.end method
