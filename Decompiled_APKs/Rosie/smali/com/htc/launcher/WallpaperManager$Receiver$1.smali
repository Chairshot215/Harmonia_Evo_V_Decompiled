.class Lcom/htc/launcher/WallpaperManager$Receiver$1;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/WallpaperManager$Receiver;-><init>(Lcom/htc/launcher/WallpaperManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

.field final synthetic val$this$0:Lcom/htc/launcher/WallpaperManager;


# direct methods
.method constructor <init>(Lcom/htc/launcher/WallpaperManager$Receiver;Lcom/htc/launcher/WallpaperManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

    iput-object p2, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->val$this$0:Lcom/htc/launcher/WallpaperManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

    iget-object v0, v0, Lcom/htc/launcher/WallpaperManager$Receiver;->this$0:Lcom/htc/launcher/WallpaperManager;

    invoke-virtual {v0}, Lcom/htc/launcher/WallpaperManager;->isImageWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

    iget-object v0, v0, Lcom/htc/launcher/WallpaperManager$Receiver;->this$0:Lcom/htc/launcher/WallpaperManager;

    #calls: Lcom/htc/launcher/WallpaperManager;->getWallpaperImage()V
    invoke-static {v0}, Lcom/htc/launcher/WallpaperManager;->access$200(Lcom/htc/launcher/WallpaperManager;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

    iget-object v0, v0, Lcom/htc/launcher/WallpaperManager$Receiver;->this$0:Lcom/htc/launcher/WallpaperManager;

    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

    iget-object v1, v1, Lcom/htc/launcher/WallpaperManager$Receiver;->this$0:Lcom/htc/launcher/WallpaperManager;

    #getter for: Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;
    invoke-static {v1}, Lcom/htc/launcher/WallpaperManager;->access$300(Lcom/htc/launcher/WallpaperManager;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    #calls: Lcom/htc/launcher/WallpaperManager;->notifyWallpaperChange(Landroid/app/WallpaperInfo;)V
    invoke-static {v0, v1}, Lcom/htc/launcher/WallpaperManager;->access$400(Lcom/htc/launcher/WallpaperManager;Landroid/app/WallpaperInfo;)V

    .line 322
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

    iget-object v0, v0, Lcom/htc/launcher/WallpaperManager$Receiver;->this$0:Lcom/htc/launcher/WallpaperManager;

    invoke-virtual {v0}, Lcom/htc/launcher/WallpaperManager;->updateWallpaperInfo()Landroid/app/WallpaperInfo;

    .line 323
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver$1;->this$1:Lcom/htc/launcher/WallpaperManager$Receiver;

    iget-object v0, v0, Lcom/htc/launcher/WallpaperManager$Receiver;->this$0:Lcom/htc/launcher/WallpaperManager;

    invoke-static {v0}, Lcom/htc/launcher/WallpaperManager;->access$510(Lcom/htc/launcher/WallpaperManager;)I

    .line 324
    return-void
.end method
