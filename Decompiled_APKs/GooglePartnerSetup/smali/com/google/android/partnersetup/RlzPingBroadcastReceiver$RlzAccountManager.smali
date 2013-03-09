.class Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManager;
.super Ljava/lang/Object;
.source "RlzPingBroadcastReceiver.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RlzAccountManager"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManager;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public getAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 60
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method
