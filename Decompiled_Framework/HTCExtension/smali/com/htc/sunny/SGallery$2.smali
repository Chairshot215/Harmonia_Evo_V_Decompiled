.class Lcom/htc/sunny/SGallery$2;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setSelectorRenderOrder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$nOrder:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SGallery$2;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$2;->val$nOrder:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny/SGallery$2;->this$0:Lcom/htc/sunny/SGallery;

    iget-object v1, v1, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery$2;->this$0:Lcom/htc/sunny/SGallery;

    iget v2, p0, Lcom/htc/sunny/SGallery$2;->val$nOrder:I

    iput v2, v1, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny/SGallery$2;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, v1, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SGallery$2;->this$0:Lcom/htc/sunny/SGallery;

    iget-object v1, v1, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SGallery$2;->this$0:Lcom/htc/sunny/SGallery;

    iget-object v1, v1, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny/SGallery$2;->this$0:Lcom/htc/sunny/SGallery;

    iget v2, v2, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundRenderOrder(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
