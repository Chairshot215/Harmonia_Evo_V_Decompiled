.class public Lcom/htc/wrap/android/content/HtcWrapContentResolver;
.super Ljava/lang/Object;
.source "HtcWrapContentResolver.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static registerSetSyncAfterOnAccountUpdate(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 13
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->registerSetSyncAfterOnAccountUpdate(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 14
    return-void
.end method
