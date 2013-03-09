.class Lcom/htc/android/htcime/ui/AddHandwritePatternWord$1;
.super Ljava/lang/Object;
.source "AddHandwritePatternWord.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$1;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 127
    .local v0, action:I
    if-ne v0, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$1;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mScroll:Lcom/htc/android/htcime/ui/ScrollViewNotScroll;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/ScrollViewNotScroll;->setScrollingEnable(Z)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$1;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #getter for: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$000(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Lcom/htc/android/htcime/ui/PatternStrokeView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/android/htcime/ui/PatternStrokeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$1;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mScroll:Lcom/htc/android/htcime/ui/ScrollViewNotScroll;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/ScrollViewNotScroll;->setScrollingEnable(Z)V

    goto :goto_0
.end method
