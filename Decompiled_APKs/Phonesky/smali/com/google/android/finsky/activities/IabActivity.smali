.class public Lcom/google/android/finsky/activities/IabActivity;
.super Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;
.source "IabActivity.java"


# instance fields
.field private mBillingApiVersion:I

.field private mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mPackageName:Ljava/lang/String;

.field private mPurchaseData:Ljava/lang/String;

.field private mRequestId:J

.field private mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;-><init>()V

    return-void
.end method

.method public static getIntent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "billingApiVersion"
    .parameter "accountName"
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "signatureHash"
    .parameter "docId"
    .parameter "developerPayload"

    .prologue
    const/4 v2, 0x1

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "document_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "package_version_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "package_signature_hash"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "billing_api_version"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "finsky.is_direct_link_purchase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    if-eqz p6, :cond_0

    .line 64
    const-string v1, "developer_payload"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :cond_0
    const-string v1, "finsky.is_direct_link_purchase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    return-object v0
.end method


# virtual methods
.method protected getPurchaseFragment()Lcom/google/android/finsky/activities/PurchaseFragment;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mDocId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/PurchaseFragment;->newIabInstance(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public isIabV3Purchase()Z
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mBillingApiVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "document_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mDocId:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mPackageName:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "request_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mRequestId:J

    .line 79
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "billing_api_version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mBillingApiVersion:I

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_version_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, packageVersion:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_signature_hash"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, packageSignatureHash:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "developer_payload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, developerPayload:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/billing/IabParameters;

    iget v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mBillingApiVersion:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mPackageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/IabParameters;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mIsDirectLinkPurchase:Z

    .line 86
    return-void
.end method

.method public onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .locals 8
    .parameter "error"

    .prologue
    const v7, 0x7f070068

    const v4, 0x7f070067

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 107
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    if-eqz v2, :cond_0

    .line 163
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-boolean v6, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, dialogTitle:Ljava/lang/String;
    const/4 v0, 0x0

    .line 113
    .local v0, dialogMessage:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_2

    .line 114
    iget v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    sparse-switch v2, :sswitch_data_0

    .line 141
    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v2, "Unexpected PurchasePermissionResponse: %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_1
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_1

    .line 155
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 157
    :cond_1
    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {p0, v1, v0, v6}, Lcom/google/android/finsky/activities/IabActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 116
    :sswitch_0
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 117
    const v2, 0x7f07006b

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_1

    .line 121
    :sswitch_1
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 122
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    goto :goto_1

    .line 126
    :sswitch_2
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 127
    const v2, 0x7f070069

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    const v2, 0x7f07006a

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    goto :goto_1

    .line 132
    :sswitch_3
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 133
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_1

    .line 137
    :sswitch_4
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 138
    const-string v2, "Unexpected INSTALL_OK response."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_3

    .line 147
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_4
    const-string v2, "No error message to show to user."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->goBack()V

    goto/16 :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->onStop()V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->isIabV3Purchase()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v1, v1, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mRequestId:J

    iget-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V

    .line 102
    :cond_1
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extraParams"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->isIabV3Purchase()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 190
    const-string v0, "inapp_signed_purchase_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseData:Ljava/lang/String;

    .line 191
    const-string v0, "inapp_purchase_data_signature"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mSignature:Ljava/lang/String;

    .line 193
    :cond_0
    const v0, 0x7f070065

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->onSuccess(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method protected setResultData(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->isIabV3Purchase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mSignature:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "INAPP_PURCHASE_DATA"

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v0, "INAPP_DATA_SIGNATURE"

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :cond_0
    const-string v0, "RESPONSE_CODE"

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v0, "purchaseResponse"

    const-string v1, "responseCode: %d purchase data: %s  signature: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseData:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mSignature:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1
    return-void
.end method
