.class public Lcom/sqn/dcc/Evt;
.super Ljava/lang/Object;
.source "Evt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisableAll()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscEvtImpl;->DisableAll()I

    move-result v0

    return v0
.end method

.method public static EvtInitialize(Lcom/sqn/dcc/EvtClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscEvtImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscEvtImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscEvtImpl;->initialize(Lcom/sqn/dcc/EvtClient;)V

    return-void
.end method

.method public static GetDecodingInfo(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscEvtImpl;->GetDecodingInfo(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetEvtList(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/EventDesc;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscEvtImpl;->GetEvtList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static SetEnable([IZ)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscEvtImpl;->SetEnable([IZ)I

    move-result v0

    return v0
.end method
