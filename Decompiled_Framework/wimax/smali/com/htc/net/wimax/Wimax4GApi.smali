.class public interface abstract Lcom/htc/net/wimax/Wimax4GApi;
.super Ljava/lang/Object;
.source "Wimax4GApi.java"


# virtual methods
.method public abstract addFrequency(III)Z
.end method

.method public abstract changeToCorpNapid(I)Z
.end method

.method public abstract clearChannelList()Z
.end method

.method public abstract cli(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract connectNetwork(Lcom/htc/net/wimax/Wimax4GConfiguration;)I
.end method

.method public abstract createQosServiceFlowControl()Lcom/htc/net/wimax/Wimax4GManager$WimaxQosServiceFlowControl;
.end method

.method public abstract echoTest()Z
.end method

.method public abstract enableLogLevel(I)V
.end method

.method public abstract getAvailableNetworks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDecoration(I)Ljava/lang/String;
.end method

.method public abstract getEntryCriteriaCinr()I
.end method

.method public abstract getEntryCriteriaRssi()I
.end method

.method public abstract getInnerIdentity(I)Ljava/lang/String;
.end method

.method public abstract getInnerMethodType(I)Ljava/lang/String;
.end method

.method public abstract getMethodType(I)Ljava/lang/String;
.end method

.method public abstract getNetworkConfiguration()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOuterIdentity(I)Ljava/lang/String;
.end method

.method public abstract getPassword(I)Ljava/lang/String;
.end method

.method public abstract getRealm(I)Ljava/lang/String;
.end method

.method public abstract getScanResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSettingAuthMode()I
.end method

.method public abstract getSettingChannelList()[I
.end method

.method public abstract getSettingIdleModeTimer()I
.end method

.method public abstract getSettingTxPower()F
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract reassociate()Z
.end method

.method public abstract resetAuthConfig()V
.end method

.method public abstract resetConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;)Z
.end method

.method public abstract resetPacketErrorRate()Z
.end method

.method public abstract revertToSprintNapid()Z
.end method

.method public abstract sendCommand(Ljava/lang/String;)Z
.end method

.method public abstract setAuthMode(I)Z
.end method

.method public abstract setDecoration(ILjava/lang/String;)Z
.end method

.method public abstract setIdleModeTimer(I)Z
.end method

.method public abstract setInnerIdentity(ILjava/lang/String;)Z
.end method

.method public abstract setInnerMethodType(ILjava/lang/String;)Z
.end method

.method public abstract setIpRetentionEnabled(Z)Z
.end method

.method public abstract setIpRetentionTimer(I)Z
.end method

.method public abstract setMethodType(ILjava/lang/String;)Z
.end method

.method public abstract setNetworkConfiguration(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setOuterIdentity(ILjava/lang/String;)Z
.end method

.method public abstract setPassword(ILjava/lang/String;)Z
.end method

.method public abstract setRealm(ILjava/lang/String;)Z
.end method

.method public abstract setTxPower(F)Z
.end method

.method public abstract startAccessOmaDmConfig()V
.end method

.method public abstract startService()Z
.end method

.method public abstract startWimax()Z
.end method

.method public abstract stopAccessOmaDmConfig()V
.end method

.method public abstract stopService()Z
.end method

.method public abstract stopWimax()Z
.end method

.method public abstract updateAsnGatewayId(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)Z
.end method

.method public abstract updateConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;)Z
.end method

.method public abstract updateDeviceInfo(Lcom/htc/net/FourG/DeviceInfo;)Z
.end method

.method public abstract updateHandoverInfo(Lcom/htc/net/wimax/Wimax4GInfo;)Z
.end method

.method public abstract updateLinkSpeed(Lcom/htc/net/wimax/Wimax4GInfo;)Z
.end method

.method public abstract updateModulation(Lcom/htc/net/wimax/Wimax4GInfo;)Z
.end method

.method public abstract updateRealm(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)Z
.end method

.method public abstract updateServingBsInfo(Lcom/htc/net/wimax/Wimax4GInfo;)Z
.end method

.method public abstract updateSignal(Lcom/htc/net/wimax/Wimax4GInfo;)Z
.end method

.method public abstract updateTxPower(Lcom/htc/net/wimax/Wimax4GInfo;)Z
.end method
