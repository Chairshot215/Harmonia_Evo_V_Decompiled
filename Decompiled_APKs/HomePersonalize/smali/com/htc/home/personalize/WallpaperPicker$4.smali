.class Lcom/htc/home/personalize/WallpaperPicker$4;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$4;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 825
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$4;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$4;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$700(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyDataSetChanged()V

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$4;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1600(Lcom/htc/home/personalize/WallpaperPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$4;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mUpdateWallpaper:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1500(Lcom/htc/home/personalize/WallpaperPicker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
