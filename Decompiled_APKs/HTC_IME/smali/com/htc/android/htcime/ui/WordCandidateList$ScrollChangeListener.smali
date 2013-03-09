.class Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;
.super Ljava/lang/Object;
.source "WordCandidateList.java"

# interfaces
.implements Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandidateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandidateList;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/WordCandidateList;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 3
    .parameter "currScrollX"
    .parameter "currScrollY"
    .parameter "preScrollX"
    .parameter "preScrollY"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$000(Lcom/htc/android/htcime/ui/WordCandidateList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->moveByToush:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$100(Lcom/htc/android/htcime/ui/WordCandidateList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUpDown:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$200(Lcom/htc/android/htcime/ui/WordCandidateList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUpDown:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$200(Lcom/htc/android/htcime/ui/WordCandidateList;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$300(Lcom/htc/android/htcime/ui/WordCandidateList;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$300(Lcom/htc/android/htcime/ui/WordCandidateList;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$300(Lcom/htc/android/htcime/ui/WordCandidateList;)Landroid/widget/ScrollView;

    move-result-object v0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mRatio:F
    invoke-static {v2}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$400(Lcom/htc/android/htcime/ui/WordCandidateList;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method
