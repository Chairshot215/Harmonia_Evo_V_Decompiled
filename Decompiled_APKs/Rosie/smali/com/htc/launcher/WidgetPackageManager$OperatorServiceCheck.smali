.class public Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
.super Ljava/lang/Object;
.source "WidgetPackageManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/WidgetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OperatorServiceCheck"
.end annotation


# static fields
.field static mForceRun:Z

.field static mProfileResponse:Lcom/htc/clientprofileservice/IClientProfileCallback;

.field static mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

.field public static mServiceSubscribe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1398
    const/4 v0, -0x1

    sput v0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    .line 1399
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mForceRun:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter "forceRun"

    .prologue
    .line 1323
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    sput-boolean p1, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mForceRun:Z

    .line 1325
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "boundService"

    .prologue
    .line 1328
    const/4 v2, -0x1

    sget v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-eq v2, v3, :cond_1

    sget-boolean v2, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mForceRun:Z

    if-nez v2, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    invoke-static {p2}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v2

    sput-object v2, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    .line 1335
    :try_start_0
    sget-object v2, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    if-eqz v2, :cond_2

    .line 1337
    :cond_2
    sget-object v2, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    new-instance v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck$1;

    invoke-direct {v3, p0}, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck$1;-><init>(Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;)V

    invoke-interface {v2, v3}, Lcom/htc/clientprofileservice/IClientProfileService;->registerCallback(Lcom/htc/clientprofileservice/IClientProfileCallback;)V

    .line 1370
    sget-object v2, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    if-eqz v2, :cond_0

    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, count:I
    const/4 v1, 0x0

    .line 1373
    .local v1, isPass:Z
    :goto_1
    sget-object v2, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    invoke-interface {v2}, Lcom/htc/clientprofileservice/IClientProfileService;->isProfileDataCached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_3

    .line 1375
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1380
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1382
    :cond_3
    if-eqz v1, :cond_0

    :try_start_2
    sget-object v2, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveMyPhonebook(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1384
    .end local v0           #count:I
    .end local v1           #isPass:Z
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1376
    .restart local v0       #count:I
    .restart local v1       #isPass:Z
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1393
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    .line 1394
    return-void
.end method
