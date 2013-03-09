.class Lcom/htc/home/personalize/LiveWallpaperPreview$1;
.super Ljava/lang/Object;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/LiveWallpaperPreview;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/LiveWallpaperPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$1;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$1;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    #getter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$000(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 230
    const-string v0, "LiveWallpaperPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAttachedToWindow(), mWallpaperConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$1;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    #getter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v2}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$000(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$1;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    #getter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$000(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$1;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    const/4 v1, 0x0

    #setter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0, v1}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$002(Lcom/htc/home/personalize/LiveWallpaperPreview;Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    goto :goto_0
.end method
