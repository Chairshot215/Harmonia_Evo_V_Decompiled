.class public Lcom/htc/widget/HtcFastScroller3$ScrollFade;
.super Ljava/lang/Object;
.source "HtcFastScroller3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcFastScroller3;
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

.field final synthetic this$0:Lcom/htc/widget/HtcFastScroller3;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcFastScroller3;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->this$0:Lcom/htc/widget/HtcFastScroller3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xd0

    .line 747
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->this$0:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v3}, Lcom/htc/widget/HtcFastScroller3;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 748
    const/16 v0, 0xd0

    .line 757
    :goto_0
    return v0

    .line 751
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 752
    .local v1, now:J
    iget-wide v3, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 753
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 755
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->this$0:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->startFade()V

    .line 771
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->this$0:Lcom/htc/widget/HtcFastScroller3;

    #getter for: Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;
    invoke-static {v0}, Lcom/htc/widget/HtcFastScroller3;->access$000(Lcom/htc/widget/HtcFastScroller3;)Lcom/htc/widget/HtcAbsListView2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->this$0:Lcom/htc/widget/HtcFastScroller3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 741
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->mFadeDuration:J

    .line 742
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->mStartTime:J

    .line 743
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->this$0:Lcom/htc/widget/HtcFastScroller3;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 744
    return-void
.end method
