.class Lcom/android/mms/ui/SlideshowActivity$6;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 350
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v2

    .line 351
    .local v2, isPlaying:Z
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    .line 352
    .local v0, current_time:I
    const/4 v3, 0x0

    .line 353
    .local v3, time_pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 354
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v4

    add-int/2addr v3, v4

    .line 355
    if-lt v3, v0, :cond_3

    .line 358
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 359
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->seekto(II)V

    .line 368
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v4, v4, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v4}, Lcom/android/mms/ui/SlideshowPresenter;->goForward()V

    .line 369
    if-nez v2, :cond_1

    .line 371
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 372
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$100(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$6$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/SlideshowActivity$6$1;-><init>(Lcom/android/mms/ui/SlideshowActivity$6;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    :cond_1
    return-void

    .line 361
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/android/mms/dom/smil/SmilPlayer;->seekto(II)V

    goto :goto_1

    .line 353
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
