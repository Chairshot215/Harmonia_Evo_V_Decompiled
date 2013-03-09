.class public interface abstract Lcom/google/android/common/SwipeySwitcher$IViewHolder;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IViewHolder"
.end annotation


# virtual methods
.method public abstract clearScrollingCache()V
.end method

.method public abstract createScrollingCache()V
.end method

.method public abstract focus()V
.end method

.method public abstract get()Landroid/view/View;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract run(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)Z
.end method

.method public abstract stop()V
.end method

.method public abstract unfocus()V
.end method
