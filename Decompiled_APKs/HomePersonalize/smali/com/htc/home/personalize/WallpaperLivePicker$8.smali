.class Lcom/htc/home/personalize/WallpaperLivePicker$8;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 831
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 834
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 852
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 836
    :pswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$700(Lcom/htc/home/personalize/WallpaperLivePicker;)[Z

    move-result-object v0

    aput-boolean v1, v0, v4

    .line 837
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mTouching:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$602(Lcom/htc/home/personalize/WallpaperLivePicker;Z)Z

    .line 838
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mItemSelected:Z
    invoke-static {v0, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$502(Lcom/htc/home/personalize/WallpaperLivePicker;Z)Z

    .line 839
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1400(Lcom/htc/home/personalize/WallpaperLivePicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateTitle:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1600(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 843
    :pswitch_2
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mTouching:Z
    invoke-static {v0, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$602(Lcom/htc/home/personalize/WallpaperLivePicker;Z)Z

    .line 844
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mItemSelected:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$500(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$700(Lcom/htc/home/personalize/WallpaperLivePicker;)[Z

    move-result-object v0

    aput-boolean v4, v0, v4

    .line 846
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->updateButtons()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$800(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 847
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->updateTitle()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$900(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 848
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1100(Lcom/htc/home/personalize/WallpaperLivePicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$8;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$400(Lcom/htc/home/personalize/WallpaperLivePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setImageView(I)V

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
