.class Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;
.super Ljava/lang/Object;
.source "AddressChallengeFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCountryChanged(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V
    .locals 3
    .parameter "country"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;
    invoke-static {v1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$100(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/layout/BillingAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    invoke-static {v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$000(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V

    .line 146
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    invoke-static {v1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, currentState:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->saveMyState(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$300(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;Landroid/os/Bundle;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    invoke-static {v1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onCountryChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    .end local v0           #currentState:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
