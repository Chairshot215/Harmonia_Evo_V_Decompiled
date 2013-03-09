.class Lcom/android/phone/PhoneApp$1;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 615
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "PhoneApp"

    const-string v1, "connection created, binding local service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    #setter for: Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$502(Lcom/android/phone/PhoneApp;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 618
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 622
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "PhoneApp"

    const-string v1, "connection disconnected, cleaning local binding."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$502(Lcom/android/phone/PhoneApp;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 625
    return-void
.end method
