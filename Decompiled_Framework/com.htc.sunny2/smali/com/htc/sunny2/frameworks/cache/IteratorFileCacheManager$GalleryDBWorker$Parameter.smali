.class Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;
.super Ljava/lang/Object;
.source "IteratorFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parameter"
.end annotation


# instance fields
.field cachePath:Ljava/lang/String;

.field cacheSize:I

.field filePath:Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

.field type:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->this$1:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->cachePath:Ljava/lang/String;

    iput p4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->type:I

    iput p5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->cacheSize:I

    return-void
.end method
