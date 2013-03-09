.class Lcom/htc/widget/HtcReorderListView$WaveRunnable;
.super Ljava/lang/Object;
.source "HtcReorderListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaveRunnable"
.end annotation


# instance fields
.field mDistance:I

.field mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

.field mDuration:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcReorderListView$MovingItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/HtcReorderListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcReorderListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDuration:I

    .line 1119
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I
    invoke-static {v0}, Lcom/htc/widget/HtcReorderListView;->access$000(Lcom/htc/widget/HtcReorderListView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDistance:I

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    .line 1126
    return-void
.end method


# virtual methods
.method public endWave()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    .line 1131
    return-void
.end method

.method public run()V
    .locals 17

    .prologue
    .line 1134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    iget v13, v13, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-nez v13, :cond_1

    .line 1135
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1237
    :goto_0
    return-void

    .line 1141
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1142
    .local v1, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v1, :cond_7

    .line 1144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcReorderListView$MovingItem;

    .line 1146
    .local v8, mi:Lcom/htc/widget/HtcReorderListView$MovingItem;
    iget-wide v13, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->startTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gez v13, :cond_2

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iput-wide v13, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->startTime:J

    .line 1150
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1151
    .local v9, now:J
    iget v12, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->shrinkIndex:I

    .line 1152
    .local v12, shrink:I
    iget v6, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->expandIndex:I

    .line 1153
    .local v6, expand:I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    add-int/lit8 v12, v12, 0x1

    .line 1154
    :cond_3
    const/4 v13, -0x1

    if-ne v6, v13, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 1156
    :cond_4
    iget-wide v13, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->startTime:J

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDuration:I

    int-to-long v15, v15

    add-long/2addr v13, v15

    cmp-long v13, v9, v13

    if-lez v13, :cond_5

    .line 1158
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDistance:I

    iget v14, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->current:I

    sub-int v2, v13, v14

    .line 1159
    .local v2, delta:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    iget v14, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->expandIndex:I

    iget v15, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->shrinkIndex:I

    invoke-virtual {v13, v14, v15, v2}, Lcom/htc/widget/HtcReorderListView;->moveItems(III)V

    .line 1160
    const/4 v8, 0x0

    .line 1161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1162
    add-int/lit8 v7, v7, -0x1

    .line 1163
    add-int/lit8 v1, v1, -0x1

    .line 1142
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1167
    .end local v2           #delta:I
    :cond_5
    iget-wide v13, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->startTime:J

    sub-long v13, v9, v13

    long-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDuration:I

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 1169
    .local v11, progress:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v13, :cond_6

    .line 1170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1174
    .local v4, dst:F
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDistance:I

    int-to-float v13, v13

    mul-float/2addr v13, v4

    iget v14, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->current:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v2, v13

    .line 1175
    .restart local v2       #delta:I
    iget v13, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->current:I

    add-int/2addr v13, v2

    iput v13, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->current:I

    .line 1183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    iget v14, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->expandIndex:I

    iget v15, v8, Lcom/htc/widget/HtcReorderListView$MovingItem;->shrinkIndex:I

    invoke-virtual {v13, v14, v15, v2}, Lcom/htc/widget/HtcReorderListView;->moveItems(III)V

    goto :goto_2

    .line 1172
    .end local v2           #delta:I
    .end local v4           #dst:F
    :cond_6
    move v4, v11

    .restart local v4       #dst:F
    goto :goto_3

    .line 1186
    .end local v4           #dst:F
    .end local v6           #expand:I
    .end local v8           #mi:Lcom/htc/widget/HtcReorderListView$MovingItem;
    .end local v9           #now:J
    .end local v11           #progress:F
    .end local v12           #shrink:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    .line 1187
    .local v3, dmw:Lcom/htc/widget/HtcReorderListView$DragWindowMove;
    if-eqz v3, :cond_9

    .line 1188
    iget-wide v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->startTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gez v13, :cond_8

    .line 1189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iput-wide v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->startTime:J

    .line 1192
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1193
    .restart local v9       #now:J
    iget-wide v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->startTime:J

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDuration:I

    int-to-long v15, v15

    add-long/2addr v13, v15

    cmp-long v13, v9, v13

    if-lez v13, :cond_a

    .line 1195
    iget v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->distance:I

    iget v14, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->current:I

    sub-int v2, v13, v14

    .line 1197
    .restart local v2       #delta:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #calls: Lcom/htc/widget/HtcReorderListView;->moveDragView(I)V
    invoke-static {v13, v2}, Lcom/htc/widget/HtcReorderListView;->access$100(Lcom/htc/widget/HtcReorderListView;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    .line 1202
    const-string v13, "HtcReorderListView"

    const-string v14, "WaveRunnable drag view time up forceDrop()"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #calls: Lcom/htc/widget/HtcReorderListView;->forceDrop()V
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$200(Lcom/htc/widget/HtcReorderListView;)V

    .line 1236
    .end local v2           #delta:I
    .end local v9           #now:J
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1198
    .restart local v2       #delta:I
    .restart local v9       #now:J
    :catch_0
    move-exception v5

    .line 1199
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "HtcReorderListView"

    const-string v14, "Animation dropped! Can\'t find moving view."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1205
    .end local v2           #delta:I
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :cond_a
    iget-wide v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->startTime:J

    sub-long v13, v9, v13

    long-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDuration:I

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 1207
    .restart local v11       #progress:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v13, :cond_d

    .line 1208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1212
    .restart local v4       #dst:F
    :goto_6
    iget v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->distance:I

    int-to-float v13, v13

    mul-float/2addr v13, v4

    iget v14, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->current:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v2, v13

    .line 1213
    .restart local v2       #delta:I
    iget v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->current:I

    add-int/2addr v13, v2

    iput v13, v3, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->current:I

    .line 1215
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #calls: Lcom/htc/widget/HtcReorderListView;->moveDragView(I)V
    invoke-static {v13, v2}, Lcom/htc/widget/HtcReorderListView;->access$100(Lcom/htc/widget/HtcReorderListView;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1216
    :catch_1
    move-exception v5

    .line 1220
    .restart local v5       #e:Ljava/lang/IllegalArgumentException;
    const-string v13, "HtcReorderListView"

    const-string v14, "Animation dropped! Can\'t find moving view."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$300(Lcom/htc/widget/HtcReorderListView;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$400(Lcom/htc/widget/HtcReorderListView;)Landroid/widget/ImageView;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 1222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$500(Lcom/htc/widget/HtcReorderListView;)Landroid/view/WindowManager;

    move-result-object v13

    if-nez v13, :cond_b

    .line 1223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$600(Lcom/htc/widget/HtcReorderListView;)Landroid/content/Context;

    move-result-object v13

    const-string v15, "window"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    #setter for: Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v14, v13}, Lcom/htc/widget/HtcReorderListView;->access$502(Lcom/htc/widget/HtcReorderListView;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 1225
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$400(Lcom/htc/widget/HtcReorderListView;)Landroid/widget/ImageView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    const/4 v14, 0x0

    #setter for: Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;
    invoke-static {v13, v14}, Lcom/htc/widget/HtcReorderListView;->access$402(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1228
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$700(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 1229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/htc/widget/HtcReorderListView;->access$700(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->this$0:Lcom/htc/widget/HtcReorderListView;

    const/4 v14, 0x0

    #setter for: Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/htc/widget/HtcReorderListView;->access$702(Lcom/htc/widget/HtcReorderListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .line 1210
    .end local v2           #delta:I
    .end local v4           #dst:F
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :cond_d
    move v4, v11

    .restart local v4       #dst:F
    goto/16 :goto_6
.end method
