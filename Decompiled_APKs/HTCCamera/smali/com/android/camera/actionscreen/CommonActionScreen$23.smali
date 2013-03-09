.class Lcom/android/camera/actionscreen/CommonActionScreen$23;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->prepareHtcActionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;
    invoke-static {v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gt v1, v5, :cond_0

    if-ltz v2, :cond_0

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;
    invoke-static {v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V
    invoke-static {v3}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1200(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    move v3, v4

    :goto_1
    return v3

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;
    invoke-static {v4}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    const v6, 0x7f0a001e

    const v7, 0x7f02000b

    invoke-static {v5, v6, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;
    invoke-static {v4}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    const v6, 0x7f0a001f

    const v7, 0x7f02000d

    invoke-static {v5, v6, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V
    invoke-static {v4}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1200(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen$23;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V
    invoke-static {v4}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$200(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
