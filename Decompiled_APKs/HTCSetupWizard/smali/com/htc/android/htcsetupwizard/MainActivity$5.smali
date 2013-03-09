.class Lcom/htc/android/htcsetupwizard/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;->startAutoSetDevName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final EmailBlacklist:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MobileEmail@MyEmail.telstra.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$5;->EmailBlacklist:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 13
    .parameter "accounts"

    .prologue
    .line 1681
    const-string v10, "OOBE_MainActivity"

    const-string v11, "onAccountsUpdated()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v0, v1, v7

    .line 1685
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1686
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity$5;->EmailBlacklist:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v4, v2, v6

    .line 1687
    .local v4, email:Ljava/lang/String;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1683
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #email:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    :cond_0
    add-int/lit8 v6, v7, 0x1

    .restart local v6       #i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_0

    .line 1686
    .end local v7           #i$:I
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #email:Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v9       #len$:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1693
    .end local v4           #email:Ljava/lang/String;
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1694
    .local v5, endIndex:I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1695
    .local v3, devName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1697
    iget-object v10, p0, Lcom/htc/android/htcsetupwizard/MainActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->stopAutoSetDevName()V
    invoke-static {v10}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$800(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    .line 1698
    iget-object v10, p0, Lcom/htc/android/htcsetupwizard/MainActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-virtual {v10}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "bluetooth_name"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1699
    const-string v10, "OOBE_MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Set device name: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #devName:Ljava/lang/String;
    .end local v5           #endIndex:I
    .end local v6           #i$:I
    .end local v9           #len$:I
    :cond_3
    return-void
.end method
