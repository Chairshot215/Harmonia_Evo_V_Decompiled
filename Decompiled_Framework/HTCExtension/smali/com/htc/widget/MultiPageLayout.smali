.class public interface abstract Lcom/htc/widget/MultiPageLayout;
.super Ljava/lang/Object;
.source "MultiPageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;
    }
.end annotation


# virtual methods
.method public abstract addPage(Landroid/view/View;)V
.end method

.method public abstract addPage(Landroid/view/View;I)V
.end method

.method public abstract addPage(Landroid/view/View;IZ)V
.end method

.method public abstract animateBackPreviousPage()V
.end method

.method public abstract animateToNextPage()V
.end method

.method public abstract removePage(I)V
.end method

.method public abstract rotationChanged()V
.end method

.method public abstract setFakeScreenBottom(I)V
.end method

.method public abstract setFakeScreenEnabled(Z)V
.end method

.method public abstract setFakeScreenTop(I)V
.end method

.method public abstract setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V
.end method

.method public abstract setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V
.end method

.method public abstract setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
.end method
