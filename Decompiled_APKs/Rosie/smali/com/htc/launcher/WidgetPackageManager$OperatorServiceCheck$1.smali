.class Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck$1;
.super Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;
.source "WidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;


# direct methods
.method constructor <init>(Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck$1;->this$0:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;

    invoke-direct {p0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public capabilitiesSubmitted(Z)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1340
    return-void
.end method

.method public myGroupsRetrieved(Ljava/util/List;)V
    .locals 0
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
    .line 1364
    .local p1, myGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
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
    const/4 v1, 0x0

    .line 1344
    if-nez p1, :cond_0

    .line 1346
    sput v1, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    .line 1358
    :goto_0
    return-void

    .line 1348
    :cond_0
    invoke-virtual {p1}, Lcom/htc/clientprofileservice/MyPhonebook;->isNabProvisioningStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/MyPhonebook;->isCmtUiSubscribed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1351
    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    goto :goto_0

    .line 1355
    :cond_2
    sput v1, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    goto :goto_0
.end method

.method public profileModified(Z)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1342
    return-void
.end method

.method public profileRetrieved(Lcom/htc/clientprofileservice/Profile;)V
    .locals 0
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1360
    return-void
.end method

.method public serverNotified(IZ)V
    .locals 0
    .parameter "opcode"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1367
    return-void
.end method

.method public sncdataRetrieved(Lcom/htc/clientprofileservice/Sncdata;)V
    .locals 0
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1362
    return-void
.end method
