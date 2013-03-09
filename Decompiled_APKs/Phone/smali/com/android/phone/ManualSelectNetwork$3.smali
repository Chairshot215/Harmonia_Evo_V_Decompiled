.class Lcom/android/phone/ManualSelectNetwork$3;
.super Ljava/lang/Object;
.source "ManualSelectNetwork.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManualSelectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManualSelectNetwork;


# direct methods
.method constructor <init>(Lcom/android/phone/ManualSelectNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork$3;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$3;->this$0:Lcom/android/phone/ManualSelectNetwork;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    #setter for: Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/ManualSelectNetwork;->access$402(Lcom/android/phone/ManualSelectNetwork;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 254
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$3;->this$0:Lcom/android/phone/ManualSelectNetwork;

    #getter for: Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ManualSelectNetwork;->access$500(Lcom/android/phone/ManualSelectNetwork;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$3;->this$0:Lcom/android/phone/ManualSelectNetwork;

    #calls: Lcom/android/phone/ManualSelectNetwork;->loadNetworksList()V
    invoke-static {v0}, Lcom/android/phone/ManualSelectNetwork;->access$600(Lcom/android/phone/ManualSelectNetwork;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$3;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$3;->this$0:Lcom/android/phone/ManualSelectNetwork;

    #getter for: Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/ManualSelectNetwork;->access$500(Lcom/android/phone/ManualSelectNetwork;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/android/phone/ManualSelectNetwork;->setupNetworkList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/phone/ManualSelectNetwork;->access$700(Lcom/android/phone/ManualSelectNetwork;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$3;->this$0:Lcom/android/phone/ManualSelectNetwork;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/ManualSelectNetwork;->access$402(Lcom/android/phone/ManualSelectNetwork;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 266
    return-void
.end method
