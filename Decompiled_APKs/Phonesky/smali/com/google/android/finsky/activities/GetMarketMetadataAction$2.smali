.class Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;
.super Ljava/lang/Object;
.source "GetMarketMetadataAction.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/GetMarketMetadataAction;->runBlocking(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/GetMarketMetadataAction;

.field final synthetic val$responseProto:[Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/GetMarketMetadataAction;[Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;->this$0:Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    iput-object p2, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;->val$responseProto:[Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    iput-object p3, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;->val$responseProto:[Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 108
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction$2;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method
