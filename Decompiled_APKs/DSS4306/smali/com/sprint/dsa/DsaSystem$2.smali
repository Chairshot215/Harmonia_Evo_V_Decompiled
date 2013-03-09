.class Lcom/sprint/dsa/DsaSystem$2;
.super Landroid/os/Handler;
.source "DsaSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaSystem;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaSystem;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 70
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    #getter for: Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v4}, Lcom/sprint/dsa/DsaSystem;->access$0(Lcom/sprint/dsa/DsaSystem;)Lcom/sprint/dsa/DsaClient;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 71
    .local v3, tm:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    iput v5, v4, Lcom/sprint/dsa/DsaSystem;->network:I

    .line 74
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    iget v4, v4, Lcom/sprint/dsa/DsaSystem;->network:I

    packed-switch v4, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    const-string v4, "deviceselfservice.sprint.com"

    #calls: Lcom/sprint/dsa/DsaSystem;->lookupHost(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/sprint/dsa/DsaSystem;->access$1(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, ip:I
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    #getter for: Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v4}, Lcom/sprint/dsa/DsaSystem;->access$0(Lcom/sprint/dsa/DsaSystem;)Lcom/sprint/dsa/DsaClient;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 96
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    iget v5, p1, Landroid/os/Message;->what:I

    iput v5, v4, Lcom/sprint/dsa/DsaSystem;->network:I

    .line 97
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    iget v4, v4, Lcom/sprint/dsa/DsaSystem;->network:I

    invoke-virtual {v0, v4, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .line 101
    .local v2, isRouted:Z
    const-string v5, "DSS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "CM call back: Network Type="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    iget v6, v6, Lcom/sprint/dsa/DsaSystem;->network:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Route:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 102
    if-eqz v2, :cond_0

    const-string v4, "Yes"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_0
    const-string v4, "No"

    goto :goto_1

    .line 109
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #ip:I
    .end local v2           #isRouted:Z
    :pswitch_2
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem$2;->this$0:Lcom/sprint/dsa/DsaSystem;

    iget v5, p1, Landroid/os/Message;->what:I

    iput v5, v4, Lcom/sprint/dsa/DsaSystem;->network:I

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
