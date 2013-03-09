.class Lcom/google/android/vending/remoting/api/VendingApi$1;
.super Ljava/lang/Object;
.source "VendingApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/remoting/api/VendingApi;->checkForPendingNotifications(Lcom/android/volley/Response$ErrorListener;)V
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
.field final synthetic this$0:Lcom/google/android/vending/remoting/api/VendingApi;


# direct methods
.method constructor <init>(Lcom/google/android/vending/remoting/api/VendingApi;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi$1;->this$0:Lcom/google/android/vending/remoting/api/VendingApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 167
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingApi$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method
