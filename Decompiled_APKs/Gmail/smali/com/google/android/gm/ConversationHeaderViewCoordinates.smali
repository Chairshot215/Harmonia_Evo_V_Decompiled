.class public Lcom/google/android/gm/ConversationHeaderViewCoordinates;
.super Ljava/lang/Object;
.source "ConversationHeaderViewCoordinates.java"


# static fields
.field private static LABEL_CELL_WIDTH:I

.field private static TOTAL_LABEL_WIDTH:I

.field private static TOTAL_LABEL_WIDTH_WIDE:I

.field private static mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/ConversationHeaderViewCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private static sConversationHeights:[I

.field private static sPaint:Landroid/text/TextPaint;


# instance fields
.field checkmarkX:I

.field checkmarkY:I

.field dateAscent:I

.field dateFontSize:I

.field dateXEnd:I

.field dateY:I

.field labelsAscent:I

.field labelsFontSize:I

.field labelsHeight:I

.field labelsTopPadding:I

.field labelsXEnd:I

.field labelsY:I

.field paperclipY:I

.field personalLevelX:I

.field personalLevelY:I

.field sendersAscent:I

.field sendersFontSize:I

.field sendersLineCount:I

.field sendersLineHeight:I

.field sendersWidth:I

.field sendersX:I

.field sendersY:I

.field starX:I

.field starY:I

.field subjectAscent:I

.field subjectFontSize:I

.field subjectLineCount:I

.field subjectWidth:I

.field subjectX:I

.field subjectY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 30
    sput v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->TOTAL_LABEL_WIDTH:I

    .line 31
    sput v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->TOTAL_LABEL_WIDTH_WIDE:I

    .line 32
    sput v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->LABEL_CELL_WIDTH:I

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->mCache:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    .line 88
    sget-object v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayLabelsAboveDate(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 339
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static displaySendersInline(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 253
    packed-switch p0, :pswitch_data_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown conversation header view mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static forWidth(Landroid/content/Context;III)Lcom/google/android/gm/ConversationHeaderViewCoordinates;
    .locals 18
    .parameter "context"
    .parameter "width"
    .parameter "mode"
    .parameter "standardScaledDimen"

    .prologue
    .line 269
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->mCache:Landroid/util/SparseArray;

    xor-int v16, p1, p3

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    .line 270
    .local v3, coordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;
    if-nez v3, :cond_1

    .line 271
    new-instance v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    .end local v3           #coordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;
    invoke-direct {v3}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;-><init>()V

    .line 272
    .restart local v3       #coordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->mCache:Landroid/util/SparseArray;

    xor-int v16, p1, p3

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getHeight(Landroid/content/Context;I)I

    move-result v5

    .line 276
    .local v5, height:I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLayoutId(I)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 277
    .local v13, view:Landroid/view/View;
    const/high16 v15, 0x4000

    move/from16 v0, p1

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 278
    .local v14, widthSpec:I
    const/high16 v15, 0x4000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 279
    .local v6, heightSpec:I
    invoke-virtual {v13, v14, v6}, Landroid/view/View;->measure(II)V

    .line 280
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v13, v15, v0, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 283
    const v15, 0x7f0f0041

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, checkmark:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getX(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->checkmarkX:I

    .line 285
    invoke-static {v2}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->checkmarkY:I

    .line 287
    const v15, 0x7f0f0042

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 288
    .local v11, star:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getX(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starX:I

    .line 289
    invoke-static {v11}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starY:I

    .line 291
    const v15, 0x7f0f003c

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 292
    .local v9, personalLevel:Landroid/view/View;
    invoke-static {v9}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getX(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->personalLevelX:I

    .line 293
    invoke-static {v9}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->personalLevelY:I

    .line 295
    const v15, 0x7f0f003d

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 296
    .local v10, senders:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getX(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersX:I

    .line 297
    invoke-static {v10}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersY:I

    .line 298
    invoke-virtual {v10}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersWidth:I

    .line 299
    invoke-static {v10}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersLineCount:I

    .line 300
    invoke-virtual {v10}, Landroid/widget/TextView;->getLineHeight()I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersLineHeight:I

    .line 301
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersFontSize:I

    .line 302
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    iget v0, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersFontSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 303
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersAscent:I

    .line 305
    const v15, 0x7f0f0031

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 306
    .local v12, subject:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getX(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectX:I

    .line 307
    invoke-static {v12}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectY:I

    .line 308
    invoke-virtual {v12}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectWidth:I

    .line 309
    invoke-static {v12}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectLineCount:I

    .line 310
    invoke-virtual {v12}, Landroid/widget/TextView;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectFontSize:I

    .line 311
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    iget v0, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectFontSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 312
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectAscent:I

    .line 314
    const v15, 0x7f0f003e

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 315
    .local v7, labels:Landroid/view/View;
    invoke-static {v7}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getX(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsXEnd:I

    .line 316
    invoke-static {v7}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsY:I

    .line 317
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsHeight:I

    .line 318
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsTopPadding:I

    .line 319
    instance-of v15, v7, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 320
    check-cast v7, Landroid/widget/TextView;

    .end local v7           #labels:Landroid/view/View;
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsFontSize:I

    .line 321
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    iget v0, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsFontSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 322
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsAscent:I

    .line 325
    :cond_0
    const v15, 0x7f0f0040

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 326
    .local v4, date:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getX(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateXEnd:I

    .line 327
    invoke-static {v4}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateY:I

    .line 328
    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateFontSize:I

    .line 329
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    iget v0, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateFontSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 330
    sget-object v15, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateAscent:I

    .line 332
    const v15, 0x7f0f003f

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 333
    .local v8, paperclip:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getY(Landroid/view/View;)I

    move-result v15

    iput v15, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->paperclipY:I

    .line 335
    .end local v2           #checkmark:Landroid/view/View;
    .end local v4           #date:Landroid/widget/TextView;
    .end local v5           #height:I
    .end local v6           #heightSpec:I
    .end local v8           #paperclip:Landroid/view/View;
    .end local v9           #personalLevel:Landroid/view/View;
    .end local v10           #senders:Landroid/widget/TextView;
    .end local v11           #star:Landroid/view/View;
    .end local v12           #subject:Landroid/widget/TextView;
    .end local v13           #view:Landroid/view/View;
    .end local v14           #widthSpec:I
    :cond_1
    return-object v3
.end method

.method public static getDensityDependentArray([IF)[I
    .locals 3
    .parameter "values"
    .parameter "density"

    .prologue
    .line 130
    array-length v2, p0

    new-array v1, v2, [I

    .line 131
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 132
    aget v2, p0, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-object v1
.end method

.method public static getHeight(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 142
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 143
    .local v0, density:F
    sget-object v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sConversationHeights:[I

    if-nez v2, :cond_0

    .line 144
    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getDensityDependentArray([IF)[I

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sConversationHeights:[I

    .line 147
    :cond_0
    sget-object v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sConversationHeights:[I

    aget v2, v2, p1

    return v2
.end method

.method public static getLabelCellWidth(Landroid/content/Context;II)I
    .locals 4
    .parameter "context"
    .parameter "mode"
    .parameter "labelsCount"

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 240
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->LABEL_CELL_WIDTH:I

    if-gtz v1, :cond_0

    .line 241
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->LABEL_CELL_WIDTH:I

    .line 243
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown conversation header view mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :pswitch_0
    sget v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->LABEL_CELL_WIDTH:I

    return v1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLabelsWidth(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 221
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->TOTAL_LABEL_WIDTH:I

    if-gtz v1, :cond_0

    .line 222
    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->TOTAL_LABEL_WIDTH:I

    .line 223
    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->TOTAL_LABEL_WIDTH_WIDE:I

    .line 225
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown conversation header view mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :pswitch_0
    sget v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->TOTAL_LABEL_WIDTH_WIDE:I

    .line 229
    :goto_0
    return v1

    :pswitch_1
    sget v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->TOTAL_LABEL_WIDTH:I

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getLayoutId(I)I
    .locals 3
    .parameter "mode"

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown conversation header view mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    const v0, 0x7f040014

    .line 120
    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f040013

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getLineCount(Landroid/widget/TextView;)I
    .locals 2
    .parameter "textView"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getMode(Landroid/content/Context;Lcom/google/android/gm/ViewMode;Z)I
    .locals 2
    .parameter "context"
    .parameter "viewMode"
    .parameter "isSearch"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 105
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 107
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getSubjectLength(Landroid/content/Context;IZZ)I
    .locals 2
    .parameter "context"
    .parameter "mode"
    .parameter "hasVisibleLabels"
    .parameter "hasAttachments"

    .prologue
    .line 198
    if-eqz p2, :cond_1

    .line 199
    if-eqz p3, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, p1

    .line 211
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, p1

    goto :goto_0

    .line 207
    :cond_1
    if-eqz p3, :cond_2

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, p1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, p1

    goto :goto_0
.end method

.method private static getX(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, x:I
    :goto_0
    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 168
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object p0, v0

    .line 169
    :goto_1
    goto :goto_0

    .line 168
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 170
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_1
    return v1
.end method

.method private static getY(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, y:I
    :goto_0
    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 181
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object p0, v0

    .line 182
    :goto_1
    goto :goto_0

    .line 181
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 183
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_1
    return v1
.end method

.method public static refreshConversationHeights(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 155
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 156
    .local v0, density:F
    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getDensityDependentArray([IF)[I

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sConversationHeights:[I

    .line 158
    return-void
.end method

.method public static showAttachmentBackground(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 96
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
