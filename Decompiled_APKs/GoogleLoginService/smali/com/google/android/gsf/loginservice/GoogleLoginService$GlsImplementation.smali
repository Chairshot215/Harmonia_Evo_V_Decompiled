.class Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;
.super Lcom/google/android/gsf/IGoogleLoginService$Stub;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GoogleLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlsImplementation"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-direct {p0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;-><init>()V

    .line 526
    iput-object p2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    .line 527
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    .line 528
    return-void
.end method


# virtual methods
.method public blockingGetCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .locals 12
    .parameter "username"
    .parameter "service"
    .parameter "notifyAuthFailure"

    .prologue
    .line 617
    if-nez p2, :cond_0

    .line 618
    const-string p2, "SID"

    .line 620
    :cond_0
    new-instance v11, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    invoke-direct {v11}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>()V

    .line 625
    .local v11, result:Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    if-nez p1, :cond_1

    .line 627
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "No user"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :cond_1
    new-instance v2, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v2, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v2, account:Landroid/accounts/Account;
    const/4 v8, 0x0

    .line 633
    .local v8, bundle:Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 644
    :goto_0
    invoke-virtual {v11, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setAccount(Ljava/lang/String;)V

    .line 646
    if-eqz v8, :cond_3

    .line 647
    const-string v1, "authtoken"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 648
    .local v7, authToken:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 649
    invoke-virtual {v11, v7}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setCredentialsString(Ljava/lang/String;)V

    .line 660
    .end local v7           #authToken:Ljava/lang/String;
    :goto_1
    return-object v11

    .line 635
    :catch_0
    move-exception v9

    .line 637
    .local v9, e:Landroid/accounts/OperationCanceledException;
    const-string v1, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in GLS.getAuthToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    .end local v9           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v9

    .line 639
    .local v9, e:Landroid/accounts/AuthenticatorException;
    const-string v1, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in GLS.getAuthToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    .end local v9           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v9

    .line 641
    .local v9, e:Ljava/io/IOException;
    const-string v1, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in GLS.getAuthToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #authToken:Ljava/lang/String;
    :cond_2
    const-string v1, "intent"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 654
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 655
    invoke-virtual {v11, v10}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setCredentialsIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 659
    .end local v7           #authToken:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_3
    const-string v1, "GoogleLoginService"

    const-string v3, "Not bundle, token or intent returned"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteAllAccounts()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 763
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v6, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 764
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkPasswordPermission()V
    invoke-static {v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$500(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 766
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 768
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 769
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v5, v0, v7, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 768
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 771
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method public deleteOneAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "username"

    .prologue
    const/4 v3, 0x0

    .line 751
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v2, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkPasswordPermission()V
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$500(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 754
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 756
    return-void
.end method

.method public getAccount(Z)Ljava/lang/String;
    .locals 2
    .parameter "requireGoogle"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$400(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 535
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v4, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 539
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v3, v1

    new-array v0, v3, [Ljava/lang/String;

    .line 540
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 541
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-object v0
.end method

.method public getAndroidId()J
    .locals 4

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$400(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authtokenToInvalidate"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 673
    if-nez p1, :cond_0

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "service"

    .prologue
    .line 577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "service"
    .parameter "authtoken"

    .prologue
    .line 777
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveNewAccount(Lcom/google/android/gsf/LoginData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "username"
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 704
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryNewAccount(Lcom/google/android/gsf/LoginData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 711
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updatePassword(Lcom/google/android/gsf/LoginData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 731
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyStoredPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "username"
    .parameter "password"

    .prologue
    .line 742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForAndroidId()I
    .locals 5

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->getAndroidId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 695
    .local v0, result:I
    :goto_0
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in waitForAndroidId result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return v0

    .line 694
    .end local v0           #result:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
