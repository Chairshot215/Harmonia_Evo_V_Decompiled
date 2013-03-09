.class Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;
.super Lcom/google/android/gm/LabelDisplayer;
.source "CanvasConversationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/CanvasConversationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConversationHeaderLabelDisplayer"
.end annotation


# instance fields
.field private mHasMoreLabels:Z

.field private mLabelsCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/gm/LabelDisplayer;-><init>()V

    return-void
.end method

.method private measureLabels(I)I
    .locals 9
    .parameter "mode"

    .prologue
    .line 175
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLabelsWidth(Landroid/content/Context;I)I

    move-result v0

    .line 176
    .local v0, availableSpace:I
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    invoke-static {v7, p1, v8}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLabelCellWidth(Landroid/content/Context;II)I

    move-result v1

    .line 179
    .local v1, cellSize:I
    const/4 v5, 0x0

    .line 180
    .local v5, totalWidth:I
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/LabelDisplayer$LabelValues;

    .line 181
    .local v4, labelValues:Lcom/google/android/gm/LabelDisplayer$LabelValues;
    iget-object v3, v4, Lcom/google/android/gm/LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    .line 182
    .local v3, labelString:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    add-int v6, v7, v1

    .line 183
    .local v6, width:I
    rem-int v7, v6, v1

    if-eqz v7, :cond_1

    .line 184
    rem-int v7, v6, v1

    sub-int v7, v1, v7

    add-int/2addr v6, v7

    .line 186
    :cond_1
    add-int/2addr v5, v6

    .line 187
    if-le v5, v0, :cond_0

    .line 192
    .end local v3           #labelString:Ljava/lang/String;
    .end local v4           #labelValues:Lcom/google/android/gm/LabelDisplayer$LabelValues;
    .end local v6           #width:I
    :cond_2
    return v5
.end method


# virtual methods
.method public drawLabels(Landroid/graphics/Canvas;Lcom/google/android/gm/ConversationHeaderViewCoordinates;II)V
    .locals 30
    .parameter "canvas"
    .parameter "coordinates"
    .parameter "labelsXEnd"
    .parameter "mode"

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    if-nez v4, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move/from16 v27, p3

    .line 202
    .local v27, xEnd:I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsY:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsAscent:I

    sub-int v29, v4, v5

    .line 203
    .local v29, y:I
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$100()I

    move-result v15

    .line 204
    .local v15, height:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsTopPadding:I

    move/from16 v24, v0

    .line 205
    .local v24, topPadding:I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsAscent:I

    .line 206
    .local v11, ascent:I
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsFontSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mContext:Landroid/content/Context;

    move/from16 v0, p4

    invoke-static {v4, v0}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLabelsWidth(Landroid/content/Context;I)I

    move-result v12

    .line 210
    .local v12, availableSpace:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    div-int v13, v12, v4

    .line 211
    .local v13, averageWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    move/from16 v0, p4

    invoke-static {v4, v0, v5}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLabelCellWidth(Landroid/content/Context;II)I

    move-result v14

    .line 215
    .local v14, cellSize:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->measureLabels(I)I

    move-result v25

    .line 216
    .local v25, totalWidth:I
    move/from16 v0, v25

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v28, v27, v4

    .line 219
    .local v28, xStart:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/gm/LabelDisplayer$LabelValues;

    .line 220
    .local v20, labelValues:Lcom/google/android/gm/LabelDisplayer$LabelValues;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 221
    .local v18, labelString:Ljava/lang/String;
    move/from16 v26, v14

    .line 222
    .local v26, width:I
    const/16 v19, 0x0

    .line 223
    .local v19, labelTooLong:Z
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    add-int v26, v4, v14

    .line 224
    rem-int v4, v26, v14

    if-eqz v4, :cond_3

    .line 225
    rem-int v4, v26, v14

    sub-int v4, v14, v4

    add-int v26, v26, v4

    .line 227
    :cond_3
    move/from16 v0, v25

    if-le v0, v12, :cond_4

    move/from16 v0, v26

    if-le v0, v13, :cond_4

    .line 228
    move/from16 v26, v13

    .line 229
    const/16 v19, 0x1

    .line 232
    :cond_4
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->labelId:J

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$200()Lcom/google/android/gm/provider/Gmail;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mAccount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gm/provider/Gmail;->getLabelMap(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdIgnored()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    const/16 v17, 0x1

    .line 236
    .local v17, isMuted:Z
    :goto_1
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->backgroundColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 237
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v5

    if-eqz v17, :cond_6

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_2
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 238
    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsY:I

    int-to-float v5, v5

    add-int v6, v28, v26

    int-to-float v6, v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsY:I

    add-int/2addr v7, v15

    int-to-float v7, v7

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->textColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 243
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move/from16 v0, v26

    #calls: Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I
    invoke-static {v0, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300(II)I

    move-result v22

    .line 244
    .local v22, padding:I
    if-eqz v19, :cond_7

    .line 245
    new-instance v21, Landroid/text/TextPaint;

    invoke-direct/range {v21 .. v21}, Landroid/text/TextPaint;-><init>()V

    .line 246
    .local v21, labelsPaint:Landroid/text/TextPaint;
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->textColor:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 247
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsFontSize:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 248
    div-int/lit8 v22, v14, 0x2

    .line 249
    add-int v4, v28, v26

    sub-int v23, v4, v22

    .line 250
    .local v23, rightBorder:I
    new-instance v3, Landroid/graphics/LinearGradient;

    sub-int v4, v23, v22

    int-to-float v4, v4

    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v7, v0

    move-object/from16 v0, v20

    iget v8, v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->textColor:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->textColor:I

    invoke-static {v9}, Lcom/google/android/gm/utils/LabelColorUtils;->getTransparentColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 254
    .local v3, shader:Landroid/graphics/Shader;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 255
    add-int v4, v28, v22

    int-to-float v4, v4

    add-int v5, v29, v24

    int-to-float v5, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    .end local v3           #shader:Landroid/graphics/Shader;
    .end local v21           #labelsPaint:Landroid/text/TextPaint;
    .end local v23           #rightBorder:I
    :goto_3
    sub-int v12, v12, v26

    .line 261
    add-int v28, v28, v26

    .line 262
    if-gtz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mHasMoreLabels:Z

    if-eqz v4, :cond_2

    .line 263
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$400()Landroid/graphics/Bitmap;

    move-result-object v4

    move/from16 v0, v27

    int-to-float v5, v0

    add-int v6, v29, v11

    int-to-float v6, v6

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 232
    .end local v17           #isMuted:Z
    .end local v22           #padding:I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 237
    .restart local v17       #isMuted:Z
    :cond_6
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_2

    .line 257
    .restart local v22       #padding:I
    :cond_7
    add-int v4, v28, v22

    int-to-float v4, v4

    add-int v5, v29, v24

    int-to-float v5, v5

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$000()Landroid/text/TextPaint;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public hasVisibleLabels()Z
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadConversationLabels(Ljava/util/Map;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v1, 0x4

    .line 163
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/LabelDisplayer;->loadConversationLabels(Ljava/util/Map;Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    .line 166
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mHasMoreLabels:Z

    .line 167
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelsCount:I

    .line 168
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
