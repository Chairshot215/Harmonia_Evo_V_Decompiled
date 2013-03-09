.class public Lcom/redbend/vdm/VdmConfig;
.super Ljava/lang/Object;
.source "VdmConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;,
        Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;,
        Lcom/redbend/vdm/VdmConfig$DmVersion;,
        Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;
    }
.end annotation


# instance fields
.field private _proxy:Lcom/redbend/vdm/ConfigProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/redbend/vdm/ConfigProxy;

    invoke-direct {v0}, Lcom/redbend/vdm/ConfigProxy;-><init>()V

    iput-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    .line 15
    return-void
.end method


# virtual methods
.method public get202statusCodeNotSupportedByServer()Z
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->get202statusCodeNotSupportedByServer()Z

    move-result v0

    return v0
.end method

.method public getAbortIfClientCommandFailed()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getAbortIfClientCommandFailed()Z

    move-result v0

    return v0
.end method

.method public getAllowBootstrapOverwriteAccount()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getAllowBootstrapOverwriteAccount()Z

    move-result v0

    return v0
.end method

.method public getAllowChallengeWithPkg1()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getAllowChallengeWithPkg1()Z

    move-result v0

    return v0
.end method

.method public getB64EncodeBinDataOverWBXML()Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getB64EncodeBinDataOverWBXML()Z

    move-result v0

    return v0
.end method

.method public getDDVersionCheck()Z
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getDDVersionCheck()Z

    move-result v0

    return v0
.end method

.method public getDMAccSingle()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getDMAccSingle()Z

    move-result v0

    return v0
.end method

.method public getDlProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getDlProxy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlUserAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getDlUserAgentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDmAccConfiguration()Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;
    .locals 3

    .prologue
    .line 445
    new-instance v0, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;

    invoke-direct {v0, p0}, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;-><init>(Lcom/redbend/vdm/VdmConfig;)V

    .line 446
    .local v0, config:Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;
    iget-object v2, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v2, v0}, Lcom/redbend/vdm/ConfigProxy;->getDmAccConfiguration(Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;)I

    move-result v1

    .line 447
    .local v1, dmVersion:I
    invoke-static {}, Lcom/redbend/vdm/VdmConfig$DmVersion;->values()[Lcom/redbend/vdm/VdmConfig$DmVersion;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->activeAccountDMVersion:Lcom/redbend/vdm/VdmConfig$DmVersion;

    .line 448
    return-object v0
.end method

.method public getDmProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getDmProxy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDmUserAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getDmUserAgentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodeWBXMLMsg()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getEncodeWBXMLMsg()Z

    move-result v0

    return v0
.end method

.method public getIfRangeInsteadOfIfMatch()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getIfRangeInsteadOfIfMatch()Z

    move-result v0

    return v0
.end method

.method public getInstallNotifySuccessOnly()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getInstallNotifySuccessOnly()Z

    move-result v0

    return v0
.end method

.method public getIsClientNoncePerMessage()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getIsClientNoncePerMessage()Z

    move-result v0

    return v0
.end method

.method public getIsOMADLAbsoluteURL()Z
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getIsOMADLAbsoluteURL()Z

    move-result v0

    return v0
.end method

.method public getIsServerNoncePerMessage()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getIsServerNoncePerMessage()Z

    move-result v0

    return v0
.end method

.method public getMaxMsgSize()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getMaxMsgSize()I

    move-result v0

    return v0
.end method

.method public getMaxNetRetries()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getMaxNetRetries()I

    move-result v0

    return v0
.end method

.method public getMaxObjSize()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getMaxObjSize()I

    move-result v0

    return v0
.end method

.method public getNotificationVerificationMode()Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getNotificationVerificationMode()I

    move-result v0

    invoke-static {v0}, Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;->fromInt(I)Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public getSessionIDAsDec()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getSessionIDAsDec()Z

    move-result v0

    return v0
.end method

.method public getSwapCpPeers()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getSwapCpPeers()Z

    move-result v0

    return v0
.end method

.method public getTndsEnabled()Z
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getTndsEnabled()Z

    move-result v0

    return v0
.end method

.method public getUseVzwTreeStructure()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->getUseVzwTreeStructure()Z

    move-result v0

    return v0
.end method

.method public set202statusCodeNotSupportedByServer(Z)V
    .locals 1
    .parameter "notSupported"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->set202statusCodeNotSupportedByServer(Z)V

    .line 968
    return-void
.end method

.method public setAbortIfClientCommandFailed(Z)V
    .locals 1
    .parameter "abort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setAbortIfClientCommandFailed(Z)V

    .line 667
    return-void
.end method

.method public setAllowBootstrapOverwriteAccount(Z)V
    .locals 1
    .parameter "inIsAllowed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setAllowBootstrapOverwriteAccount(Z)V

    .line 222
    return-void
.end method

.method public setAllowChallengeWithPkg1(Z)V
    .locals 1
    .parameter "isAllowed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setAllowChallengeWithPkg1(Z)V

    .line 805
    return-void
.end method

.method public setB64EncodeBinDataOverWBXML(Z)V
    .locals 1
    .parameter "isB64"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setB64EncodeBinDataOverWBXML(Z)V

    .line 774
    return-void
.end method

.method public setCertificatePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-static {p1}, Lcom/redbend/vdm/comm/VdmComm;->setCertificatePath(Ljava/lang/String;)V

    .line 1019
    return-void
.end method

.method public setDDVersionCheck(Z)V
    .locals 1
    .parameter "check"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setDDVersionCheck(Z)V

    .line 870
    return-void
.end method

.method public setDMAccSingle(Z)V
    .locals 1
    .parameter "isSingle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setDMAccSingle(Z)V

    .line 196
    return-void
.end method

.method public setDlHttpAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/redbend/vdm/ConfigProxy;->setDlHttpAuthentication(ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public setDlProxy(Ljava/lang/String;)V
    .locals 1
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setDlProxy(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public setDlProxyAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/redbend/vdm/ConfigProxy;->setDlProxyAuthentication(ILjava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public setDlUserAgentName(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setDlUserAgentName(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public setDmAccConfiguration(Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;)V
    .locals 4
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    iget-object v1, p1, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->activeAccountDMVersion:Lcom/redbend/vdm/VdmConfig$DmVersion;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmConfig$DmVersion;->ordinal()I

    move-result v1

    iget-object v2, p1, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->dm12root:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->updateInactiveDMAccount:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/redbend/vdm/ConfigProxy;->setDmAccConfiguration(ILjava/lang/String;Z)V

    .line 436
    return-void
.end method

.method public setDmHttpAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/redbend/vdm/ConfigProxy;->setDmHttpAuthentication(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public setDmProxy(Ljava/lang/String;)V
    .locals 1
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setDmProxy(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public setDmProxyAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/redbend/vdm/ConfigProxy;->setDmProxyAuthentication(ILjava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public setDmUserAgentName(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setDmUserAgentName(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public setEncodeWBXMLMsg(Z)V
    .locals 1
    .parameter "isWBXML"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setEncodeWBXMLMsg(Z)V

    .line 347
    return-void
.end method

.method public setIfRangeInsteadOfIfMatch(Z)V
    .locals 1
    .parameter "useIfRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setIfRangeInsteadOfIfMatch(Z)V

    .line 375
    return-void
.end method

.method public setIgnoreMissingETag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->setIgnoreMissingETag()V

    .line 309
    return-void
.end method

.method public setInstallNotifySuccessOnly(Z)V
    .locals 1
    .parameter "isSuccessOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setInstallNotifySuccessOnly(Z)V

    .line 281
    return-void
.end method

.method public setIsClientNoncePerMessage(Z)V
    .locals 1
    .parameter "isPerMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setIsClientNoncePerMessage(Z)V

    .line 706
    return-void
.end method

.method public setIsDMAccNameOptional(Z)V
    .locals 1
    .parameter "optional"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setIsDMAccNameOptional(Z)V

    .line 943
    return-void
.end method

.method public setIsOMADLAbsoluteURL(Z)V
    .locals 1
    .parameter "absolute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setIsOMADLAbsoluteURL(Z)V

    .line 900
    return-void
.end method

.method public setIsServerNoncePerMessage(Z)V
    .locals 1
    .parameter "isPerMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setIsServerNoncePerMessage(Z)V

    .line 741
    return-void
.end method

.method public setIsUsingWedmServer(ZLjava/lang/String;)V
    .locals 1
    .parameter "usingWedmServer"
    .parameter "placeHolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 926
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1, p2}, Lcom/redbend/vdm/ConfigProxy;->setIsUsingWedmServer(ZLjava/lang/String;)V

    .line 927
    return-void
.end method

.method public setMaxMsgSize(I)V
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setMaxMsgSize(I)V

    .line 118
    return-void
.end method

.method public setMaxNetRetries(I)V
    .locals 1
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setMaxNetRetries(I)V

    .line 167
    return-void
.end method

.method public setMaxObjSize(I)V
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setMaxObjSize(I)V

    .line 142
    return-void
.end method

.method public setNotificationVerificationMode(Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;)V
    .locals 2
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/ConfigProxy;->setNotificationVerificationMode(I)Z

    .line 405
    return-void
.end method

.method public setSessionIDAsDec(Z)V
    .locals 1
    .parameter "decimal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setSessionIDAsDec(Z)V

    .line 836
    return-void
.end method

.method public setSwapCpPeers(Z)V
    .locals 1
    .parameter "inSwapCpPeers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setSwapCpPeers(Z)V

    .line 250
    return-void
.end method

.method public setTndsEnabled(Z)V
    .locals 1
    .parameter "isEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/ConfigProxy;->setTndsEnabled(Z)V

    .line 999
    return-void
.end method

.method public setUseVzwTreeStructure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/redbend/vdm/VdmConfig;->_proxy:Lcom/redbend/vdm/ConfigProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/ConfigProxy;->setUseVzwTreeStructure()V

    .line 321
    return-void
.end method
