.class Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager$ImageListUber;-><init>(Lcom/htc/opensense/album/util/ImageManager;[Lcom/htc/opensense/album/util/ImageManager$IImageList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

.field final synthetic val$this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;Lcom/htc/opensense/album/util/ImageManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4873
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;->val$this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/htc/opensense/album/util/ImageManager$IImageList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 4875
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->access$1100(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4876
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->access$1100(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    invoke-interface {v0, v1}, Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;->onChange(Lcom/htc/opensense/album/util/ImageManager$IImageList;)V

    .line 4878
    :cond_0
    return-void
.end method
