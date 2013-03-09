.class Lcom/htc/album/addons/photoenhancer/TwoWayGallery$2;
.super Ljava/lang/Object;
.source "TwoWayGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .line 1871
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$2;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$2;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #calls: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->dispatchUnpress()V
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$200(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V

    .line 1874
    return-void
.end method
