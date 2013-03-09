.class public Lcom/sqn/dcc/Pls;
.super Ljava/lang/Object;
.source "Pls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HostReady()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscPlsImpl;->HostReady()I

    move-result v0

    return v0
.end method

.method public static PlsInitialize(Lcom/sqn/dcc/PlsClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscPlsImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscPlsImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscPlsImpl;->initialize(Lcom/sqn/dcc/PlsClient;)V

    return-void
.end method

.method public static ReplyData(J[S)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscPlsImpl;->ReplyData(J[S)I

    move-result v0

    return v0
.end method

.method public static ReplyStatus(JI)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscPlsImpl;->ReplyStatus(JI)I

    move-result v0

    return v0
.end method
