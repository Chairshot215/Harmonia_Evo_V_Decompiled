.class Lcom/htc/android/htcime/ui/CandidateView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/CandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/CandidateView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/CandidateView;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView$1;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "me"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$1;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #getter for: Lcom/htc/android/htcime/ui/CandidateView;->mAbleToDrag:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ui/CandidateView;->access$000(Lcom/htc/android/htcime/ui/CandidateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$1;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->setDragStatus()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$1;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 319
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
