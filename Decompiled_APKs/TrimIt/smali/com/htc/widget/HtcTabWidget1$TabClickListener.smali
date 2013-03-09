.class Lcom/htc/widget/HtcTabWidget1$TabClickListener;
.super Ljava/lang/Object;
.source "HtcTabWidget1.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabWidget1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/htc/widget/HtcTabWidget1;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcTabWidget1;I)V
    .locals 0
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->this$0:Lcom/htc/widget/HtcTabWidget1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p2, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->mTabIndex:I

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcTabWidget1;ILcom/htc/widget/HtcTabWidget1$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 283
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcTabWidget1$TabClickListener;-><init>(Lcom/htc/widget/HtcTabWidget1;I)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->this$0:Lcom/htc/widget/HtcTabWidget1;

    iget v1, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->mTabIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->setTabViewPressed(I)V

    .line 307
    :cond_0
    :goto_0
    return v2

    .line 296
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->this$0:Lcom/htc/widget/HtcTabWidget1;

    #getter for: Lcom/htc/widget/HtcTabWidget1;->mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/htc/widget/HtcTabWidget1;->access$300(Lcom/htc/widget/HtcTabWidget1;)Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->mTabIndex:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 298
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->this$0:Lcom/htc/widget/HtcTabWidget1;

    iget v1, p0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;->mTabIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->setTabViewPressed(I)V

    goto :goto_0

    .line 301
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 304
    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0
.end method
