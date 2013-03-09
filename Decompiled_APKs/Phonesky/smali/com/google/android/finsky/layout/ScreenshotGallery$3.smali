.class Lcom/google/android/finsky/layout/ScreenshotGallery$3;
.super Ljava/lang/Object;
.source "ScreenshotGallery.java"

# interfaces
.implements Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;


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
    .line 209
    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$3;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoChildViewTap(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$3;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$3;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$300(Lcom/google/android/finsky/layout/ScreenshotGallery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/finsky/utils/IntentUtils;->createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$3;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method
