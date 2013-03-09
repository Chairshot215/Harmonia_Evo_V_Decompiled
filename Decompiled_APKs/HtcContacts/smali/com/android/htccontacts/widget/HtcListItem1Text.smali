.class public Lcom/android/htccontacts/widget/HtcListItem1Text;
.super Lcom/htc/widget/HtcListItem1LineCenteredText;
.source "HtcListItem1Text.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/widget/HtcListItem1Text;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, mTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem1Text;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 28
    .local v2, top:I
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem1Text;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 29
    .local v1, right:I
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/widget/HtcListItem1Text;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 30
    return-void
.end method
