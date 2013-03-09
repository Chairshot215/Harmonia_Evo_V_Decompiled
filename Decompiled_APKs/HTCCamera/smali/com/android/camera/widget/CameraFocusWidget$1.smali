.class Lcom/android/camera/widget/CameraFocusWidget$1;
.super Ljava/lang/Object;
.source "CameraFocusWidget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/CameraFocusWidget;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/CameraFocusWidget;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/CameraFocusWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/CameraFocusWidget$1;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$1;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$000(Lcom/android/camera/widget/CameraFocusWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$1;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$100(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$1;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z
    invoke-static {v0, v1}, Lcom/android/camera/widget/CameraFocusWidget;->access$002(Lcom/android/camera/widget/CameraFocusWidget;Z)Z

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$1;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #calls: Lcom/android/camera/widget/CameraFocusWidget;->cancel()V
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$200(Lcom/android/camera/widget/CameraFocusWidget;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
