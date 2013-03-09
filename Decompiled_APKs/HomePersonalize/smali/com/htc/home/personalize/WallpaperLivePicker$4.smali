.class Lcom/htc/home/personalize/WallpaperLivePicker$4;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperLivePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperLivePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$4;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperUpdate(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 768
    const-string v0, "WallpaperLivePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$4;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1100(Lcom/htc/home/personalize/WallpaperLivePicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/WallpaperLoader;->setPosition(I)V

    .line 776
    return-void
.end method
