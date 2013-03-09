.class final Lcom/google/android/finsky/billing/BillingLocator$1;
.super Landroid/telephony/PhoneStateListener;
.source "BillingLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/BillingLocator;->setupServiceStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingLocator;->access$002(Z)Z

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingLocator;->access$002(Z)Z

    goto :goto_0
.end method
