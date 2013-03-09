.class public Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xd0

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcFastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/HtcFastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xd0

    .line 725
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 726
    const/16 v0, 0xd0

    .line 735
    :goto_0
    return v0

    .line 729
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 730
    .local v1, now:J
    iget-wide v3, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 731
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 733
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/opensense/widget/HtcFastScroller;

    #setter for: Lcom/htc/opensense/widget/HtcFastScroller;->POST_BLADE:Z
    invoke-static {v0, v2}, Lcom/htc/opensense/widget/HtcFastScroller;->access$002(Lcom/htc/opensense/widget/HtcFastScroller;Z)Z

    .line 740
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->startFade()V

    .line 750
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/opensense/widget/HtcFastScroller;

    #getter for: Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFastScroller;->access$100(Lcom/htc/opensense/widget/HtcFastScroller;)Lcom/htc/opensense/widget/HtcGridView2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 719
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->mFadeDuration:J

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->mStartTime:J

    .line 721
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/opensense/widget/HtcFastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    .line 722
    return-void
.end method
