.class Lcom/google/android/finsky/billing/CheckoutPurchase$1;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;->pollStatus(Ljava/lang/String;)V
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
        "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/CheckoutPurchase;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/CheckoutPurchase;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$1;->this$0:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .locals 1
    .parameter "purchaseStatusResponse"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$1;->this$0:Lcom/google/android/finsky/billing/CheckoutPurchase;

    #calls: Lcom/google/android/finsky/billing/CheckoutPurchase;->onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->access$000(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    .line 650
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 646
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    return-void
.end method
