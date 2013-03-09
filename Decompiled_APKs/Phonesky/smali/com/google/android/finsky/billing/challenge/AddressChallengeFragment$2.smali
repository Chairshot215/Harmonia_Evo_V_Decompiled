.class Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;
.super Ljava/lang/Object;
.source "AddressChallengeFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;


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
    .line 154
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onInitialized()V

    .line 167
    :cond_0
    return-void
.end method

.method public onInitializing()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onInitializing()V

    .line 160
    :cond_0
    return-void
.end method
