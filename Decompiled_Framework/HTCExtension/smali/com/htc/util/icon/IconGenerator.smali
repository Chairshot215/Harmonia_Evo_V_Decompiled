.class public Lcom/htc/util/icon/IconGenerator;
.super Ljava/lang/Object;
.source "IconGenerator.java"


# instance fields
.field private mBubbleTextLayout:Landroid/widget/FrameLayout;

.field private mIconSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x30

    iput v0, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    return-void
.end method


# virtual methods
.method public MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 10

    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, ""

    const/4 v6, 0x0

    const/16 v7, 0x64

    if-ge p5, v7, :cond_2

    const-string v7, "info_primary_l"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x2050059

    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    if-nez v7, :cond_1

    const v7, 0x209002a

    invoke-static {p1, v7}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const/high16 v7, 0x20d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    :cond_1
    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const v8, 0x20200ba

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const v8, 0x20200bb

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v7, 0x0

    int-to-float v8, v6

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    iget v8, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    iget v9, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    invoke-static {v7, v8, v9}, Lcom/htc/util/icon/IconImageGenerator;->genBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_2
    const-string v7, "info_primary_m"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_2
    const-string v4, "99+"

    goto :goto_0

    :cond_3
    const v7, 0x2050059

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/lit8 v6, v7, -0x2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_1
.end method

.method public createBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v6, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    if-nez v6, :cond_0

    const v6, 0x209002a

    :try_start_0
    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x20d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const v7, 0x20200ba

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const v7, 0x20200bb

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_1
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    int-to-float v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v6, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    iget v8, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    invoke-static {v6, v7, v8}, Lcom/htc/util/icon/IconImageGenerator;->genBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
