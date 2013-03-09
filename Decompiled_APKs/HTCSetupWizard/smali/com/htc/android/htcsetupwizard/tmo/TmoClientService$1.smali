.class Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;
.super Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;
.source "TmoClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-direct {p0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public capabilitiesSubmitted(Z)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "TmoClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capabilitiesSubmitted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public myGroupsRetrieved(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/Group;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    .local p1, myGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    const-string v0, "TmoClientService"

    const-string v1, "profileModified"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public myPhonebookRetrieved(Lcom/htc/clientprofileservice/MyPhonebook;)V
    .locals 2
    .parameter "mpb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "TmoClientService"

    const-string v1, "myPhonebookRetrieved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public profileModified(Z)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "TmoClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profileRetrieved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public profileRetrieved(Lcom/htc/clientprofileservice/Profile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p1, :cond_2

    .line 62
    const-string v0, ""

    .line 63
    .local v0, szSummaryDescription:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Profile;->isNabProvisioningStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Profile;->isSyncEnabledUserInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Profile;->isCmtUiSubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "community_status_from_server"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    const-string v1, "TmoClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileRetrieved , Summary Description = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0           #szSummaryDescription:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->stopSelf()V

    .line 78
    return-void

    .line 68
    .restart local v0       #szSummaryDescription:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    .end local v0           #szSummaryDescription:Ljava/lang/String;
    :cond_2
    const-string v1, "TmoClientService"

    const-string v2, "profile does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public serverNotified(IZ)V
    .locals 2
    .parameter "opcode"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "TmoClientService"

    const-string v1, "profileUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public sncdataRetrieved(Lcom/htc/clientprofileservice/Sncdata;)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "TmoClientService"

    const-string v1, "sncdataRetrieve"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method
