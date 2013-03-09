.class public Lcom/htc/util/phone/KeypadUtils$UI;
.super Ljava/lang/Object;
.source "KeypadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/phone/KeypadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UI"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustAccumulatorFontSize(Landroid/widget/TextView;[I[I)V
    .locals 5

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    array-length v4, p1

    add-int/lit8 v2, v4, -0x1

    const/4 v4, 0x0

    aget v1, p2, v4

    move v3, v2

    :goto_1
    if-lez v3, :cond_1

    aget v4, p1, v3

    if-gt v0, v4, :cond_2

    aget v1, p2, v3

    :cond_1
    int-to-float v4, v1

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method
