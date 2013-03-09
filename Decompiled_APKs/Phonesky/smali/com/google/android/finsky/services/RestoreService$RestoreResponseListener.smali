.class Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreResponseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "accountName"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    .line 296
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)V
    .locals 14
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 301
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I
    invoke-static {v0, v11}, Lcom/google/android/finsky/services/RestoreService;->access$202(Lcom/google/android/finsky/services/RestoreService;I)I

    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I
    invoke-static {v0, v11}, Lcom/google/android/finsky/services/RestoreService;->access$302(Lcom/google/android/finsky/services/RestoreService;I)I

    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I
    invoke-static {v0, v11}, Lcom/google/android/finsky/services/RestoreService;->access$402(Lcom/google/android/finsky/services/RestoreService;I)I

    .line 305
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v12

    .line 307
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    .line 309
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v11

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 311
    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v5

    .line 312
    if-nez v5, :cond_1

    .line 313
    const-string v1, "Unexpected null InstallAsset for restore asset."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetPackage()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getVersionCode()I

    move-result v2

    .line 319
    invoke-static {v4}, Lcom/google/android/finsky/local/AssetUtils;->assetResponseToDeliveryData(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    .line 322
    iget-object v6, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/services/RestoreService;->shouldRestore(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)Z
    invoke-static {v6, v1, v2, v4, v7}, Lcom/google/android/finsky/services/RestoreService;->access$500(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v4}, Lcom/google/android/finsky/services/RestoreService;->access$600(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->start(Ljava/lang/String;)V

    .line 330
    invoke-interface {v0, v1, v8, v11}, Lcom/google/android/finsky/receivers/Installer;->setVisibility(Ljava/lang/String;ZZ)V

    .line 335
    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "restore"

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 345
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    .line 346
    goto :goto_0

    .line 348
    :cond_2
    const-string v0, "Attempted to restore %d assets."

    new-array v1, v8, [Ljava/lang/Object;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    const-string v0, "  Skipped (already tracked): %d"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I
    invoke-static {v2}, Lcom/google/android/finsky/services/RestoreService;->access$200(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    const-string v0, "  Skipped (other account): %d"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I
    invoke-static {v2}, Lcom/google/android/finsky/services/RestoreService;->access$300(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    const-string v0, "  Skipped (already installed): %d"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I
    invoke-static {v2}, Lcom/google/android/finsky/services/RestoreService;->access$400(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    if-lez v10, :cond_3

    .line 356
    const-string v0, "  Posted for deferred download/install: %d"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/RestoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 358
    const-string v0, "alarm"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 359
    sget-object v1, Lcom/google/android/finsky/config/G;->appRestoreHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 361
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    const-string v5, "kick_installer"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    invoke-static {v2, v11, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v11, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v0}, Lcom/google/android/finsky/services/RestoreService;->access$600(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishAccount(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)V

    return-void
.end method
