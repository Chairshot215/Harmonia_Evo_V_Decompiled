.class Lcom/google/android/finsky/receivers/InstallerTask$1;
.super Ljava/lang/Object;
.source "InstallerTask.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)V
    .locals 9
    .parameter "deliveryResponse"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 798
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getStatus()I

    move-result v1

    .line 799
    .local v1, responseCode:I
    if-ne v1, v8, :cond_0

    .line 800
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-static {v3}, Lcom/google/android/finsky/receivers/InstallerTask;->access$000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    .line 803
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-static {v3}, Lcom/google/android/finsky/receivers/InstallerTask;->access$100(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v3

    iget-object v2, v3, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 804
    .local v2, updated:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V
    invoke-static {v3, v2, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->access$200(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 805
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    invoke-static {v3, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$300(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    .line 814
    .end local v2           #updated:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :goto_0
    return-void

    .line 808
    :cond_0
    const-string v3, "Received non-OK response %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 810
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->deliveryResponseToInstallerError(I)I
    invoke-static {v3, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$400(Lcom/google/android/finsky/receivers/InstallerTask;I)I

    move-result v0

    .line 811
    .local v0, deliveryError:I
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    invoke-static {v3, v4, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$500(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 812
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$1;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    const/4 v4, 0x0

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V
    invoke-static {v3, v0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->access$600(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 795
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)V

    return-void
.end method
