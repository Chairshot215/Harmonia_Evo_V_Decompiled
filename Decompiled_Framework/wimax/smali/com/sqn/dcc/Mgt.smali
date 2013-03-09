.class public Lcom/sqn/dcc/Mgt;
.super Ljava/lang/Object;
.source "Mgt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeSf(ILcom/sqn/dcc/SfConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/SfConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscMgtImpl;->ChangeSf(ILcom/sqn/dcc/SfConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static CreateSf(Lcom/sqn/dcc/SfConfig;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/SfConfig;",
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

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscMgtImpl;->CreateSf(Lcom/sqn/dcc/SfConfig;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static DeleteSf(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->DeleteSf(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetConfBasicCaps(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmSsBasicCapabilities;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtImpl;->GetConfBasicCaps(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetConfRangingCaps(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmSsRangingCapabilities;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtImpl;->GetConfRangingCaps(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetConfRegCaps(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmSsRegCapabilities;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtImpl;->GetConfRegCaps(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetEnabled(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscMgtImpl;->GetEnabled(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetSentMacMsgQty(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/MgtMsgStats;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->GetSentMacMsgQty(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetSf(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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
            "Lcom/sqn/dcc/SfConfig;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscMgtImpl;->GetSf(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetSfList(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/SfConfig;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtImpl;->GetSfList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetSfStats(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/SfStats;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscMgtImpl;->GetSfStats(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetSfhList(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtImpl;->GetSfhList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetSystemDateMs(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtImpl;->GetSystemDateMs(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static MgtInitialize(Lcom/sqn/dcc/MgtClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscMgtImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscMgtImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscMgtImpl;->initialize(Lcom/sqn/dcc/MgtClient;)V

    return-void
.end method

.method public static PauseSf(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->PauseSf(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static RequestSfChange(ILcom/sqn/dcc/SfConfig;JLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sqn/dcc/SfConfig;",
            "J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sqn/dcc/agscMgtImpl;->RequestSfChange(ILcom/sqn/dcc/SfConfig;JLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static RequestSfDeletion(IJLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscMgtImpl;->RequestSfDeletion(IJLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ResetSfStats(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->ResetSfStats(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ResumeSf(ILcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->ResumeSf(ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetConfBasicCaps(Lcom/sqn/dcc/swmSsBasicCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/swmSsBasicCapabilities;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->SetConfBasicCaps(Lcom/sqn/dcc/swmSsBasicCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetConfRangingCaps(Lcom/sqn/dcc/swmSsRangingCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/swmSsRangingCapabilities;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->SetConfRangingCaps(Lcom/sqn/dcc/swmSsRangingCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetConfRegCaps(Lcom/sqn/dcc/swmSsRegCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/swmSsRegCapabilities;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtImpl;->SetConfRegCaps(Lcom/sqn/dcc/swmSsRegCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
