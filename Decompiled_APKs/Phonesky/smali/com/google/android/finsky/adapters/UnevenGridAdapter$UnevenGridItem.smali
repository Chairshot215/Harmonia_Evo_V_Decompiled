.class public interface abstract Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;
.super Ljava/lang/Object;
.source "UnevenGridAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CellBasedLayout$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/UnevenGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnevenGridItem"
.end annotation


# virtual methods
.method public abstract bind(Landroid/view/ViewGroup;Z)V
.end method

.method public abstract getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
.end method

.method public abstract getLayoutId()I
.end method
