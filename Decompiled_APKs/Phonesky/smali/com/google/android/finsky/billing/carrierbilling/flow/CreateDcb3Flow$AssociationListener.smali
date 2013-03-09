.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;
.super Ljava/lang/Object;
.source "CreateDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssociationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 9
    .parameter "response"

    .prologue
    const/4 v8, 0x1

    .line 665
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideVerifyAssociationDialog()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$100(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    .line 666
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 667
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasBillingAddress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v4

    #setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$202(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierTos()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 671
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v0

    .line 672
    .local v0, dcbTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    sget-object v3, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 673
    sget-object v3, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 675
    .end local v0           #dcbTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 699
    :goto_0
    return-void

    .line 678
    :cond_2
    const-string v2, "UNKNOWN"

    .line 679
    .local v2, logError:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 680
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f070076

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, error:Ljava/lang/String;
    const-string v2, "ASSOCIATION_TIMEOUT"

    .line 697
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-virtual {v3, v1, v2, v1, v8}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 682
    .end local v1           #error:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 683
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierErrorMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 685
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 693
    .restart local v1       #error:Ljava/lang/String;
    :goto_2
    const-string v2, "INVALID_USER"

    goto :goto_1

    .line 686
    .end local v1           #error:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCustomerSupport()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 687
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f070078

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_2

    .line 689
    .end local v1           #error:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f070077

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    invoke-static {v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCustomerSupport()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_2

    .line 695
    .end local v1           #error:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f07005f

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 662
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method
