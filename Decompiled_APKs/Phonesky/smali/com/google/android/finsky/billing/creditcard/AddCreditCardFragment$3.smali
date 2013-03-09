.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$3;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->loadBillingCountries()V
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
    .line 263
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$3;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$3;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    #calls: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->onBillingCountriesLoaded()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->access$400(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V

    .line 267
    return-void
.end method
