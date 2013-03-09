.class Lcom/android/mms/ui/SlideshowActivity$5;
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
    .line 308
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 310
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v2

    .line 311
    .local v2, isPlaying:Z
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    .line 312
    .local v0, current_time:I
    const/4 v3, 0x0

    .line 314
    .local v3, time_pos:I
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 315
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v4

    add-int/2addr v3, v4

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v5}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->seekto(II)V

    .line 332
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v4, v4, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v4}, Lcom/android/mms/ui/SlideshowPresenter;->goBackward()V

    .line 333
    if-nez v2, :cond_2

    .line 335
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 336
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$100(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$5$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/SlideshowActivity$5$1;-><init>(Lcom/android/mms/ui/SlideshowActivity$5;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :cond_2
    return-void

    .line 321
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v4

    add-int/2addr v3, v4

    .line 323
    const/4 v4, 0x1

    if-lt v1, v4, :cond_4

    if-lt v3, v0, :cond_4

    .line 325
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v6}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/dom/smil/SmilPlayer;->seekto(II)V

    goto :goto_1

    .line 321
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
