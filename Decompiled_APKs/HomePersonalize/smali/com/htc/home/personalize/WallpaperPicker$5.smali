.class Lcom/htc/home/personalize/WallpaperPicker$5;
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
    .line 833
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$5;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$5;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$5;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->checkUpdateTitle()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1700(Lcom/htc/home/personalize/WallpaperPicker;)V

    .line 837
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$5;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1600(Lcom/htc/home/personalize/WallpaperPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$5;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mUpdateTitle:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1800(Lcom/htc/home/personalize/WallpaperPicker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 839
    :cond_0
    return-void
.end method
