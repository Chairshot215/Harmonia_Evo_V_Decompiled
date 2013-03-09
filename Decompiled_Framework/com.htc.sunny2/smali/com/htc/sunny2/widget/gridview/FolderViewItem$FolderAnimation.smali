.class Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;
.super Ljava/lang/Object;
.source "FolderViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/FolderViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;
    }
.end annotation


# instance fields
.field private animationSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStart:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/FolderViewItem;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->animationSet:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem;Lcom/htc/sunny2/widget/gridview/FolderViewItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)V

    return-void
.end method


# virtual methods
.method addUnit(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;

    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->mIsStart:Z

    if-ne v9, v5, :cond_0

    iget-object v5, v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    :cond_0
    iget-object v5, v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->animate()V

    iget-object v5, v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v5

    if-ne v9, v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentRotation()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    iget-object v5, v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunny2/Sprite;

    iget v6, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v8, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    iget-object v5, v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    iget-object v5, v4, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunny2/Sprite;

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    #getter for: Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->access$500(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Lcom/htc/sunny2/RenderThreadHandler;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->mIsStart:Z

    return-void
.end method

.method start()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    #getter for: Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->access$300(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Lcom/htc/sunny2/RenderThreadHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->mIsStart:Z

    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    #getter for: Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->access$400(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Lcom/htc/sunny2/RenderThreadHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
