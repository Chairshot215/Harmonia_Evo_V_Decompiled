.class Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;
.super Ljava/lang/Object;
.source "LocalTagView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/LocalTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagViewOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/LocalTagView;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/LocalTagView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    instance-of v1, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v1, :cond_0

    .line 94
    check-cast p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .end local p1
    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    iget-object v1, v1, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagPressResource()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setImageBackground(I)V

    .line 117
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 98
    .restart local p1
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 100
    instance-of v1, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v1, :cond_0

    .line 103
    check-cast p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .end local p1
    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    iget-object v1, v1, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagResource()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setImageBackground(I)V

    goto :goto_0

    .line 106
    .restart local p1
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 108
    instance-of v1, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 111
    .local v0, rc:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    check-cast p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .end local p1
    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    iget-object v1, v1, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagResource()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setImageBackground(I)V

    goto :goto_0
.end method
