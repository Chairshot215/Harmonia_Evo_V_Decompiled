.class public Lcom/sqn/dcc/FwdFilter;
.super Ljava/lang/Object;
.source "FwdFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeFwdFilter(Lcom/sqn/dcc/FwdFilterConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/FwdFilterConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscFwdFilterImpl;->ChangeFwdFilter(Lcom/sqn/dcc/FwdFilterConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ChangeFwdFilterState(Ljava/lang/String;ZLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscFwdFilterImpl;->ChangeFwdFilterState(Ljava/lang/String;ZLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static CreateFwdFilter(Lcom/sqn/dcc/FwdFilterConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/FwdFilterConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscFwdFilterImpl;->CreateFwdFilter(Lcom/sqn/dcc/FwdFilterConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static CreateFwdSIPFilter(Ljava/lang/String;Ljava/lang/String;SZLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "SZ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sqn/dcc/agscFwdFilterImpl;->CreateFwdSIPFilter(Ljava/lang/String;Ljava/lang/String;SZLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static DeleteFwdFilter(Ljava/lang/String;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscFwdFilterImpl;->DeleteFwdFilter(Ljava/lang/String;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static FwdFilterInitialize(Lcom/sqn/dcc/FwdFilterClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscFwdFilterImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscFwdFilterImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscFwdFilterImpl;->initialize(Lcom/sqn/dcc/FwdFilterClient;)V

    return-void
.end method

.method public static GetFwdFilter(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/FwdFilterConfig;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscFwdFilterImpl;->GetFwdFilter(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
