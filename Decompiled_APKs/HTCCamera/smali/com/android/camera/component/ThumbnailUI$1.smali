.class Lcom/android/camera/component/ThumbnailUI$1;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$100(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$100(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->startAlbum()V
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$200(Lcom/android/camera/component/ThumbnailUI;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z
    invoke-static {v3, v2}, Lcom/android/camera/component/ThumbnailUI;->access$302(Lcom/android/camera/component/ThumbnailUI;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
