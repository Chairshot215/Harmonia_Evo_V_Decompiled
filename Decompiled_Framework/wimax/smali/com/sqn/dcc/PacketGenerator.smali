.class public Lcom/sqn/dcc/PacketGenerator;
.super Ljava/lang/Object;
.source "PacketGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddPgStream(ILcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/FlowDescriptor;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/pgPacketDescriptor;",
            "Lcom/sqn/dcc/FlowDescriptor;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->AddPgStream(ILcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/FlowDescriptor;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ApplyPattern(Z)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->ApplyPattern(Z)I

    move-result v0

    return v0
.end method

.method public static GetPgFlowDescriptor(IILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/FlowDescriptor;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->GetPgFlowDescriptor(IILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetPgPacketDescriptor(IILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/pgPacketDescriptor;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->GetPgPacketDescriptor(IILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetPgStats(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/PktGeneratorStats;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->GetPgStats(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetPgStreamQty(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->GetPgStreamQty(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static OneShotSend(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->OneShotSend(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static PacketGeneratorInitialize(Lcom/sqn/dcc/PacketGeneratorClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscPacketGeneratorImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscPacketGeneratorImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->initialize(Lcom/sqn/dcc/PacketGeneratorClient;)V

    return-void
.end method

.method public static PgIsStarted(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->PgIsStarted(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ResetPgStats(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->ResetPgStats(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ResetPgStreams(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->ResetPgStreams(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetPgSentPktMaxQty(IILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->SetPgSentPktMaxQty(IILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetPgStream(IILcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/FlowDescriptor;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sqn/dcc/pgPacketDescriptor;",
            "Lcom/sqn/dcc/FlowDescriptor;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->SetPgStream(IILcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/FlowDescriptor;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static StartPg(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->StartPg(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static StopPg(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketGeneratorImpl;->StopPg(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
