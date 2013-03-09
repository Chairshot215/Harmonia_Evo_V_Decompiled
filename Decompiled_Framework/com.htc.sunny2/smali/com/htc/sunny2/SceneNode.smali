.class public Lcom/htc/sunny2/SceneNode;
.super Ljava/lang/Object;
.source "SceneNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/SceneNode$1;,
        Lcom/htc/sunny2/SceneNode$NODE_MODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneNode"

.field static sSceneNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunny2/SceneNode;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mChilds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/SceneNode;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateStack:Ljava/lang/String;

.field protected mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

.field protected mNodeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    sget-object v0, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCENENODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/SceneNode;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;)V

    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    sget-object v1, Lcom/htc/sunny2/SceneNode$1;->$SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I

    invoke-virtual {p1}, Lcom/htc/sunny2/SceneNode$NODE_MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NONE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    iput-object v1, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/SceneNode;->setRenderOrderMode(I)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    sget-object v2, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->CreateSceneNode(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SceneNode init with null node id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iput-object p1, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->CreateScissor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ScissorNode init with null node id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static obtain()Lcom/htc/sunny2/SceneNode;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/SceneNode;

    invoke-direct {v0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addSceneNode(Lcom/htc/sunny2/SceneNode;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddChild(II)Z

    return-void
.end method

.method public addSprite(Lcom/htc/sunny2/Sprite;)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddChild(II)Z

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/sunny2/SceneNode;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getChild(I)Lcom/htc/sunny2/SceneNode;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    return v0
.end method

.method public release()V
    .locals 8

    const/4 v7, 0x0

    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v5, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->release()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object v6, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v6

    const/4 v2, 0x0

    :try_start_0
    sget-object v5, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    move-object v2, v4

    :cond_3
    if-eqz v2, :cond_4

    sget-object v5, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v5, Lcom/htc/sunny2/SceneNode$1;->$SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I

    iget-object v6, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-virtual {v6}, Lcom/htc/sunny2/SceneNode$NODE_MODE;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_1
    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t delete Node: mNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mModeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :pswitch_0
    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v5}, Lcom/htc/sunny2/Sunny2;->DestroySceneNode(I)V

    iput v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    goto :goto_1

    :pswitch_1
    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v5}, Lcom/htc/sunny2/Sunny2;->DestroyScissor(I)V

    iput v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    goto :goto_1

    :cond_5
    iput v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeSceneNode(Lcom/htc/sunny2/SceneNode;)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemoveChild(II)V

    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSprite(Lcom/htc/sunny2/Sprite;)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemoveChild(II)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetGroupAlpha(IF)V

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    return-void
.end method

.method public setRenderOrder(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRenderOrder(II)V

    return-void
.end method

.method public setRenderOrderMode(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetChildrenRenderOrderMode(II)V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRotate(IFFF)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    return-void
.end method
