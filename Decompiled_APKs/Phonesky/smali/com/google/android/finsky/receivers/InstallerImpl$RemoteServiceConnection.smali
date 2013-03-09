.class Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "boundService"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1030
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 1031
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-static {p2}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    move-result-object v3

    #setter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    invoke-static {v2, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$802(Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    .line 1035
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    invoke-static {v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$800(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v3, v3, Lcom/google/android/finsky/receivers/InstallerImpl;->mListener:Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->registerListener(Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$1100(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$1100(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1056
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 1037
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Couldn\'t register listener *** received %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$1000(Lcom/google/android/finsky/receivers/InstallerImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;
    invoke-static {v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$900(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1043
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #setter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    invoke-static {v2, v6}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$802(Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    .line 1045
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$1100(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1049
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z
    invoke-static {v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$400(Lcom/google/android/finsky/receivers/InstallerImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1050
    const-string v2, "Force-starting the installer after connection failure"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #setter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z
    invoke-static {v2, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$402(Lcom/google/android/finsky/receivers/InstallerImpl;Z)Z

    .line 1052
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
    invoke-static {v2, v6, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$500(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V

    .line 1060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void

    .line 1059
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$1100(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 1064
    return-void
.end method
