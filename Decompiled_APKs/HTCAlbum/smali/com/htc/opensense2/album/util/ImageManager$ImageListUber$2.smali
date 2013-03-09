.class Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 0
    .parameter

    .prologue
    .line 5643
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 5645
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5646
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;->onChange(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 5648
    :cond_0
    return-void
.end method
