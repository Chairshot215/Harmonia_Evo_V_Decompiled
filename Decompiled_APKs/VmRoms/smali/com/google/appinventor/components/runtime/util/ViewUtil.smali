.class public final Lcom/google/appinventor/components/runtime/util/ViewUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static setChildHeightForHorizontalLayout(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :pswitch_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const-string v0, "ViewUtil"

    const-string v1, "The view does not have linear layout parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForTableLayout(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    packed-switch p1, :pswitch_data_0

    iput p1, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    :pswitch_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const-string v0, "ViewUtil"

    const-string v1, "The view does not have table layout parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForVerticalLayout(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const-string v0, "ViewUtil"

    const-string v1, "The view does not have linear layout parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForHorizontalLayout(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const-string v0, "ViewUtil"

    const-string v1, "The view does not have linear layout parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForTableLayout(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    packed-switch p1, :pswitch_data_0

    iput p1, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    :pswitch_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const-string v0, "ViewUtil"

    const-string v1, "The view does not have table layout parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForVerticalLayout(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :pswitch_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const-string v0, "ViewUtil"

    const-string v1, "The view does not have linear layout parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
