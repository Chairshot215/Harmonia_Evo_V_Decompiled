.class Lcom/htc/home/personalize/WallpaperPreview$1;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPreview$1;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview$1;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    #getter for: Lcom/htc/home/personalize/WallpaperPreview;->mIsPickLockScreenWallpaper:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPreview;->access$000(Lcom/htc/home/personalize/WallpaperPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview$1;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    #calls: Lcom/htc/home/personalize/WallpaperPreview;->SetLockScreenWallPaper()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPreview;->access$100(Lcom/htc/home/personalize/WallpaperPreview;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview$1;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    #calls: Lcom/htc/home/personalize/WallpaperPreview;->selectWallpaper()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPreview;->access$200(Lcom/htc/home/personalize/WallpaperPreview;)V

    goto :goto_0
.end method
