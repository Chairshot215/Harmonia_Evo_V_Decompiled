.class Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;
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
    name = "TagPhotoOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/LocalTagView;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/LocalTagView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/addons/LocalTagView;->onPhotoTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 83
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v1}, Lcom/htc/album/addons/LocalTagView;->onPhotoTouchUp()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 83
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
