.class Lcom/android/updater/util/IconDownloader$QueueElement;
.super Ljava/lang/Object;
.source "IconDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/util/IconDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueElement"
.end annotation


# instance fields
.field public mApkIcon:Landroid/widget/ImageView;

.field public mIconDownloadPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/updater/util/IconDownloader;


# direct methods
.method public constructor <init>(Lcom/android/updater/util/IconDownloader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "iconDownloadPath"
    .parameter "imageView"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/updater/util/IconDownloader$QueueElement;->this$0:Lcom/android/updater/util/IconDownloader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/updater/util/IconDownloader$QueueElement;->mIconDownloadPath:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/updater/util/IconDownloader$QueueElement;->mApkIcon:Landroid/widget/ImageView;

    .line 48
    return-void
.end method
