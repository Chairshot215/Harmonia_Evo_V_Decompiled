.class public Lcom/sqn/dcc/UpgCtrl;
.super Ljava/lang/Object;
.source "UpgCtrl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EndSystemUpgrade()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscUpgCtrlImpl;->EndSystemUpgrade()I

    move-result v0

    return v0
.end method

.method public static StartSystemUpgrade()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscUpgCtrlImpl;->StartSystemUpgrade()I

    move-result v0

    return v0
.end method

.method public static UpgCtrlInitialize(Lcom/sqn/dcc/UpgCtrlClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscUpgCtrlImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscUpgCtrlImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscUpgCtrlImpl;->initialize(Lcom/sqn/dcc/UpgCtrlClient;)V

    return-void
.end method
