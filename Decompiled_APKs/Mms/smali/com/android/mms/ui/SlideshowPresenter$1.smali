.class Lcom/android/mms/ui/SlideshowPresenter$1;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput p1, v0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayWidth:I

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput p2, v0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayHeight:I

    .line 89
    return-void
.end method
