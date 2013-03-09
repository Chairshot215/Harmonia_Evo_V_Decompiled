.class Lcom/android/mms/ui/SlideshowPresenter$2;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowPresenter;->onModelChanged(Lcom/android/mms/model/Model;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;

.field final synthetic val$model:Lcom/android/mms/model/Model;

.field final synthetic val$view:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$model:Lcom/android/mms/model/Model;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->access$002(Lcom/android/mms/ui/SlideshowPresenter;Z)Z

    .line 487
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$model:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 488
    return-void
.end method
