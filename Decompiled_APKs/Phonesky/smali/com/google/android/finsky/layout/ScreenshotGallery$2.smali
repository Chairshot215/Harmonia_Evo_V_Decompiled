.class Lcom/google/android/finsky/layout/ScreenshotGallery$2;
.super Ljava/lang/Object;
.source "ScreenshotGallery.java"

# interfaces
.implements Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImagesIfNecessary()V
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
    .line 203
    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChildViewTap(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$200(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$100(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToScreenshots(Lcom/google/android/finsky/api/model/Document;I)V

    .line 207
    return-void
.end method
