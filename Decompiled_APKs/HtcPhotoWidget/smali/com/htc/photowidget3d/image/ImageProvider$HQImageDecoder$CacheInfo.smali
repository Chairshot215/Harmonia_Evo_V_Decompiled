.class public Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;
.super Ljava/lang/Object;
.source "ImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheInfo"
.end annotation


# instance fields
.field public dataPath:Ljava/lang/String;

.field public dateModify:J

.field public fileSize:J

.field public mimeType:Ljava/lang/String;

.field public orientation:I

.field final synthetic this$1:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;


# direct methods
.method protected constructor <init>(Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 619
    iput-object p1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->this$1:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->mimeType:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dataPath:Ljava/lang/String;

    .line 623
    iput-wide v1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dateModify:J

    .line 624
    iput-wide v1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->fileSize:J

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->orientation:I

    return-void
.end method
