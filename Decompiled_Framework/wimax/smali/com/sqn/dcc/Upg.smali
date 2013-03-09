.class public Lcom/sqn/dcc/Upg;
.super Ljava/lang/Object;
.source "Upg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloseFile(IJLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
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

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sqn/dcc/agscUpgImpl;->CloseFile(IJLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static OpenFile(ILjava/lang/String;Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/sqn/dcc/agscUpgImpl;->OpenFile(ILjava/lang/String;Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ReadFile(IJILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/sqn/dcc/agscUpgImpl;->ReadFile(IJILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static ReadFileEx(JJJLcom/sqn/dcc/OutArray;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/sqn/dcc/agscUpgImpl;->ReadFileEx(JJJLcom/sqn/dcc/OutArray;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ReadNvm(JILcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscUpgImpl;->ReadNvm(JILcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static SyncNvm(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscUpgImpl;->SyncNvm(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SysFormat(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscUpgImpl;->SysFormat(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static UpgInitialize(Lcom/sqn/dcc/UpgClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscUpgImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscUpgImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscUpgImpl;->initialize(Lcom/sqn/dcc/UpgClient;)V

    return-void
.end method

.method public static WriteFile(IJ[SLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ[S",
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

    invoke-static/range {p0 .. p5}, Lcom/sqn/dcc/agscUpgImpl;->WriteFile(IJ[SLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static WriteFileEx(JJ[SLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[S",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/sqn/dcc/agscUpgImpl;->WriteFileEx(JJ[SLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static WriteNvm(J[SLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[S",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscUpgImpl;->WriteNvm(J[SLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
