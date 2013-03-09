.class Lcom/google/android/finsky/billing/UpdateAddressFragment$1;
.super Ljava/lang/Object;
.source "UpdateAddressFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/UpdateAddressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/UpdateAddressFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$1;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCountryChanged(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V
    .locals 3
    .parameter "country"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$1;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #getter for: Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;
    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$200(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/layout/BillingAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$1;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #calls: Lcom/google/android/finsky/billing/UpdateAddressFragment;->getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$000(Lcom/google/android/finsky/billing/UpdateAddressFragment;Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$1;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #getter for: Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-static {v2}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$100(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)V

    .line 115
    return-void
.end method
