.class public final Lcom/coremobility/app/customui/k;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field e:J

.field f:I

.field g:F

.field h:I

.field i:Landroid/widget/HorizontalScrollView;

.field j:Lcom/coremobility/app/customui/j;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/app/customui/l;

    invoke-direct {v0, p0}, Lcom/coremobility/app/customui/l;-><init>(Lcom/coremobility/app/customui/k;)V

    iput-object v0, p0, Lcom/coremobility/app/customui/k;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/customui/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/customui/k;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coremobility/app/customui/k;->d:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/coremobility/app/customui/k;->g:F

    long-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/coremobility/app/customui/k;->a:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-wide v3, p0, Lcom/coremobility/app/customui/k;->e:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scroll cb x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    float-to-int v1, v2

    iget v2, p0, Lcom/coremobility/app/customui/k;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->k:Landroid/os/Handler;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/customui/k;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "scrolling has ended"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/app/customui/k;->a()V

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/coremobility/app/customui/k;->c:I

    iget v2, p0, Lcom/coremobility/app/customui/k;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/customui/k;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final a(III)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smoothScrollTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    const-string v0, "No scroll view set in CM_Scroller"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget v0, p0, Lcom/coremobility/app/customui/k;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/app/customui/k;->d:J

    iget-wide v0, p0, Lcom/coremobility/app/customui/k;->d:J

    iget v2, p0, Lcom/coremobility/app/customui/k;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremobility/app/customui/k;->e:J

    invoke-direct {p0}, Lcom/coremobility/app/customui/k;->c()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/app/customui/k;->a()V

    iput p2, p0, Lcom/coremobility/app/customui/k;->h:I

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/customui/k;->a:I

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->i:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/customui/k;->b:I

    iput p1, p0, Lcom/coremobility/app/customui/k;->c:I

    iput p3, p0, Lcom/coremobility/app/customui/k;->f:I

    iget v0, p0, Lcom/coremobility/app/customui/k;->c:I

    iget v1, p0, Lcom/coremobility/app/customui/k;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coremobility/app/customui/k;->g:F

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/app/customui/k;->d()V

    goto :goto_1
.end method

.method public final a(Lcom/coremobility/app/customui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/customui/k;->j:Lcom/coremobility/app/customui/j;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->j:Lcom/coremobility/app/customui/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/k;->j:Lcom/coremobility/app/customui/j;

    iget v1, p0, Lcom/coremobility/app/customui/k;->h:I

    invoke-interface {v0, v1}, Lcom/coremobility/app/customui/j;->a_(I)V

    :cond_0
    return-void
.end method
