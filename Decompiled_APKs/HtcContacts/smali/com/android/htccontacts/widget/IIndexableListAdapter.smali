.class public interface abstract Lcom/android/htccontacts/widget/IIndexableListAdapter;
.super Ljava/lang/Object;
.source "IIndexableListAdapter.java"

# interfaces
.implements Lcom/android/htccontacts/widget/IIndexable;
.implements Landroid/widget/ListAdapter;


# virtual methods
.method public abstract getIndexAt(I)Ljava/lang/Object;
.end method

.method public abstract getIndexViewAt(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getIndexViewTypeAt(I)I
.end method

.method public abstract getIndexViewTypeCount()I
.end method

.method public abstract isIndexEnabled(I)Z
.end method
