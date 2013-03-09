.class Lcom/google/android/finsky/layout/ScreenshotGallery$1;
.super Ljava/lang/Object;
.source "ScreenshotGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/ScreenshotGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ScreenshotGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$1;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$1;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$000(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/adapters/ImageStripAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->notifyDataSetInvalidated()V

    .line 67
    return-void
.end method
