.class public interface abstract Lcom/google/android/common/SwipeySwitcher$Adapter;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Adapter"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getIntent(I)Landroid/content/Intent;
.end method

.method public abstract getView(ILandroid/view/ViewGroup;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;
.end method
