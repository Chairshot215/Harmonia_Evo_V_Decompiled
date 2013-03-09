.class final Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;
.super Ljava/lang/Object;
.source "ThumbView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/video/trimer/view/ThumbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenarateRunnable"
.end annotation


# instance fields
.field private mIndex:I

.field mPosition:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/muvee/video/trimer/view/ThumbView;


# direct methods
.method private constructor <init>(Lcom/muvee/video/trimer/view/ThumbView;ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter "index"
    .parameter "view"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    .line 68
    iput p2, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mIndex:I

    .line 69
    iput-object p3, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mView:Landroid/view/View;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/muvee/video/trimer/view/ThumbView;ILandroid/view/View;Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;-><init>(Lcom/muvee/video/trimer/view/ThumbView;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x5

    const/4 v12, 0x0

    const/16 v11, 0x28

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 75
    .local v4, time:J
    const-string v6, "Video-Trim"

    const-string v7, "::run:start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/ThumbView;->access$0(Lcom/muvee/video/trimer/view/ThumbView;)[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v6

    if-nez v6, :cond_3

    .line 157
    :cond_1
    :goto_0
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-ge v6, v13, :cond_13

    .line 158
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    .line 166
    :goto_1
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-le v6, v11, :cond_16

    .line 167
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #setter for: Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;
    invoke-static {v6, v12}, Lcom/muvee/video/trimer/view/ThumbView;->access$3(Lcom/muvee/video/trimer/view/ThumbView;Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;)V

    .line 172
    :cond_2
    :goto_2
    return-void

    .line 82
    :cond_3
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    div-int/lit8 v7, v6, 0x2

    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    mul-int v3, v7, v6

    .line 83
    .local v3, position:I
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mIndex:I

    add-int/2addr v6, v3

    if-ltz v6, :cond_f

    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mIndex:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    invoke-static {v7}, Lcom/muvee/video/trimer/view/ThumbView;->access$0(Lcom/muvee/video/trimer/view/ThumbView;)[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_f

    .line 84
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/ThumbView;->access$0(Lcom/muvee/video/trimer/view/ThumbView;)[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v6

    iget v7, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mIndex:I

    add-int/2addr v7, v3

    aget-object v2, v6, v7

    .line 86
    .local v2, mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    invoke-virtual {v2}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v6

    if-nez v6, :cond_b

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/ThumbView;->access$0(Lcom/muvee/video/trimer/view/ThumbView;)[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v6

    array-length v6, v6

    if-lt v0, v6, :cond_5

    .line 99
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lcom/muvee/video/trimer/view/ThumbView;->generateThumb(ILcom/muvee/video/trimer/MediaDetail;)I

    move-result v1

    .line 100
    .local v1, mResult:I
    if-eqz v1, :cond_7

    .line 101
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/ThumbView;->removeRunnable()V

    .line 102
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mOnErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/ThumbView;->access$2(Lcom/muvee/video/trimer/view/ThumbView;)Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 103
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mOnErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/ThumbView;->access$2(Lcom/muvee/video/trimer/view/ThumbView;)Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;->onError(I)V

    goto :goto_2

    .line 82
    .end local v0           #i:I
    .end local v1           #mResult:I
    .end local v2           #mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    .end local v3           #position:I
    :cond_4
    const/4 v6, -0x1

    goto :goto_3

    .line 90
    .restart local v0       #i:I
    .restart local v2       #mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    .restart local v3       #position:I
    :cond_5
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I
    invoke-static {v6}, Lcom/muvee/video/trimer/view/ThumbView;->access$1(Lcom/muvee/video/trimer/view/ThumbView;)I

    move-result v6

    sub-int v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v11, :cond_6

    .line 95
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/ThumbView;->access$0(Lcom/muvee/video/trimer/view/ThumbView;)[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6, v12}, Lcom/muvee/video/trimer/MediaDetail;->setBitmap([B)V

    .line 89
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 109
    .restart local v1       #mResult:I
    :cond_7
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mIndex:I

    add-int/2addr v6, v3

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mIndex:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #getter for: Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    invoke-static {v7}, Lcom/muvee/video/trimer/view/ThumbView;->access$0(Lcom/muvee/video/trimer/view/ThumbView;)[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_9

    .line 110
    :cond_8
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/ThumbView;->invalidate()V

    .line 113
    :cond_9
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/ThumbView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 114
    iget-object v6, v2, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    if-eqz v6, :cond_a

    .line 115
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    iget-object v7, v2, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, v2, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, v2, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    iget-object v10, v2, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/muvee/video/trimer/view/ThumbView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 117
    :cond_a
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/ThumbView;->invalidate()V

    goto/16 :goto_0

    .line 124
    .end local v0           #i:I
    .end local v1           #mResult:I
    :cond_b
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-ge v6, v13, :cond_c

    .line 125
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    .line 134
    :goto_5
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-le v6, v11, :cond_0

    .line 135
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #setter for: Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;
    invoke-static {v6, v12}, Lcom/muvee/video/trimer/view/ThumbView;->access$3(Lcom/muvee/video/trimer/view/ThumbView;Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;)V

    goto/16 :goto_2

    .line 126
    :cond_c
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-ge v6, v14, :cond_d

    .line 127
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x5

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto :goto_5

    .line 128
    :cond_d
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    rem-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_e

    .line 129
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto :goto_5

    .line 131
    :cond_e
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto :goto_5

    .line 141
    .end local v2           #mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    :cond_f
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-ge v6, v13, :cond_10

    .line 142
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    .line 150
    :goto_6
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-le v6, v11, :cond_0

    .line 151
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->this$0:Lcom/muvee/video/trimer/view/ThumbView;

    #setter for: Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;
    invoke-static {v6, v12}, Lcom/muvee/video/trimer/view/ThumbView;->access$3(Lcom/muvee/video/trimer/view/ThumbView;Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;)V

    goto/16 :goto_2

    .line 143
    :cond_10
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-ge v6, v14, :cond_11

    .line 144
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x5

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto :goto_6

    .line 145
    :cond_11
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    rem-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_12

    .line 146
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto :goto_6

    .line 148
    :cond_12
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto :goto_6

    .line 159
    .end local v3           #position:I
    :cond_13
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    if-ge v6, v14, :cond_14

    .line 160
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x5

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto/16 :goto_1

    .line 161
    :cond_14
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    rem-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_15

    .line 162
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto/16 :goto_1

    .line 164
    :cond_15
    iget v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mPosition:I

    goto/16 :goto_1

    .line 170
    :cond_16
    iget-object v6, p0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;->mView:Landroid/view/View;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, p0, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    const-string v6, "Video-Trim"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "::run:end="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
