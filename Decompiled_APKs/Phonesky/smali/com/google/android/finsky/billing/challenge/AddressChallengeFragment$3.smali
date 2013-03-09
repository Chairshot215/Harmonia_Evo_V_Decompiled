.class Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$3;
.super Ljava/lang/Object;
.source "AddressChallengeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->loadBillingCountries()V
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
    .line 203
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$3;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$3;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->onBillingCountriesLoaded()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$400(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    .line 207
    return-void
.end method
