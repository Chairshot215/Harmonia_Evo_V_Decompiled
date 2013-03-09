.class Lcom/android/updater/util/IconDownloader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "IconDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/util/IconDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field mApkIcon:Landroid/widget/ImageView;

.field mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/updater/util/IconDownloader;


# direct methods
.method public constructor <init>(Lcom/android/updater/util/IconDownloader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "bitmap"
    .parameter "apkIcon"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;->this$0:Lcom/android/updater/util/IconDownloader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 158
    iput-object p3, p0, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;->mApkIcon:Landroid/widget/ImageView;

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;->mApkIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    :cond_0
    return-void
.end method
