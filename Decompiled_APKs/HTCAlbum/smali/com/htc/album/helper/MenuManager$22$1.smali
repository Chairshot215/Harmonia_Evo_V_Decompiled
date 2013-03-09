.class Lcom/htc/album/helper/MenuManager$22$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$22;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$22;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$22;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5087
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$22$1;->this$1:Lcom/htc/album/helper/MenuManager$22;

    iput p2, p0, Lcom/htc/album/helper/MenuManager$22$1;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5090
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$22$1;->this$1:Lcom/htc/album/helper/MenuManager$22;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$22;->val$adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->stopThumbThreads()V

    .line 5091
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$22$1;->this$1:Lcom/htc/album/helper/MenuManager$22;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$22;->val$adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    iget v1, p0, Lcom/htc/album/helper/MenuManager$22$1;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->removeCache(I)V

    .line 5092
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$22$1;->this$1:Lcom/htc/album/helper/MenuManager$22;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$22;->val$adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->startThumbThreads()V

    .line 5093
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$22$1;->this$1:Lcom/htc/album/helper/MenuManager$22;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$22;->val$adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->notifyDataSetChanged()V

    .line 5094
    return-void
.end method
