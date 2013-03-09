.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
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
        "Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authToken:Ljava/lang/String;

.field final synthetic val$authenticator:Lcom/android/volley/toolbox/Authenticator;

.field final synthetic val$invalidCheckoutToken:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$result:Landroid/os/Bundle;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$authenticator:Lcom/android/volley/toolbox/Authenticator;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$authToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$invalidCheckoutToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$account:Landroid/accounts/Account;

    iput-object p7, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)V
    .locals 6
    .parameter "checkPromoOfferResponse"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const-string v2, "Checkout token invalid."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$authenticator:Lcom/android/volley/toolbox/Authenticator;

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$authToken:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/volley/toolbox/Authenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$invalidCheckoutToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 209
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getAvailableOfferCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "result_code"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getAvailableOffer(I)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "available_offer_redemption_intent"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 197
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasRedeemedOffer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "result_code"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, redeemedOfferDescriptionHtml:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "redeemed_offer_message_html"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v1           #redeemedOfferDescriptionHtml:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "result_code"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->onResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)V

    return-void
.end method
