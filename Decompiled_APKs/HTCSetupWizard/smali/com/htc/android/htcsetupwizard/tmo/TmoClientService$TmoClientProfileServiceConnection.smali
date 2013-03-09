.class Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;
.super Ljava/lang/Object;
.source "TmoClientService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TmoClientProfileServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "boundService"

    .prologue
    .line 31
    const-string v1, "TmoClientService"

    const-string v2, "onServiceConnected() connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-static {p2}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v2

    #setter for: Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1, v2}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->access$002(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;Lcom/htc/clientprofileservice/IClientProfileService;)Lcom/htc/clientprofileservice/IClientProfileService;

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    #getter for: Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->access$000(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    #getter for: Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->access$100(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)Lcom/htc/clientprofileservice/IClientProfileCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/clientprofileservice/IClientProfileService;->registerCallback(Lcom/htc/clientprofileservice/IClientProfileCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    #calls: Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->syncStatus()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->access$200(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)V

    .line 42
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 39
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->stopSelf()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 44
    const-string v0, "TmoClientService"

    const-string v1, "onServiceDisconnected() disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;->this$0:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->access$002(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;Lcom/htc/clientprofileservice/IClientProfileService;)Lcom/htc/clientprofileservice/IClientProfileService;

    .line 46
    return-void
.end method
