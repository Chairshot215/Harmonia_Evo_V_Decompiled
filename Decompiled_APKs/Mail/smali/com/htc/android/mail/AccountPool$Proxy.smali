.class public Lcom/htc/android/mail/AccountPool$Proxy;
.super Ljava/lang/Object;
.source "AccountPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/AccountPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountPool"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsExchange(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 461
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "mail"

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 462
    .local v1, cp:Landroid/content/IContentProvider;
    const/4 v4, 0x0

    .line 464
    .local v4, exists:Z
    :try_start_0
    const-string v5, "CONTAINS_EXCHANGE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 465
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "exists"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 469
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 470
    return v4

    .line 466
    :catch_0
    move-exception v3

    .line 467
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "AccountPool"

    const-string v6, "catch exception"

    invoke-static {v5, v6, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 406
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v7, "mail"

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v4

    .line 407
    .local v4, cp:Landroid/content/IContentProvider;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v2, argBundle:Landroid/os/Bundle;
    const-string v7, "accountId"

    invoke-virtual {v2, v7, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 409
    const/4 v1, 0x0

    .line 411
    .local v1, account:Lcom/htc/android/mail/Account;
    :try_start_0
    const-string v7, "GET_ACCOUNT"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 412
    .local v3, bundle:Landroid/os/Bundle;
    const-class v7, Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 413
    const-string v7, "account"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/android/mail/Account;

    move-object v1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v3           #bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 418
    return-object v1

    .line 414
    :catch_0
    move-exception v6

    .line 415
    .local v6, e:Landroid/os/RemoteException;
    const-string v7, "AccountPool"

    const-string v8, "catch exception"

    invoke-static {v7, v8, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getAccountCount(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 445
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v6, "mail"

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 446
    .local v3, cp:Landroid/content/IContentProvider;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, argBundle:Landroid/os/Bundle;
    const-string v6, "type"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const/4 v2, 0x0

    .line 450
    .local v2, count:I
    :try_start_0
    const-string v6, "GET_ACCOUNT_COUNT"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 451
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "accountCount"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 455
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 456
    return v2

    .line 452
    :catch_0
    move-exception v5

    .line 453
    .local v5, e:Landroid/os/RemoteException;
    const-string v6, "AccountPool"

    const-string v7, "catch exception"

    invoke-static {v6, v7, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;
    .locals 10
    .parameter "context"

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 423
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v8, "mail"

    invoke-virtual {v4, v8}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 424
    .local v3, cp:Landroid/content/IContentProvider;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v1, argBundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 427
    .local v0, accounts:[Lcom/htc/android/mail/Account;
    :try_start_0
    const-string v8, "GET_ACCOUNTS"

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9, v1}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 428
    .local v2, bundle:Landroid/os/Bundle;
    const-class v8, Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 429
    const-string v8, "accounts"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 430
    .local v7, parcelables:[Landroid/os/Parcelable;
    if-eqz v7, :cond_0

    .line 431
    array-length v8, v7

    new-array v0, v8, [Lcom/htc/android/mail/Account;

    .line 432
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 433
    aget-object v8, v7, v6

    check-cast v8, Lcom/htc/android/mail/Account;

    aput-object v8, v0, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 436
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v6           #i:I
    .end local v7           #parcelables:[Landroid/os/Parcelable;
    :catch_0
    move-exception v5

    .line 437
    .local v5, e:Landroid/os/RemoteException;
    const-string v8, "AccountPool"

    const-string v9, "catch exception"

    invoke-static {v8, v9, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 439
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 440
    return-object v0
.end method

.method public static getExchangeLargestProtocol(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 475
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "mail"

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 476
    .local v1, cp:Landroid/content/IContentProvider;
    const/4 v4, 0x0

    .line 478
    .local v4, version:Ljava/lang/String;
    :try_start_0
    const-string v5, "GET_EXCHANGE_LARGEST_PROTOCOL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 479
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 483
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 484
    return-object v4

    .line 480
    :catch_0
    move-exception v3

    .line 481
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "AccountPool"

    const-string v6, "catch exception"

    invoke-static {v5, v6, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
