.class Lcom/htc/widget/FastScroller$FlingRunnable;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mEndPostionX:I

.field private mIsCloseWindow:Z

.field private mIsRunning:Z

.field private mLastFlingX:I

.field private mLongMode:Z

.field private mPos:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 2
    .parameter

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    new-instance v0, Landroid/widget/Scroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {p1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 1186
    return-void
.end method

.method private endFling()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1241
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 1242
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1244
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionX:I

    #setter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$502(Lcom/htc/widget/FastScroller;I)I

    .line 1245
    iget v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionX:I

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 1246
    .local v0, delta:I
    if-eqz v0, :cond_0

    .line 1247
    iget-boolean v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v2, :cond_1

    .line 1248
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 1255
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mPos:I

    iget-boolean v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    #calls: Lcom/htc/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v2, v3, v4}, Lcom/htc/widget/FastScroller;->access$1500(Lcom/htc/widget/FastScroller;IZ)V

    .line 1256
    return-void

    .line 1250
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2, v4}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v1

    .line 1251
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/Gallery;

    invoke-virtual {v2, v1}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 1252
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0
.end method

.method private startCommon()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1190
    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1191
    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mOffset:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 1192
    .local v0, dataArea:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    .line 1193
    .local v2, totalItemCount:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemWidth:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v1

    .line 1194
    .local v1, itemWidth:I
    mul-int v3, v2, v1

    sub-int/2addr v3, v0

    if-lez v3, :cond_0

    .line 1195
    iput-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    .line 1200
    :goto_0
    iput-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 1201
    return-void

    .line 1197
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1260
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemCount:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1261
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    .line 1304
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #setter for: Lcom/htc/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5, v7}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Z)Z

    .line 1267
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1268
    .local v2, scroller:Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1269
    .local v1, more:Z
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1273
    .local v4, x:I
    iget v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1276
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 1279
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1286
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-static {v5, v0}, Lcom/htc/widget/FastScroller;->access$512(Lcom/htc/widget/FastScroller;I)I

    .line 1287
    iget-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v5, :cond_2

    .line 1288
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 1298
    :goto_2
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1299
    iput v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingX:I

    .line 1300
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1290
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v5, v7}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v3

    .line 1291
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/Gallery;

    invoke-virtual {v5, v3}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 1292
    if-lez v0, :cond_3

    .line 1293
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v6, v0

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_2

    .line 1295
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_2

    .line 1302
    .end local v3           #v:Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public startUsingDistance(III)V
    .locals 1
    .parameter "distance"
    .parameter "end"
    .parameter "pos"

    .prologue
    .line 1205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    .line 1206
    return-void
.end method

.method public startUsingDistance(IIIZ)V
    .locals 6
    .parameter "distance"
    .parameter "end"
    .parameter "pos"
    .parameter "closeWindow"

    .prologue
    const/4 v1, 0x0

    .line 1209
    iput-boolean p4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    .line 1210
    if-nez p1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #calls: Lcom/htc/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v0, p3, p4}, Lcom/htc/widget/FastScroller;->access$1500(Lcom/htc/widget/FastScroller;IZ)V

    .line 1223
    :goto_0
    return-void

    .line 1215
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startCommon()V

    .line 1217
    iput v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingX:I

    .line 1218
    iput p2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionX:I

    .line 1219
    iput p3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mPos:I

    .line 1220
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1221
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 1228
    if-eqz p1, :cond_0

    .line 1229
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    .line 1231
    :cond_0
    return-void
.end method
