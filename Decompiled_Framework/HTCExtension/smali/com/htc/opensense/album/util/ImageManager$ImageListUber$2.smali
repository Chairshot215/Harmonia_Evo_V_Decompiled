.class Lcom/htc/opensense/album/util/ImageManager$ImageListUber$2;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->startRequery()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/htc/opensense/album/util/ImageManager$IImageList;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->access$1100(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->access$1100(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$2;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    invoke-interface {v0, v1}, Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;->onChange(Lcom/htc/opensense/album/util/ImageManager$IImageList;)V

    :cond_0
    return-void
.end method
