.class public Lcom/sqn/dcc/Omadm;
.super Ljava/lang/Object;
.source "Omadm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OmadmInitialize(Lcom/sqn/dcc/OmadmClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscOmadmImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscOmadmImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscOmadmImpl;->initialize(Lcom/sqn/dcc/OmadmClient;)V

    return-void
.end method

.method public static ReplyChoice(J[J)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscOmadmImpl;->ReplyChoice(J[J)I

    move-result v0

    return v0
.end method

.method public static ReplyConfirm(JZ)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscOmadmImpl;->ReplyConfirm(JZ)I

    move-result v0

    return v0
.end method

.method public static ReplyTextInput(JLjava/lang/String;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscOmadmImpl;->ReplyTextInput(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ReprovisionDevice(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscOmadmImpl;->ReprovisionDevice(J)I

    move-result v0

    return v0
.end method

.method public static ResetFallbackCounter(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscOmadmImpl;->ResetFallbackCounter(J)I

    move-result v0

    return v0
.end method

.method public static SetAuthenticationCredentials(JLjava/lang/String;Z)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscOmadmImpl;->SetAuthenticationCredentials(JLjava/lang/String;Z)I

    move-result v0

    return v0
.end method
