.class Lcom/google/android/finsky/billing/UpdateAddressFragment$2;
.super Ljava/lang/Object;
.source "UpdateAddressFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;


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
    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$2;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$2;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #getter for: Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$300(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$2;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #getter for: Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$300(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;->onInitialized()V

    .line 131
    :cond_0
    return-void
.end method

.method public onInitializing()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$2;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #getter for: Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$300(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$2;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #getter for: Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$300(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;->onInitializing()V

    .line 124
    :cond_0
    return-void
.end method
