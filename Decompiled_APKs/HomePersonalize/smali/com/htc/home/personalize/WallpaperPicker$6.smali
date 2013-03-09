.class Lcom/htc/home/personalize/WallpaperPicker$6;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemClickListener;


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
    .line 850
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 853
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v1

    aput-boolean v0, v1, v0

    .line 854
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1900(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v2, v2, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    aput-boolean v0, v1, p1

    .line 856
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v1, v1, p1

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->handleDeleteCount(Z)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$2000(Lcom/htc/home/personalize/WallpaperPicker;Z)V

    .line 857
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$700(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyUpdateItem(I)V

    .line 868
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v0, p1}, Lcom/htc/home/personalize/WallpaperPicker;->access$302(Lcom/htc/home/personalize/WallpaperPicker;I)I

    .line 860
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mIsPickLockScreenWallpaper:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2100(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v1

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->SetLockScreenWallPaper(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$2200(Lcom/htc/home/personalize/WallpaperPicker;I)V

    goto :goto_0

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$6;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2300(Lcom/htc/home/personalize/WallpaperPicker;)V

    goto :goto_0
.end method
