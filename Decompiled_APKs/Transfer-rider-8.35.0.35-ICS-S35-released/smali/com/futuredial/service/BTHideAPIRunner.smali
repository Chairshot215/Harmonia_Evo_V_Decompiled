.class public Lcom/futuredial/service/BTHideAPIRunner;
.super Lcom/futuredial/service/HideAPIRunner;
.source "BTHideAPIRunner.java"


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/futuredial/service/HideAPIRunner;-><init>(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public dmi_api_cancelBondProcess()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v1, Lcom/futuredial/service/HideAPIRunner$RetObject;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/service/HideAPIRunner$RetObject;-><init>(Ljava/lang/Object;)V

    .line 28
    .local v1, bReturn:Lcom/futuredial/service/HideAPIRunner$RetObject;
    new-array v0, v3, [Ljava/lang/Object;

    .line 29
    .local v0, arg:[Ljava/lang/Object;
    const-string v2, "cancelBondProcess"

    invoke-virtual {p0, v2, v1, v0}, Lcom/futuredial/service/BTHideAPIRunner;->RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z

    .line 30
    iget-object v2, v1, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public dmi_api_createBond()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v1, Lcom/futuredial/service/HideAPIRunner$RetObject;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/service/HideAPIRunner$RetObject;-><init>(Ljava/lang/Object;)V

    .line 42
    .local v1, bReturn:Lcom/futuredial/service/HideAPIRunner$RetObject;
    new-array v0, v3, [Ljava/lang/Object;

    .line 43
    .local v0, arg:[Ljava/lang/Object;
    const-string v2, "createBond"

    invoke-virtual {p0, v2, v1, v0}, Lcom/futuredial/service/BTHideAPIRunner;->RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z

    .line 44
    iget-object v2, v1, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public dmi_api_fetchUuidsWithSdp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v1, Lcom/futuredial/service/HideAPIRunner$RetObject;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/service/HideAPIRunner$RetObject;-><init>(Ljava/lang/Object;)V

    .line 49
    .local v1, bReturn:Lcom/futuredial/service/HideAPIRunner$RetObject;
    new-array v0, v3, [Ljava/lang/Object;

    .line 50
    .local v0, arg:[Ljava/lang/Object;
    const-string v2, "fetchUuidsWithSdp"

    invoke-virtual {p0, v2, v1, v0}, Lcom/futuredial/service/BTHideAPIRunner;->RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z

    .line 51
    iget-object v2, v1, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public dmi_api_getUuids()[Landroid/os/ParcelUuid;
    .locals 3

    .prologue
    .line 55
    new-instance v1, Lcom/futuredial/service/HideAPIRunner$RetObject;

    invoke-direct {v1}, Lcom/futuredial/service/HideAPIRunner$RetObject;-><init>()V

    .line 56
    .local v1, bReturn:Lcom/futuredial/service/HideAPIRunner$RetObject;
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 57
    .local v0, arg:[Ljava/lang/Object;
    const-string v2, "getUuids"

    invoke-virtual {p0, v2, v1, v0}, Lcom/futuredial/service/BTHideAPIRunner;->RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z

    .line 58
    iget-object v2, v1, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    check-cast v2, [Landroid/os/ParcelUuid;

    check-cast v2, [Landroid/os/ParcelUuid;

    return-object v2
.end method

.method public dmi_api_removeBond()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    new-instance v1, Lcom/futuredial/service/HideAPIRunner$RetObject;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/service/HideAPIRunner$RetObject;-><init>(Ljava/lang/Object;)V

    .line 35
    .local v1, bReturn:Lcom/futuredial/service/HideAPIRunner$RetObject;
    new-array v0, v3, [Ljava/lang/Object;

    .line 36
    .local v0, arg:[Ljava/lang/Object;
    const-string v2, "removeBond"

    invoke-virtual {p0, v2, v1, v0}, Lcom/futuredial/service/BTHideAPIRunner;->RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z

    .line 37
    iget-object v2, v1, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public dmi_api_setPin([B)Z
    .locals 4
    .parameter "pinBytes"

    .prologue
    const/4 v3, 0x0

    .line 19
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 20
    .local v0, arg:[Ljava/lang/Object;
    aput-object p1, v0, v3

    .line 21
    new-instance v1, Lcom/futuredial/service/HideAPIRunner$RetObject;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/service/HideAPIRunner$RetObject;-><init>(Ljava/lang/Object;)V

    .line 22
    .local v1, ret:Lcom/futuredial/service/HideAPIRunner$RetObject;
    const-string v2, "setPin"

    invoke-virtual {p0, v2, v1, v0}, Lcom/futuredial/service/BTHideAPIRunner;->RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z

    .line 23
    iget-object v2, v1, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method
