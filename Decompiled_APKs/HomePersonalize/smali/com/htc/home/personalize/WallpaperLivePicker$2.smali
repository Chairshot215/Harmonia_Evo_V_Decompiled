.class Lcom/htc/home/personalize/WallpaperLivePicker$2;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemSelectedListener;


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
    .line 743
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 746
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mGallerySelectedPosition:I
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$300(Lcom/htc/home/personalize/WallpaperLivePicker;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/16 v0, 0x258

    .line 747
    .local v0, deleyTime:I
    :goto_0
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I
    invoke-static {v3, p1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$402(Lcom/htc/home/personalize/WallpaperLivePicker;I)I

    move-result v3

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mGallerySelectedPosition:I
    invoke-static {v2, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$302(Lcom/htc/home/personalize/WallpaperLivePicker;I)I

    .line 748
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    const/4 v3, 0x1

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mItemSelected:Z
    invoke-static {v2, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$502(Lcom/htc/home/personalize/WallpaperLivePicker;Z)Z

    .line 750
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mTouching:Z
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$600(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$700(Lcom/htc/home/personalize/WallpaperLivePicker;)[Z

    move-result-object v2

    aput-boolean v1, v2, v1

    .line 752
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->updateButtons()V
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$800(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 753
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$2;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->updateTitle()V
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$900(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 755
    :cond_0
    return-void

    .end local v0           #deleyTime:I
    :cond_1
    move v0, v1

    .line 746
    goto :goto_0
.end method
