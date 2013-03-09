.class final Lcom/google/android/finsky/billing/BillingEventRecorder$1;
.super Ljava/lang/Object;
.source "BillingEventRecorder.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/BillingEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 30
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/BillingEventRecorder$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)V

    return-void
.end method
