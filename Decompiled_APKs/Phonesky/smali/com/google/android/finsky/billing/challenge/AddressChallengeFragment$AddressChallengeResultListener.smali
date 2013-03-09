.class public interface abstract Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
.super Ljava/lang/Object;
.source "AddressChallengeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddressChallengeResultListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;
    }
.end annotation


# virtual methods
.method public abstract onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;[Z)V
.end method

.method public abstract onCountryChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onInitialized()V
.end method

.method public abstract onInitializing()V
.end method
