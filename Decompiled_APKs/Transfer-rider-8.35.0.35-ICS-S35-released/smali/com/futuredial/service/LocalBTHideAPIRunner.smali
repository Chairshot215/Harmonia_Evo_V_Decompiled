.class public Lcom/futuredial/service/LocalBTHideAPIRunner;
.super Lcom/futuredial/service/HideAPIRunner;
.source "LocalBTHideAPIRunner.java"


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .parameter "ba"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/futuredial/service/HideAPIRunner;-><init>(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method public dmi_isSspEnabled(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 15
    new-instance v2, Lcom/futuredial/service/HideAPIRunner$RetObject;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/futuredial/service/HideAPIRunner$RetObject;-><init>(Ljava/lang/Object;)V

    .line 16
    .local v2, bReturn:Lcom/futuredial/service/HideAPIRunner$RetObject;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 17
    .local v0, arg:[Ljava/lang/Object;
    const-string v3, "isSspEnabled"

    invoke-virtual {p0, v3, v2, v0}, Lcom/futuredial/service/LocalBTHideAPIRunner;->RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z

    move-result v1

    .line 18
    .local v1, bAPIExeced:Z
    if-nez v1, :cond_0

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, v2, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0
.end method
