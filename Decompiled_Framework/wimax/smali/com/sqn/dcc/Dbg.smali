.class public Lcom/sqn/dcc/Dbg;
.super Ljava/lang/Object;
.source "Dbg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscDbgImpl;->Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static DbgInitialize(Lcom/sqn/dcc/DbgClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscDbgImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscDbgImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscDbgImpl;->initialize(Lcom/sqn/dcc/DbgClient;)V

    return-void
.end method

.method public static DumpFftSymbols(JJLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sqn/dcc/agscDbgImpl;->DumpFftSymbols(JJLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static Echo(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscDbgImpl;->Echo(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static FilterLog(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscDbgImpl;->FilterLog(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetCommandsList(IILcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/CommandDesc;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscDbgImpl;->GetCommandsList(IILcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetCommandsQty(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDbgImpl;->GetCommandsQty(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetDumpedFftSymbols(JLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/FftSymbolDescriptor;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscDbgImpl;->GetDumpedFftSymbols(JLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetFatalErrorMode(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/EpsFatalMode;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDbgImpl;->GetFatalErrorMode(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetLogList(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/LogDesc;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDbgImpl;->GetLogList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static SendMngtMsg(I[SLcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[S",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscDbgImpl;->SendMngtMsg(I[SLcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetFatalErrorMode(Lcom/sqn/dcc/EpsFatalMode;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/EpsFatalMode;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscDbgImpl;->SetFatalErrorMode(Lcom/sqn/dcc/EpsFatalMode;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SuppressWarnings(Z)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscDbgImpl;->SuppressWarnings(Z)I

    move-result v0

    return v0
.end method
