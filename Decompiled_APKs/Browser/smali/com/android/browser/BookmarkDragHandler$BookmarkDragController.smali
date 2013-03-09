.class public interface abstract Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;
.super Ljava/lang/Object;
.source "BookmarkDragHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkDragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookmarkDragController"
.end annotation


# virtual methods
.method public abstract actionItemClicked(Landroid/view/View;Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;)V
.end method

.method public abstract getActionModeView(Landroid/view/ActionMode;Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;)Landroid/view/ViewGroup;
.end method

.method public abstract startDrag(Landroid/database/Cursor;)Z
.end method
