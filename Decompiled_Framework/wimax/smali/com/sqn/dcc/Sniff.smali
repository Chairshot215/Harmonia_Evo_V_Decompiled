.class public Lcom/sqn/dcc/Sniff;
.super Ljava/lang/Object;
.source "Sniff.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SniffAddFilter(Lcom/sqn/dcc/SniffFilterRule;Lcom/sqn/dcc/OutValue;)I
    .locals 1
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscSniffImpl;->SniffAddFilter(Lcom/sqn/dcc/SniffFilterRule;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SniffClearFilters()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscSniffImpl;->SniffClearFilters()I

    move-result v0

    return v0
.end method

.method public static SniffDelFilter(JLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscSniffImpl;->SniffDelFilter(JLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SniffDisable()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscSniffImpl;->SniffDisable()I

    move-result v0

    return v0
.end method

.method public static SniffEnable()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscSniffImpl;->SniffEnable()I

    move-result v0

    return v0
.end method

.method public static SniffFlush()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscSniffImpl;->SniffFlush()I

    move-result v0

    return v0
.end method

.method public static SniffInitialize(Lcom/sqn/dcc/SniffClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscSniffImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscSniffImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscSniffImpl;->initialize(Lcom/sqn/dcc/SniffClient;)V

    return-void
.end method
