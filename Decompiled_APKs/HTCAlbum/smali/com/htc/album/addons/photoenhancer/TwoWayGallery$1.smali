.class Lcom/htc/album/addons/photoenhancer/TwoWayGallery$1;
.super Ljava/lang/Object;
.source "TwoWayGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$1;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$1;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$002(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;Z)Z

    .line 156
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$1;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->selectionChanged()V

    .line 157
    return-void
.end method
