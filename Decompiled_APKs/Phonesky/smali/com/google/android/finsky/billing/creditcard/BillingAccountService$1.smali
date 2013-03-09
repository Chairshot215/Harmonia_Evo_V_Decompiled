.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;
.super Lcom/android/vending/billing/IBillingAccountService$Stub;
.source "BillingAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-direct {p0}, Lcom/android/vending/billing/IBillingAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffers(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .parameter "accountName"

    .prologue
    .line 143
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 144
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-static {p1, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 146
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 147
    const-string v4, "Received invalid account name: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v3, result:Landroid/os/Bundle;
    const-string v4, "result_code"

    const/4 v5, -0x5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    .end local v3           #result:Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 154
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
    invoke-static {v4, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$100(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/accounts/Account;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 158
    .local v1, authFailureError:Lcom/android/volley/AuthFailureError;
    :try_start_1
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
    invoke-static {v4, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$100(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/accounts/Account;)Landroid/os/Bundle;
    :try_end_1
    .catch Lcom/android/volley/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 159
    :catch_1
    move-exception v2

    .line 160
    .local v2, authFailureError1:Lcom/android/volley/AuthFailureError;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 161
    .restart local v3       #result:Landroid/os/Bundle;
    const-string v4, "result_code"

    const/4 v5, -0x3

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public hasValidCreditCard(Ljava/lang/String;)I
    .locals 13
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 102
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 104
    .local v5, resultCode:[I
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 105
    .local v6, semaphore:Ljava/util/concurrent/Semaphore;
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-static {p1, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    .line 107
    .local v7, account:Landroid/accounts/Account;
    if-nez v7, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid account name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    const/4 v0, -0x5

    .line 134
    :goto_0
    return v0

    .line 111
    :cond_0
    new-instance v3, Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v1, v7, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 113
    .local v3, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    .line 115
    .local v2, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, checkoutToken:Ljava/lang/String;
    new-instance v8, Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    invoke-direct {v8}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;-><init>()V

    .line 118
    .local v8, action:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    iget-object v10, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iget-object v11, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;

    iget-object v12, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-direct {v1, v12, v2, v5, v6}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v10, v11, v0, v1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 122
    const-wide/16 v0, 0x2d

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v10}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    const/4 v1, -0x4

    aput v1, v5, v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    aget v0, v5, v0

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$000(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 126
    const/4 v0, 0x0

    aget v0, v5, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 127
    .end local v4           #checkoutToken:Ljava/lang/String;
    .end local v8           #action:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    :catch_0
    move-exception v9

    .line 128
    .local v9, e:Ljava/lang/InterruptedException;
    const-string v0, "Timed out while waiting for response."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v0, -0x4

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$000(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 130
    const/4 v0, -0x4

    goto :goto_0

    .line 131
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v9

    .line 132
    .local v9, e:Lcom/android/volley/AuthFailureError;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthFailureError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/volley/AuthFailureError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const/4 v0, -0x3

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$000(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 134
    const/4 v0, -0x3

    goto/16 :goto_0
.end method
