.class public Lcom/htc/cscore/util/CSSyncUtilities;
.super Ljava/lang/Object;
.source "CSSyncUtilities.java"


# static fields
.field public static final CS_ACCT:Ljava/lang/String; = "com.htc.cs"

.field public static final CS_ACTION_FULLMERGE_END:Ljava/lang/String; = "com.htc.cs.full_merge_end"

.field public static final CS_AUTHORITY:Ljava/lang/String; = "com.htc.connectedservice.csprovider"

.field public static final CS_FEATURE_NAME:Ljava/lang/String; = "htcconnectedservice"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "com.htc.cscore.KEY_CLASS_NAME"

.field public static final KEY_CS_EXPEDITED:Ljava/lang/String; = "com.htc.cscore.KEY_EXPEDITED"

.field public static final KEY_FEATURE_NAME:Ljava/lang/String; = "com.htc.cscore.KEY_FEATURE_NAME"

.field public static final KEY_FEATURE_TYPE:Ljava/lang/String; = "com.htc.cscore.KEY_FEATURE_TYPE"

.field public static final KEY_FULLMERGE_ID:Ljava/lang/String; = "com.htc.cs.KEY_FULLMERGE_ID"

.field public static final KEY_PKG_NAME:Ljava/lang/String; = "com.htc.cscore.KEY_PKG_NAME"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 73
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestCSSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "featureName"
    .parameter "featureType"
    .parameter "pkgName"
    .parameter "className"
    .parameter "ctx"
    .parameter "extras"

    .prologue
    .line 46
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "missing input parameters!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_1
    const/4 v1, 0x1

    .line 51
    .local v1, result:Z
    if-nez p5, :cond_2

    .line 52
    new-instance p5, Landroid/os/Bundle;

    .end local p5
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 55
    .restart local p5
    :cond_2
    const-string v2, "com.htc.cscore.KEY_EXPEDITED"

    const/4 v3, 0x1

    invoke-virtual {p5, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    const-string v2, "com.htc.cscore.KEY_FEATURE_NAME"

    invoke-virtual {p5, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "com.htc.cscore.KEY_FEATURE_TYPE"

    invoke-virtual {p5, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "com.htc.cscore.KEY_PKG_NAME"

    invoke-virtual {p5, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "com.htc.cscore.KEY_CLASS_NAME"

    invoke-virtual {p5, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p4}, Lcom/htc/cscore/util/CSSyncUtilities;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 63
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_3

    .line 64
    const-string v2, "com.htc.connectedservice.csprovider"

    invoke-static {v0, v2, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    :cond_3
    return v1
.end method
