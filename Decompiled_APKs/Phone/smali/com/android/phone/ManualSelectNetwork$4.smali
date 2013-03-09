.class Lcom/android/phone/ManualSelectNetwork$4;
.super Lcom/android/phone/INetworkQueryServiceCallback$Stub;
.source "ManualSelectNetwork.java"


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
    .line 273
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork$4;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, operatorInfoArray:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$4;->this$0:Lcom/android/phone/ManualSelectNetwork;

    #getter for: Lcom/android/phone/ManualSelectNetwork;->mHandlerProxy:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/ManualSelectNetwork;->access$800(Lcom/android/phone/ManualSelectNetwork;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void
.end method
