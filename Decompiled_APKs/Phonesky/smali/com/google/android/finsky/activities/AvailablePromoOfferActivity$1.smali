.class Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;
.super Ljava/lang/Object;
.source "AvailablePromoOfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    const-string v1, "promoOfferStartRedemption"

    #calls: Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->logAnalytics(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->access$000(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    #getter for: Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    invoke-static {v0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->access$100(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->hasAddCreditCardOffer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cardholder_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "cardholder_name"

    iget-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cardholder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "on_initial_setup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const-string v1, "on_initial_setup"

    iget-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "on_initial_setup"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    #getter for: Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAccountName:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->access$200(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "ui_mode"

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->PROMO_OFFER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 192
    :cond_2
    return-void
.end method
