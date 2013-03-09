.class Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;
.super Ljava/lang/Object;
.source "AddressChallengeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setupWidgets(Landroid/os/Bundle;)V
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
    .line 271
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    invoke-static {v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$500(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 276
    .local v1, inputValidationError:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;
    invoke-static {v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$100(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/layout/BillingAddress;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/BillingAddress;->displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    goto :goto_0

    .line 278
    .end local v1           #inputValidationError:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    :cond_0
    return-void
.end method
