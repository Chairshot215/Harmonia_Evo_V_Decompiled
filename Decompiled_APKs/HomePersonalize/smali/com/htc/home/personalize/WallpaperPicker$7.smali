.class Lcom/htc/home/personalize/WallpaperPicker$7;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 871
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

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

    .line 874
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 893
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 876
    :pswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v0

    aput-boolean v1, v0, v4

    .line 877
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1202(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 878
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z
    invoke-static {v0, v4}, Lcom/htc/home/personalize/WallpaperPicker;->access$1102(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 879
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1600(Lcom/htc/home/personalize/WallpaperPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mUpdateTitle:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1800(Lcom/htc/home/personalize/WallpaperPicker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 883
    :pswitch_2
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z
    invoke-static {v0, v4}, Lcom/htc/home/personalize/WallpaperPicker;->access$1202(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 884
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1100(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z

    move-result-object v0

    aput-boolean v4, v0, v4

    .line 886
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateButtons(Z)V
    invoke-static {v0, v4}, Lcom/htc/home/personalize/WallpaperPicker;->access$1400(Lcom/htc/home/personalize/WallpaperPicker;Z)V

    .line 887
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$800(Lcom/htc/home/personalize/WallpaperPicker;)V

    .line 889
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$7;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setPosition(I)V

    goto :goto_0

    .line 874
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
