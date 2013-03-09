.class Lcom/htc/sunny/SPresentation$17;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->updateAllContainersLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 1853
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$17;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1856
    iget-object v4, p0, Lcom/htc/sunny/SPresentation$17;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v4, v4, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny/SPresentation$17;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v4, v4, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny/SPresentation$17;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v4, v4, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v4, :cond_1

    .line 1865
    :cond_0
    return-void

    .line 1858
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SPresentation$17;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v0, v4, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1859
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 1858
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1861
    :cond_2
    iget-object v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, p0, Lcom/htc/sunny/SPresentation$17;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v5, v5, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v6, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny/SPresentationContainerLayout;)V

    .line 1863
    iget-object v5, p0, Lcom/htc/sunny/SPresentation$17;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v6, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v1, v6, v4}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method
