.class Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "HtcMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateSeekerTouchDelegate"
.end annotation


# instance fields
.field private anchor:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/video/HtcMediaController;


# direct methods
.method public constructor <init>(Lcom/htc/video/HtcMediaController;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter "v"

    .prologue
    .line 1945
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;->this$0:Lcom/htc/video/HtcMediaController;

    .line 1946
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/view/View;

    iget-object v2, p1, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1947
    iput-object p2, p0, Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;->anchor:Landroid/view/View;

    .line 1948
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 1950
    iget-object v8, p0, Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v8}, Lcom/htc/video/HtcMediaController;->access$1400(Lcom/htc/video/HtcMediaController;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v5

    .line 1951
    .local v5, seeker:Lcom/htc/widget/HtcSeekBar;
    iget-object v6, p0, Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;->anchor:Landroid/view/View;

    .line 1953
    .local v6, top:Landroid/view/View;
    const/4 v2, 0x0

    .line 1954
    .local v2, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v7, v8

    .line 1957
    .local v7, x:I
    const/4 v0, 0x0

    .line 1958
    .local v0, absoulteX:I
    :try_start_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1959
    .local v4, r:Landroid/graphics/Rect;
    move-object v3, v5

    .line 1960
    .local v3, parent:Landroid/view/View;
    :goto_0
    if-eq v3, v6, :cond_0

    .line 1961
    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1962
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v8

    .line 1963
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3           #parent:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3       #parent:Landroid/view/View;
    goto :goto_0

    .line 1966
    :cond_0
    if-gt v0, v7, :cond_1

    invoke-virtual {v5}, Lcom/htc/widget/HtcSeekBar;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    if-gt v7, v8, :cond_1

    .line 1967
    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1974
    .end local v3           #parent:Landroid/view/View;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    return v2

    .line 1970
    :catch_0
    move-exception v1

    .line 1971
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/video/HtcMediaController;->access$400()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
