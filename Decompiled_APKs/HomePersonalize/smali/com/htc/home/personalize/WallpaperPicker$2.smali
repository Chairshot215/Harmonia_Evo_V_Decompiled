.class Lcom/htc/home/personalize/WallpaperPicker$2;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemSelectedListener;


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
    .line 801
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelectedPosition:I
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1000(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/16 v0, 0x258

    .line 805
    .local v0, deleyTime:I
    :goto_0
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v3, p1}, Lcom/htc/home/personalize/WallpaperPicker;->access$302(Lcom/htc/home/personalize/WallpaperPicker;I)I

    move-result v3

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelectedPosition:I
    invoke-static {v2, v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1002(Lcom/htc/home/personalize/WallpaperPicker;I)I

    .line 806
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    const/4 v3, 0x1

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z
    invoke-static {v2, v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1102(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 807
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1200(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 808
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v2

    aput-boolean v1, v2, v1

    .line 809
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateButtons(Z)V
    invoke-static {v2, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1400(Lcom/htc/home/personalize/WallpaperPicker;Z)V

    .line 810
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$2;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$800(Lcom/htc/home/personalize/WallpaperPicker;)V

    .line 812
    :cond_0
    return-void

    .end local v0           #deleyTime:I
    :cond_1
    move v0, v1

    .line 804
    goto :goto_0
.end method
