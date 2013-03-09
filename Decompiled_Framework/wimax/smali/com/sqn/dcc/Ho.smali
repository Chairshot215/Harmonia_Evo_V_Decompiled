.class public Lcom/sqn/dcc/Ho;
.super Ljava/lang/Object;
.source "Ho.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetHandoverLatency(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/HandoverLatencyStats;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscHoImpl;->GetHandoverLatency(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetLastHoStatus(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/LastHoStatus;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscHoImpl;->GetLastHoStatus(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetNeighborBsList(SILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/NeighborBsInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscHoImpl;->GetNeighborBsList(SILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static HoInitialize(Lcom/sqn/dcc/HoClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscHoImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscHoImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscHoImpl;->initialize(Lcom/sqn/dcc/HoClient;)V

    return-void
.end method
