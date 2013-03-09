.class Lcom/htc/album/helper/MenuManager$24$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$24;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$24;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$24;)V
    .locals 0
    .parameter

    .prologue
    .line 5151
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$24$1;->this$1:Lcom/htc/album/helper/MenuManager$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5158
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$24$1;->this$1:Lcom/htc/album/helper/MenuManager$24;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$24;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 5159
    return-void
.end method
