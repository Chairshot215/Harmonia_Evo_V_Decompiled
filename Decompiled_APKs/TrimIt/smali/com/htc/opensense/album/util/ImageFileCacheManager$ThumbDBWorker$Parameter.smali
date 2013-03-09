.class Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;
.super Ljava/lang/Object;
.source "ImageFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parameter"
.end annotation


# instance fields
.field cacheName:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

.field type:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "fileName"
    .parameter "cacheName"
    .parameter "type"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;->this$1:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;->fileName:Ljava/lang/String;

    .line 499
    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;->cacheName:Ljava/lang/String;

    .line 500
    iput p4, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;->type:I

    .line 501
    return-void
.end method
