.class public Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
.super Ljava/lang/Object;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CandidateMetaData"
.end annotation


# instance fields
.field areaWidth:I

.field candidateStr:Ljava/lang/String;

.field hasScaleX:Ljava/lang/Boolean;

.field hasUnderLine:Ljava/lang/Boolean;

.field scaleRatio:F

.field subStrLeft:Ljava/lang/String;

.field subStrLeftWidth:F

.field subStrRight:Ljava/lang/String;

.field textCompressed:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/htc/android/htcime/ui/CandidateView;

.field visible:Ljava/lang/Boolean;

.field wordWidth:F


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ui/CandidateView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "candStr"

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasUnderLine:Ljava/lang/Boolean;

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->textCompressed:Ljava/lang/Boolean;

    .line 177
    iput-object p2, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    .line 178
    return-void
.end method

.method private doTextCompress(F)V
    .locals 10
    .parameter "maxWordWidth"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 225
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->textCompressed:Ljava/lang/Boolean;

    .line 227
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasUnderLine:Ljava/lang/Boolean;

    .line 228
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    iget-object v3, v6, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 229
    .local v3, paint:Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    .line 232
    const-string v6, "..."

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 233
    .local v2, dotsWidth:F
    iget v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    add-float/2addr v6, v2

    sub-float v5, v6, p1

    .line 234
    .local v5, targetEliminationWidth:F
    iget v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 236
    .local v0, averageCharWidth:F
    div-float v6, v5, v0

    float-to-int v4, v6

    .line 238
    .local v4, roughCutNumber:I
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    if-le v4, v6, :cond_0

    .line 239
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x3

    .line 241
    :cond_0
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x3

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, cutStr:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    if-ge v4, v6, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_1

    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 245
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x3

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrRight:Ljava/lang/String;

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrRight:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    .line 249
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    .line 250
    return-void
.end method


# virtual methods
.method public computeWidth(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "paint"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    .line 206
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 207
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    sget v1, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    :goto_0
    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 208
    return-void

    .line 207
    :cond_0
    sget v0, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    goto :goto_0
.end method

.method public isTextCompressed(I)Z
    .locals 5
    .parameter "maxWidth"

    .prologue
    .line 211
    add-int/lit8 v2, p1, -0x10

    int-to-float v1, v2

    .line 212
    .local v1, maxWordWidth:F
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 214
    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->doTextCompress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 219
    const/4 v2, 0x1

    .line 221
    :goto_1
    return v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTextCompress Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setScaleX(I)V
    .locals 2
    .parameter "newWidth"

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    if-lt p1, v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    .line 196
    int-to-float v0, p1

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->scaleRatio:F

    .line 197
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 198
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->scaleRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasUnderLine:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeftWidth:F

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->scaleRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeftWidth:F

    goto :goto_0
.end method

.method public setUnderLine(Ljava/lang/String;Landroid/graphics/Paint;II)V
    .locals 2
    .parameter "str"
    .parameter "paint"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 182
    if-ge p4, p3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasUnderLine:Ljava/lang/Boolean;

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    .line 186
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrRight:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeftWidth:F

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    goto :goto_0
.end method
