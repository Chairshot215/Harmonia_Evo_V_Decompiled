.class public Lcom/htc/android/htcime/ezsip/common/CompressedTextView;
.super Landroid/widget/TextView;
.source "CompressedTextView.java"


# static fields
.field private static final DOTS:Ljava/lang/String; = "..."

.field private static final DOTS_LENGTH:I

.field private static final localLOGV:Z


# instance fields
.field private mCutCharCount:I

.field private mHeadPart:Ljava/lang/String;

.field private mHeadPartLength:I

.field private mInputWord:Ljava/lang/CharSequence;

.field private mMaximunWidth:I

.field private mTailPart:Ljava/lang/String;

.field private mWord:Ljava/lang/String;

.field private textCompressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "..."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->DOTS_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->textCompressed:Z

    .line 160
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    .line 165
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->textCompressed:Z

    .line 160
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    .line 165
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->textCompressed:Z

    .line 160
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    .line 165
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    .line 44
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mInputWord:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isTextCompressed()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->textCompressed:Z

    return v0
.end method

.method public measure()V
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 58
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getMeasuredHeight()I

    move-result v0

    .line 59
    .local v0, mHeight:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mPaddingRight:I

    add-int v1, v3, v4

    .line 60
    .local v1, mWidth:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getSuggestedMinimumWidth()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 62
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method public setHeadPartLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 147
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    .line 148
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->textCompressed:Z

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mInputWord:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->measure()V

    .line 74
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getMeasuredWidth()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 75
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->textCompressed:Z

    .line 76
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPart:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPart:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->measure()V

    .line 85
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getMeasuredWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 88
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 89
    .local v0, mWordLength:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getMeasuredWidth()I

    move-result v1

    .line 90
    .local v1, mWordWidth:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    sub-int v2, v1, v2

    mul-int/2addr v2, v0

    div-int/2addr v2, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    .line 92
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    sget v4, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->DOTS_LENGTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->measure()V

    goto :goto_0

    .line 106
    .end local v0           #mWordLength:I
    .end local v1           #mWordWidth:I
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    .line 108
    :goto_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 109
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    .line 110
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mInputWord:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    sget v4, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->DOTS_LENGTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->measure()V

    goto :goto_1

    .line 118
    :cond_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    .line 119
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mInputWord:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPartLength:I

    sget v4, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->DOTS_LENGTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mCutCharCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mHeadPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mTailPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->measure()V

    .line 124
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->textCompressed:Z

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mWord:Ljava/lang/String;

    invoke-super {p0, v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 128
    :goto_2
    return-void

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mInputWord:Ljava/lang/CharSequence;

    invoke-super {p0, v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_2
.end method

.method public setWidthConstrain(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 139
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->mMaximunWidth:I

    .line 140
    return-void
.end method
