.class Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;
.super Lcom/htc/laputa/engine/aidl/IDataCallback$Stub;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDataCallbackImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/Service$Adapter;


# direct methods
.method private constructor <init>(Lcom/htc/laputa/engine/util/Service$Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-direct {p0}, Lcom/htc/laputa/engine/aidl/IDataCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/laputa/engine/util/Service$Adapter;Lcom/htc/laputa/engine/util/Service$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;-><init>(Lcom/htc/laputa/engine/util/Service$Adapter;)V

    return-void
.end method


# virtual methods
.method public sendData(IILandroid/os/Bundle;)I
    .locals 3
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    #getter for: Lcom/htc/laputa/engine/util/Service$Adapter;->mRetHandler:Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/Service$Adapter;->access$500(Lcom/htc/laputa/engine/util/Service$Adapter;)Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mRetHandler is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return v2

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    #getter for: Lcom/htc/laputa/engine/util/Service$Adapter;->mRetHandler:Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/Service$Adapter;->access$500(Lcom/htc/laputa/engine/util/Service$Adapter;)Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    #getter for: Lcom/htc/laputa/engine/util/Service$Adapter;->mRetHandler:Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;
    invoke-static {v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->access$500(Lcom/htc/laputa/engine/util/Service$Adapter;)Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

    move-result-object v1

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendData(): end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
