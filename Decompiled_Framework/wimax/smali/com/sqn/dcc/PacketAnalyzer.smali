.class public Lcom/sqn/dcc/PacketAnalyzer;
.super Ljava/lang/Object;
.source "PacketAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckPayloadContent(Z)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->CheckPayloadContent(Z)I

    move-result v0

    return v0
.end method

.method public static GetPaPacketDescriptor(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/paPacketDescriptor;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->GetPaPacketDescriptor(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetPaStats(ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/PktAnalyzerStats;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->GetPaStats(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static PaIsStarted(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->PaIsStarted(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static PacketAnalyzerInitialize(Lcom/sqn/dcc/PacketAnalyzerClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscPacketAnalyzerImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->initialize(Lcom/sqn/dcc/PacketAnalyzerClient;)V

    return-void
.end method

.method public static ResetPaStats(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->ResetPaStats(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetPaConfig(ILcom/sqn/dcc/paPacketDescriptor;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/paPacketDescriptor;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->SetPaConfig(ILcom/sqn/dcc/paPacketDescriptor;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static StartPa(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->StartPa(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static StopPa(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscPacketAnalyzerImpl;->StopPa(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
