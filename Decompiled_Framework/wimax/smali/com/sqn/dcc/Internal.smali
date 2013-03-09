.class public Lcom/sqn/dcc/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConnectToMs(JLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscInternalImpl;->ConnectToMs(JLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetAvailableMs(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/MsDescriptor;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscInternalImpl;->GetAvailableMs(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetDriverVersions(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscInternalImpl;->GetDriverVersions(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static InternalInitialize(Lcom/sqn/dcc/InternalClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscInternalImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscInternalImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscInternalImpl;->initialize(Lcom/sqn/dcc/InternalClient;)V

    return-void
.end method

.method public static RequestNtf([Lcom/sqn/dcc/NtfName;)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscInternalImpl;->RequestNtf([Lcom/sqn/dcc/NtfName;)I

    move-result v0

    return v0
.end method

.method public static SetPersistentSsState(Z)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscInternalImpl;->SetPersistentSsState(Z)I

    move-result v0

    return v0
.end method
