.class Lcom/android/camera/mirror/MirrorActivity$2;
.super Ljava/lang/Object;
.source "MirrorActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/mirror/MirrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/mirror/MirrorActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/mirror/MirrorActivity$2;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity$2;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #getter for: Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/mirror/MirrorActivity;->access$100(Lcom/android/camera/mirror/MirrorActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity$2;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #getter for: Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/mirror/MirrorActivity;->access$100(Lcom/android/camera/mirror/MirrorActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity$2;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #getter for: Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z
    invoke-static {v2}, Lcom/android/camera/mirror/MirrorActivity;->access$200(Lcom/android/camera/mirror/MirrorActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity$2;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #calls: Lcom/android/camera/mirror/MirrorActivity;->setMinBrightness()V
    invoke-static {v2}, Lcom/android/camera/mirror/MirrorActivity;->access$300(Lcom/android/camera/mirror/MirrorActivity;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity$2;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #calls: Lcom/android/camera/mirror/MirrorActivity;->setMaxBrightness()V
    invoke-static {v2}, Lcom/android/camera/mirror/MirrorActivity;->access$400(Lcom/android/camera/mirror/MirrorActivity;)V

    goto :goto_0
.end method
