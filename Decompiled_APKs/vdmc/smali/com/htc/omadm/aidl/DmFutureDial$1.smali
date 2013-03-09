.class Lcom/htc/omadm/aidl/DmFutureDial$1;
.super Lcom/htc/omadm/aidl/IDmFutureDial$Stub;
.source "DmFutureDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/aidl/DmFutureDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/aidl/DmFutureDial;


# direct methods
.method constructor <init>(Lcom/htc/omadm/aidl/DmFutureDial;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    invoke-direct {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public Get_ClientAthData()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ClientAthName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ClientAthSecret()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ProxyAddress()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ProxyPort()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ServerAdrAddress()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ServerAdrPort()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ServerAthData()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ServerAthName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_ServerAthSecret()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Set_ClientAthData(Ljava/lang/String;)Z
    .locals 2
    .parameter "ClientPwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ClientAthName(Ljava/lang/String;)Z
    .locals 2
    .parameter "ClientName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ClientAthSecret(Ljava/lang/String;)Z
    .locals 2
    .parameter "ClientNonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ProxyAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "ProxyAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ProxyPort(Ljava/lang/String;)Z
    .locals 2
    .parameter "ProxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ServerAdrAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "ServerAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ServerAdrPort(Ljava/lang/String;)Z
    .locals 2
    .parameter "ServerPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ServerAthData(Ljava/lang/String;)Z
    .locals 2
    .parameter "ServerPwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ServerAthName(Ljava/lang/String;)Z
    .locals 2
    .parameter "ServerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Set_ServerAthSecret(Ljava/lang/String;)Z
    .locals 2
    .parameter "ServerNonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v0, v0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    iget-object v1, p0, Lcom/htc/omadm/aidl/DmFutureDial$1;->this$0:Lcom/htc/omadm/aidl/DmFutureDial;

    iget-object v1, v1, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
