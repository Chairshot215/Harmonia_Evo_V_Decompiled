.class Landroid/webkit/WebTextView$WebTextViewLayout;
.super Landroid/text/DynamicLayout;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebTextViewLayout"
.end annotation


# instance fields
.field private mDifference:F

.field private mLineHeight:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IF)V
    .locals 3

    invoke-direct/range {p0 .. p10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    invoke-virtual {p3}, Landroid/text/TextPaint;->descent()F

    move-result v1

    invoke-virtual {p3}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v0, v1, v2

    const/high16 v1, -0x4080

    cmpl-float v1, p11, v1

    if-nez v1, :cond_0

    iput v0, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mLineHeight:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mDifference:F

    :goto_0
    return-void

    :cond_0
    iput p11, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mLineHeight:F

    sub-float v1, p11, v0

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mDifference:F

    goto :goto_0
.end method


# virtual methods
.method public getLineTop(I)I
    .locals 2

    iget v0, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mLineHeight:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mDifference:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
