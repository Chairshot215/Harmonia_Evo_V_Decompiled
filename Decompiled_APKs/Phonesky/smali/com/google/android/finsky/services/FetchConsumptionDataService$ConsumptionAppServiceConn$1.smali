.class Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;
.super Ljava/lang/Object;
.source "FetchConsumptionDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;->this$1:Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

    iput-object p2, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;->this$1:Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

    iget-object v1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;->val$service:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/play/IUserContentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/play/IUserContentService;

    move-result-object v1

    #setter for: Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mService:Lcom/google/android/play/IUserContentService;
    invoke-static {v0, v1}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->access$002(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;Lcom/google/android/play/IUserContentService;)Lcom/google/android/play/IUserContentService;

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;->this$1:Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

    #calls: Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->getDataFromService()V
    invoke-static {v0}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->access$100(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;->this$1:Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

    #getter for: Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->access$200(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    return-void
.end method
