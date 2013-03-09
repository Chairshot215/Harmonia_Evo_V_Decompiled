.class Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;
.super Ljava/lang/Object;
.source "PhoneService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/PhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneServiceConnection"
.end annotation


# instance fields
.field private mService:Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/PhoneService;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/ctrl/PhoneService;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->this$0:Lcom/htc/idlescreen/base/ctrl/PhoneService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/ctrl/PhoneService;Lcom/htc/idlescreen/base/ctrl/PhoneService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;-><init>(Lcom/htc/idlescreen/base/ctrl/PhoneService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;)Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->mService:Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "comp"
    .parameter "binder"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->this$0:Lcom/htc/idlescreen/base/ctrl/PhoneService;

    #getter for: Lcom/htc/idlescreen/base/ctrl/PhoneService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->access$200(Lcom/htc/idlescreen/base/ctrl/PhoneService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_0
    invoke-static {p2}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->mService:Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

    .line 110
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->this$0:Lcom/htc/idlescreen/base/ctrl/PhoneService;

    #getter for: Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->access$300(Lcom/htc/idlescreen/base/ctrl/PhoneService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->this$0:Lcom/htc/idlescreen/base/ctrl/PhoneService;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->this$0:Lcom/htc/idlescreen/base/ctrl/PhoneService;

    #getter for: Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->access$300(Lcom/htc/idlescreen/base/ctrl/PhoneService;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->performAction(I)V

    .line 113
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->this$0:Lcom/htc/idlescreen/base/ctrl/PhoneService;

    #getter for: Lcom/htc/idlescreen/base/ctrl/PhoneService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->access$200(Lcom/htc/idlescreen/base/ctrl/PhoneService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 120
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->mService:Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
