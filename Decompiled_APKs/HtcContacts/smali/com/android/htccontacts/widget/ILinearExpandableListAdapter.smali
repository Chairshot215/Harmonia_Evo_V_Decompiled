.class public interface abstract Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;
.super Ljava/lang/Object;
.source "ILinearExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# static fields
.field public static final SHOW_ALL:I = 0x7fffffff


# virtual methods
.method public abstract getMaxShowingEntries()I
.end method

.method public abstract getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isToggleViewAvailable()Z
.end method

.method public abstract onToggleViewClick(Landroid/view/View;)V
.end method

.method public abstract onToggleViewLongClick(Landroid/view/View;)Z
.end method

.method public abstract onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method
