.class public interface abstract Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ObserverCallbacks"
.end annotation


# virtual methods
.method public abstract onRevealChange(FZ)V
.end method

.method public abstract onSelection(Landroid/content/Intent;)V
.end method

.method public abstract onStartReveal()V
.end method

.method public abstract onStopReveal()V
.end method
