.class Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;
.super Ljava/lang/Object;
.source "CarrierOutAssociation.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V
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
        "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatch(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    .line 163
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;->onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method
