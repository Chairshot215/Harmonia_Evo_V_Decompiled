.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$5;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setupWidgets(Landroid/os/Bundle;)V
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
    .line 366
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$5;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 369
    const v2, 0x7f040014

    const v3, 0x7f07019f

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstanceWithLayout(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 371
    .local v1, sad:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, argumentsBundle:Landroid/os/Bundle;
    const-string v3, "url_key"

    sget-object v2, Lcom/google/android/finsky/config/G;->checkoutPrivacyPolicyUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setViewConfiguration(Landroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 375
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$5;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "privacy_policy"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 376
    return-void
.end method
