.class Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;
.super Lcom/android/vending/billing/IInAppBillingService$Stub;
.source "InAppBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    invoke-direct {p0}, Lcom/android/vending/billing/IInAppBillingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "apiVersion"
    .parameter "packageName"
    .parameter "purchaseToken"

    .prologue
    .line 341
    const-string v0, "consumePurchase"

    .line 342
    .local v0, logTagConsumePurchase:Ljava/lang/String;
    const-string v2, "consumePurchase"

    const-string v3, "apiVersion: %d packageName: %s purchaseToken: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "consumePurchase"

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V

    .line 346
    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v2

    .line 360
    :goto_0
    return v2

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v2, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v1

    .line 349
    .local v1, response:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v1, v2, :cond_1

    .line 350
    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V

    .line 351
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v1

    .line 354
    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v1, v2, :cond_2

    .line 355
    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V

    .line 356
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v2, p2, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$700(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v1

    .line 359
    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V

    .line 360
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .parameter "apiVersion"
    .parameter "packageName"
    .parameter "sku"
    .parameter "type"
    .parameter "developerPayload"

    .prologue
    .line 243
    const-string v6, "getBuyIntent"

    .line 244
    .local v6, logTagGetBuyIntent:Ljava/lang/String;
    const-string v0, "apiVersion: %d packageName: %s type: %s developerPayload: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {v6, v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v8, response:Landroid/os/Bundle;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 252
    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 287
    :goto_0
    return-object v8

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v9

    .line 257
    .local v9, responseCode:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v9, v0, :cond_2

    .line 258
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 259
    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v9

    .line 263
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v9, v0, :cond_3

    .line 264
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 265
    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v0, p1, p4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v9

    .line 269
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v9, v0, :cond_4

    .line 270
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 271
    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->isDocumentInLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p4, p3, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$400(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ITEM_ALREADY_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 278
    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->makePurchaseIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$500(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 284
    .local v7, purchaseIntent:Landroid/app/PendingIntent;
    const-string v0, "BUY_INTENT"

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 285
    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 286
    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .parameter "apiVersion"
    .parameter "packageName"
    .parameter "type"

    .prologue
    .line 298
    const-string v0, "getPurchases"

    .line 299
    .local v0, logTagGetPurchases:Ljava/lang/String;
    const-string v3, "apiVersion: %d packageName: %s type: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v1, response:Landroid/os/Bundle;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    :cond_0
    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 331
    :goto_0
    return-object v1

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v3, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v2

    .line 310
    .local v2, responseCode:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v2, v3, :cond_2

    .line 311
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v3, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v2

    .line 316
    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v2, v3, :cond_3

    .line 317
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 318
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v3, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v2

    .line 322
    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v2, v3, :cond_4

    .line 323
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 324
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->populateInAppPurchasesForPackage(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, p2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$600(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 330
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .parameter "apiVersion"
    .parameter "packageName"
    .parameter "type"
    .parameter "skusBundle"

    .prologue
    .line 202
    const-string v0, "getSkuDetails"

    .line 203
    .local v0, logTagGetSkuDetails:Ljava/lang/String;
    const-string v3, "apiVersion: %d packageName: %s type: %s skusBundle: %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v1, response:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v3, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v2

    .line 208
    .local v2, responseCode:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v2, v3, :cond_0

    .line 209
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 210
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 233
    :goto_0
    return-object v1

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v3, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v2

    .line 214
    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v2, v3, :cond_1

    .line 215
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v3, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v2

    .line 220
    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v2, v3, :cond_2

    .line 221
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 222
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 226
    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 228
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, p2, p4, p3, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$300(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 232
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "apiVersion"
    .parameter "packageName"
    .parameter "type"

    .prologue
    .line 176
    const-string v0, "isBillingSupported"

    .line 177
    .local v0, logTagIsBillingSupported:Ljava/lang/String;
    const-string v2, "apiVersion: %d packageName: %s type: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v2, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v1

    .line 180
    .local v1, response:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v1, v2, :cond_0

    .line 181
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V

    .line 182
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v2

    .line 191
    :goto_0
    return v2

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v1

    .line 185
    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v1, v2, :cond_1

    .line 186
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V

    .line 187
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    invoke-static {v2, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V

    .line 191
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0
.end method
