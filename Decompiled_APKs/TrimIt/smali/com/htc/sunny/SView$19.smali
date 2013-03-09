.class Lcom/htc/sunny/SView$19;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->addView(Lcom/htc/sunny/SView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$bTopRender:Z

.field final synthetic val$view:Lcom/htc/sunny/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    iput-object p2, p0, Lcom/htc/sunny/SView$19;->val$view:Lcom/htc/sunny/SView;

    iput-boolean p3, p0, Lcom/htc/sunny/SView$19;->val$bTopRender:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 1112
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView$19;->val$view:Lcom/htc/sunny/SView;

    if-nez v0, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$300(Lcom/htc/sunny/SView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny/SView$19;->val$view:Lcom/htc/sunny/SView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-boolean v0, p0, Lcom/htc/sunny/SView$19;->val$bTopRender:Z

    if-ne v1, v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->val$view:Lcom/htc/sunny/SView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SView;->setRenderOrder(I)V

    .line 1120
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->val$view:Lcom/htc/sunny/SView;

    iget-object v2, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/sunny/SView;->access$400(Lcom/htc/sunny/SView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/htc/sunny/SView;->access$400(Lcom/htc/sunny/SView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/htc/sunny/SView;->access$400(Lcom/htc/sunny/SView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/htc/sunny/SView;->access$400(Lcom/htc/sunny/SView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SView;->onLayout(ZIIII)V

    .line 1121
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->val$view:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SView;->onAttachedToWindow(Lcom/htc/sunny/SView;)V

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1126
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$300(Lcom/htc/sunny/SView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 1127
    .local v8, nSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$300(Lcom/htc/sunny/SView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny/SView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    .local v6, child:Lcom/htc/sunny/SView;
    if-nez v6, :cond_3

    .line 1127
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1118
    .end local v6           #child:Lcom/htc/sunny/SView;
    .end local v7           #i:I
    .end local v8           #nSize:I
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->val$view:Lcom/htc/sunny/SView;

    const/16 v2, -0x64

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SView;->setRenderOrder(I)V

    goto :goto_1

    .line 1130
    .restart local v6       #child:Lcom/htc/sunny/SView;
    .restart local v7       #i:I
    .restart local v8       #nSize:I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v6}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v1

    invoke-virtual {v6}, Lcom/htc/sunny/SView;->getRenderOrder()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1133
    .end local v6           #child:Lcom/htc/sunny/SView;
    .end local v7           #i:I
    .end local v8           #nSize:I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    iget-object v1, v1, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .restart local v7       #i:I
    .restart local v8       #nSize:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SView$19;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method
