.class Lcom/htc/home/personalize/WallpaperPicker$8;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnMovementListener;


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
    .line 897
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlingEnd()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 928
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$2400(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/widget/DeckControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v1

    .line 929
    .local v1, position:I
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelectedPosition:I
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1000(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    const/16 v0, 0x258

    .line 930
    .local v0, deleyTime:I
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z
    invoke-static {v3, v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1202(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 931
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1100(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 932
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v3

    aput-boolean v2, v3, v2

    .line 933
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateButtons(Z)V
    invoke-static {v3, v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1400(Lcom/htc/home/personalize/WallpaperPicker;Z)V

    .line 934
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$800(Lcom/htc/home/personalize/WallpaperPicker;)V

    .line 936
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/WallpaperLoader;->setPosition(I)V

    .line 938
    :cond_0
    return-void

    .end local v0           #deleyTime:I
    :cond_1
    move v0, v2

    .line 929
    goto :goto_0
.end method

.method public onFlingStart()V
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 924
    return-void
.end method

.method public onScrollEnd()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 909
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$2400(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/widget/DeckControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v1

    .line 910
    .local v1, position:I
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelectedPosition:I
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1000(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    const/16 v0, 0x258

    .line 911
    .local v0, deleyTime:I
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z
    invoke-static {v3, v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1202(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 912
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1100(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 913
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v3

    aput-boolean v2, v3, v2

    .line 914
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateButtons(Z)V
    invoke-static {v3, v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1400(Lcom/htc/home/personalize/WallpaperPicker;Z)V

    .line 915
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$800(Lcom/htc/home/personalize/WallpaperPicker;)V

    .line 917
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/WallpaperLoader;->setPosition(I)V

    .line 919
    :cond_0
    return-void

    .end local v0           #deleyTime:I
    :cond_1
    move v0, v2

    .line 910
    goto :goto_0
.end method

.method public onScrollStart()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 901
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v0

    aput-boolean v2, v0, v1

    .line 902
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z
    invoke-static {v0, v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$1202(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 903
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1102(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 904
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1600(Lcom/htc/home/personalize/WallpaperPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$8;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mUpdateTitle:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1800(Lcom/htc/home/personalize/WallpaperPicker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 905
    return-void
.end method
