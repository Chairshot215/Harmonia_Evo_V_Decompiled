.class Lcom/htc/home/personalize/WallpaperLivePicker$10;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 869
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1700(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->checkIsNeedToSetting()Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1800(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->setupLiveWallpaper()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1900(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 886
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->returnToDockMode()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2000(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2100(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->selectIdleScreen()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2400(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0

    .line 880
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPreviewed:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2500(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperMain()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2600(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0

    .line 883
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$10;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$400(Lcom/htc/home/personalize/WallpaperLivePicker;)I

    move-result v1

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->selectWallpaper(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2700(Lcom/htc/home/personalize/WallpaperLivePicker;Landroid/view/View;I)V

    goto :goto_0
.end method
