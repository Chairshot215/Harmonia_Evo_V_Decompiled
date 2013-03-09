.class Lcom/htc/fm/FMRadioService$7;
.super Lcom/htc/fm/IFMRadioService$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Lcom/htc/fm/IFMRadioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public SetUIExist(Z)V
    .locals 1
    .parameter "exist"

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->SetUIExist(Z)V

    .line 1665
    return-void
.end method

.method public diableAudio()V
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->diableAudio()V

    .line 1504
    return-void
.end method

.method public enableTx()V
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->enableTx()V

    .line 1672
    return-void
.end method

.method public getAirModeWarningMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getAirModeWarningMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getAudioPath()I
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getAudioPath()I

    move-result v0

    return v0
.end method

.method public getBand()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getBand()I

    move-result v0

    return v0
.end method

.method public getCmdState()I
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getCmdState()I

    move-result v0

    return v0
.end method

.method public getFirstPresetId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getFirstPresetId()I

    move-result v0

    return v0
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getFreq()I

    move-result v0

    return v0
.end method

.method public getFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getFrequency()I

    move-result v0

    return v0
.end method

.method public getHeadsetWarningMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getHeadsetWarningMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresetId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getPresetId()I

    move-result v0

    return v0
.end method

.method public getRawRssi()I
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getRawRssi()I

    move-result v0

    return v0
.end method

.method public getRds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getRdsData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRdsData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getRdsData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRdsPTYData()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getRdsPTYData()I

    move-result v0

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getRssi()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    return v0
.end method

.method public getStateMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getStateMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTxAudioMode()I
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getTxAudioMode()I

    move-result v0

    return v0
.end method

.method public getTxCmdState()I
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getTxCmdState()I

    move-result v0

    return v0
.end method

.method public getTxFrequency()I
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getTxFrequency()I

    move-result v0

    return v0
.end method

.method public getTxScanFreq(I)I
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->getTxScanFreq(I)I

    move-result v0

    return v0
.end method

.method public getTxState()I
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v0

    return v0
.end method

.method public isBroadcasting()Z
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v0

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isHeadsetPlugged()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isMute()Z

    move-result v0

    return v0
.end method

.method public isRdsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isRdsEnabled()Z

    move-result v0

    return v0
.end method

.method public isRdsOn()Z
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isRdsEnabled()Z

    move-result v0

    return v0
.end method

.method public isRssiEnabled()Z
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isRssiEnabled()Z

    move-result v0

    return v0
.end method

.method public isScanning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isScanning()Z

    move-result v0

    return v0
.end method

.method public isTxMute()Z
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->isTxMute()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->next()V

    .line 1480
    return-void
.end method

.method public onPresetUpdated(I)V
    .locals 1
    .parameter "rowId"

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->onPresetUpdated(I)V

    .line 1660
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->pause()V

    .line 1468
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->play()V

    .line 1472
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->prev()V

    .line 1476
    return-void
.end method

.method public scan()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->scan()V

    .line 1618
    return-void
.end method

.method public scanChans(I)V
    .locals 1
    .parameter "nChans"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->scan(I)V

    .line 1623
    return-void
.end method

.method public scanChansTx(I)V
    .locals 1
    .parameter "nChans"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->scanTx(I)V

    .line 1685
    return-void
.end method

.method public seekDown()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->seekDown()V

    .line 1552
    return-void
.end method

.method public seekUp()V
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->seekUp()V

    .line 1548
    return-void
.end method

.method public setAudoPrescanEnabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->setAudoPrescanEnabled(Z)V

    .line 1644
    return-void
.end method

.method public setBand(I)V
    .locals 1
    .parameter "band"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->setBand(I)V

    .line 1484
    return-void
.end method

.method public setHeadsetOut()V
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setHeadsetOut()V

    .line 1500
    return-void
.end method

.method public setMono()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setMono()V

    .line 1606
    return-void
.end method

.method public setMonoTx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setMonoTx()V

    .line 1697
    return-void
.end method

.method public setMute()V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setMute()V

    .line 1488
    return-void
.end method

.method public setMuteTx()V
    .locals 1

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setMuteTx()V

    .line 1691
    return-void
.end method

.method public setRdsOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setRdsOff()V

    .line 1590
    return-void
.end method

.method public setRdsOn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setRdsOn()V

    .line 1594
    return-void
.end method

.method public setRssiOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setRssiOff()V

    .line 1598
    return-void
.end method

.method public setRssiOn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setRssiOn()V

    .line 1602
    return-void
.end method

.method public setSpeakerOut()V
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setSpeakerOut()V

    .line 1496
    return-void
.end method

.method public setStereo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setStereo()V

    .line 1610
    return-void
.end method

.method public setStereoTx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setStereoTx()V

    .line 1700
    return-void
.end method

.method public setUnMute()V
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setUnMute()V

    .line 1492
    return-void
.end method

.method public setUnMuteTx()V
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->setUnMuteTx()V

    .line 1694
    return-void
.end method

.method public setVolumeTx(I)V
    .locals 1
    .parameter "nVol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->setVolumeTx(I)V

    .line 1703
    return-void
.end method

.method public stopScan()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->stopScan()V

    .line 1628
    return-void
.end method

.method public stopScanTx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->stopScanTx()V

    .line 1688
    return-void
.end method

.method public tune(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->tune(I)V

    .line 1544
    return-void
.end method

.method public tuneTx(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->tuneTx(I)V

    .line 1682
    return-void
.end method

.method public turnOff()V
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->turnOff()V

    .line 1464
    return-void
.end method

.method public turnOffTx()V
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->turnOffTx()V

    .line 1679
    return-void
.end method

.method public turnOn(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->turnOn(I)V
    invoke-static {v0, p1}, Lcom/htc/fm/FMRadioService;->access$2000(Lcom/htc/fm/FMRadioService;I)V

    .line 1456
    return-void
.end method

.method public turnOnTx(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->turnOnTx(I)V

    .line 1676
    return-void
.end method

.method public updateCmdStateComplete(I)V
    .locals 1
    .parameter "cmdState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$7;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMRadioService;->updateCmdStateComplete(I)V

    .line 1614
    return-void
.end method
