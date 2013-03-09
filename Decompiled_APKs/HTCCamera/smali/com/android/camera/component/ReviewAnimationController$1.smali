.class Lcom/android/camera/component/ReviewAnimationController$1;
.super Ljava/lang/Object;
.source "ReviewAnimationController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimationController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ReviewAnimationController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationController$1;->this$0:Lcom/android/camera/component/ReviewAnimationController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    check-cast p1, Lcom/android/camera/PictureEvent;

    invoke-virtual {p1}, Lcom/android/camera/PictureEvent;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationController$1;->this$0:Lcom/android/camera/component/ReviewAnimationController;

    #calls: Lcom/android/camera/component/ReviewAnimationController;->sendReviewImage(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/ReviewAnimationController;->access$000(Lcom/android/camera/component/ReviewAnimationController;Landroid/graphics/Bitmap;)V

    return-void
.end method
