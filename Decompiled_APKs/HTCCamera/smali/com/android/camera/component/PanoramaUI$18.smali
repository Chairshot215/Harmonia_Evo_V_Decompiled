.class Lcom/android/camera/component/PanoramaUI$18;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$18;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$18;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaUI;->access$2500(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$18;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaUI;->access$2500(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-gt v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$18;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaUI;->access$2500(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$18;->this$0:Lcom/android/camera/component/PanoramaUI;

    const/4 v4, 0x0

    #calls: Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/component/PanoramaUI;->access$2600(Lcom/android/camera/component/PanoramaUI;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$18;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/component/PanoramaUI;->access$2600(Lcom/android/camera/component/PanoramaUI;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$18;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->stopCapture()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
