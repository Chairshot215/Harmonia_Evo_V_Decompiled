.class public abstract Lcom/htc/sunny2/widget/presentation/SAdapterView;
.super Lcom/htc/sunny2/view/ScissorViewGroup;
.source "SAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;
    }
.end annotation


# instance fields
.field protected mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/ScissorViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    return-void
.end method


# virtual methods
.method protected abstract notifyDataSetChanged()V
.end method

.method protected abstract notifyUpdateItem(I)V
.end method
