.class public Lcom/htc/dockmode/utils/ResetLayoutUtil;
.super Ljava/lang/Object;
.source "ResetLayoutUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ResetImageDrawable(Landroid/content/res/Resources;Landroid/view/View;II)V
    .locals 2
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, v:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    .end local v0           #v:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public static ResetImageViewHeight(Landroid/content/res/Resources;Landroid/view/View;II)V
    .locals 3
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "height"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .local v0, v:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    .end local v0           #v:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public static ResetImageViewWidthHeight(Landroid/content/res/Resources;Landroid/view/View;III)V
    .locals 3
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .local v0, v:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    .end local v0           #v:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public static ResetLinearLayoutMargin(Landroid/content/res/Resources;Landroid/view/View;IIIII)V
    .locals 7
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 210
    if-eqz p1, :cond_4

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 213
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 214
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .local v2, lpAppt:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 217
    .local v1, leftValue:I
    const/4 v4, 0x0

    .line 218
    .local v4, topValue:I
    const/4 v3, 0x0

    .line 219
    .local v3, rightValue:I
    const/4 v0, 0x0

    .line 221
    .local v0, bottomValue:I
    if-eqz p3, :cond_0

    .line 222
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 224
    :cond_0
    if-eqz p4, :cond_1

    .line 225
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 228
    :cond_1
    if-eqz p5, :cond_2

    .line 229
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 232
    :cond_2
    if-eqz p6, :cond_3

    .line 233
    invoke-virtual {p0, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 235
    :cond_3
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    .end local v0           #bottomValue:I
    .end local v1           #leftValue:I
    .end local v2           #lpAppt:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #rightValue:I
    .end local v4           #topValue:I
    .end local v5           #v:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public static ResetLinearLayoutPadding(Landroid/content/res/Resources;Landroid/view/View;IIIII)V
    .locals 6
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 17
    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 20
    .local v2, ll:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_4

    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, leftValue:I
    const/4 v4, 0x0

    .line 24
    .local v4, topValue:I
    const/4 v3, 0x0

    .line 25
    .local v3, rightValue:I
    const/4 v0, 0x0

    .line 27
    .local v0, bottomValue:I
    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 30
    :cond_0
    if-eqz p4, :cond_1

    .line 31
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 34
    :cond_1
    if-eqz p5, :cond_2

    .line 35
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 38
    :cond_2
    if-eqz p6, :cond_3

    .line 39
    invoke-virtual {p0, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 41
    :cond_3
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 45
    .end local v0           #bottomValue:I
    .end local v1           #leftValue:I
    .end local v2           #ll:Landroid/widget/LinearLayout;
    .end local v3           #rightValue:I
    .end local v4           #topValue:I
    :cond_4
    return-void
.end method

.method public static ResetLinearLayoutWidthHeight(Landroid/content/res/Resources;Landroid/view/View;III)V
    .locals 3
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 243
    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 246
    .local v0, v:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    .line 247
    if-eqz p3, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    :cond_0
    if-eqz p4, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    .end local v0           #v:Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public static ResetRelativeLayoutAlignParentRight(Landroid/content/res/Resources;Landroid/view/View;II)V
    .locals 5
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "right"

    .prologue
    const/16 v4, 0xb

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .local v0, lpAppt:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "true"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .end local v0           #lpAppt:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 200
    .restart local v0       #lpAppt:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public static ResetRelativeLayoutAlignSblings(Landroid/content/res/Resources;Landroid/view/View;IIIII)V
    .locals 2
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "above"
    .parameter "below"
    .parameter "leftof"
    .parameter "rightof"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .local v0, lpAppt:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .end local v0           #lpAppt:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public static ResetRelativeLayoutMargin(Landroid/content/res/Resources;Landroid/view/View;IIIII)V
    .locals 7
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 81
    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 84
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .local v2, lpAppt:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 88
    .local v1, leftValue:I
    const/4 v4, 0x0

    .line 89
    .local v4, topValue:I
    const/4 v3, 0x0

    .line 90
    .local v3, rightValue:I
    const/4 v0, 0x0

    .line 92
    .local v0, bottomValue:I
    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 95
    :cond_0
    if-eqz p4, :cond_1

    .line 96
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 99
    :cond_1
    if-eqz p5, :cond_2

    .line 100
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 103
    :cond_2
    if-eqz p6, :cond_3

    .line 104
    invoke-virtual {p0, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 106
    :cond_3
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    .end local v0           #bottomValue:I
    .end local v1           #leftValue:I
    .end local v2           #lpAppt:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #rightValue:I
    .end local v4           #topValue:I
    .end local v5           #v:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public static ResetRelativeLayoutPadding(Landroid/content/res/Resources;Landroid/view/View;IIIII)V
    .locals 6
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 49
    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 52
    .local v2, ll:Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_4

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, leftValue:I
    const/4 v4, 0x0

    .line 56
    .local v4, topValue:I
    const/4 v3, 0x0

    .line 57
    .local v3, rightValue:I
    const/4 v0, 0x0

    .line 59
    .local v0, bottomValue:I
    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 62
    :cond_0
    if-eqz p4, :cond_1

    .line 63
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 66
    :cond_1
    if-eqz p5, :cond_2

    .line 67
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 70
    :cond_2
    if-eqz p6, :cond_3

    .line 71
    invoke-virtual {p0, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 73
    :cond_3
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 77
    .end local v0           #bottomValue:I
    .end local v1           #leftValue:I
    .end local v2           #ll:Landroid/widget/RelativeLayout;
    .end local v3           #rightValue:I
    .end local v4           #topValue:I
    :cond_4
    return-void
.end method

.method public static ResetRelativeLayoutWidthHeight(Landroid/content/res/Resources;Landroid/view/View;III)V
    .locals 3
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 142
    .local v0, v:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    .end local v0           #v:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method public static ResetTextViewStyle(Landroid/content/res/Resources;Landroid/view/View;II)V
    .locals 3
    .parameter "res"
    .parameter "rootView"
    .parameter "id"
    .parameter "textsize"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    .end local v0           #v:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
