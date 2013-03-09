.class Lcom/google/android/finsky/billing/UpdateAddressFragment$3;
.super Ljava/lang/Object;
.source "UpdateAddressFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/UpdateAddressFragment;->loadBillingCountries()V
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
    .line 155
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$3;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment$3;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    #calls: Lcom/google/android/finsky/billing/UpdateAddressFragment;->onBillingCountriesLoaded()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->access$400(Lcom/google/android/finsky/billing/UpdateAddressFragment;)V

    .line 159
    return-void
.end method
