.class Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;
.super Ljava/lang/Object;
.source "TMOClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/TMOClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientProfileServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/TMOClient;


# direct methods
.method constructor <init>(Lcom/htc/util/contacts/TMOClient;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "boundService"

    .prologue
    .line 129
    const-string v1, "TMOClient"

    const-string v2, "ClientProfileServiceConnection.onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-static {p2}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v2

    #setter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1, v2}, Lcom/htc/util/contacts/TMOClient;->access$002(Lcom/htc/util/contacts/TMOClient;Lcom/htc/clientprofileservice/IClientProfileService;)Lcom/htc/clientprofileservice/IClientProfileService;

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;
    invoke-static {v2}, Lcom/htc/util/contacts/TMOClient;->access$100(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/clientprofileservice/IClientProfileService;->registerCallback(Lcom/htc/clientprofileservice/IClientProfileCallback;)V

    .line 133
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveProfile(Z)V

    .line 134
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveMyGroups(Z)V

    .line 135
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveMyPhonebook(Z)V

    .line 136
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v1}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveSncData(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TMOClient"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v0, v1}, Lcom/htc/util/contacts/TMOClient;->access$002(Lcom/htc/util/contacts/TMOClient;Lcom/htc/clientprofileservice/IClientProfileService;)Lcom/htc/clientprofileservice/IClientProfileService;

    .line 143
    return-void
.end method
