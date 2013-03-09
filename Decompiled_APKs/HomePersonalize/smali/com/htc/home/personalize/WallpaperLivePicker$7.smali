.class Lcom/htc/home/personalize/WallpaperLivePicker$7;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemClickListener;


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
    .line 812
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I
    invoke-static {v0, p1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$402(Lcom/htc/home/personalize/WallpaperLivePicker;I)I

    .line 815
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1700(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->checkIsNeedToSetting()Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1800(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->setupLiveWallpaper()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1900(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 828
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->returnToDockMode()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2000(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2100(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->goToIdleScreenPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2200(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$7;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2300(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0
.end method
