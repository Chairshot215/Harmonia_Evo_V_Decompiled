.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCountryChanged(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V
    .locals 2
    .parameter "country"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->access$200(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)Lcom/google/android/finsky/layout/BillingAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    #calls: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->access$100(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V

    .line 183
    return-void
.end method
