.class Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;
.super Ljava/lang/Object;
.source "CheckPromoOffersAction.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/CheckPromoOffersAction;->onAuthTokenReceived(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

.field final synthetic val$authToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/CheckPromoOffersAction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->val$authToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)V
    .locals 4
    .parameter "checkPromoOfferResponse"

    .prologue
    const/4 v3, 0x0

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    const-string v1, "Checkout token invalid."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    #getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sNumAuthRetries:I
    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$000(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->val$authToken:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->checkPromoOffers(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$100(Lcom/google/android/finsky/billing/CheckPromoOffersAction;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$006(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)I

    .line 98
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v1, "auth retries exceeded, skipping promo offer check"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1
    :goto_1
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    #getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$200(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 93
    if-eqz v0, :cond_2

    .line 94
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    #getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$300(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    :cond_2
    invoke-static {v3}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$402(Z)Z

    .line 97
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    #getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$500(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getAvailableOfferCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    #getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$200(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getAvailableOffer(I)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasRedeemedOffer()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->onResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)V

    return-void
.end method
