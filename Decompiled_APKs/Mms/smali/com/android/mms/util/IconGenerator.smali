.class public Lcom/android/mms/util/IconGenerator;
.super Ljava/lang/Object;
.source "IconGenerator.java"


# instance fields
.field private mBubbleTextLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    .line 28
    return-void
.end method


# virtual methods
.method public MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "appContext"
    .parameter "imageIcon"
    .parameter "imageTextback"
    .parameter "textColor"
    .parameter "bubbleNum"

    .prologue
    const/4 v9, -0x1

    .line 33
    iget-object v5, p0, Lcom/android/mms/util/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    if-nez v5, :cond_0

    .line 35
    const v5, 0x7f030001

    :try_start_0
    invoke-static {p1, v5}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/mms/util/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/mms/util/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const v6, 0x7f0e0008

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 41
    .local v2, image:Landroid/widget/ImageView;
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v5, p0, Lcom/android/mms/util/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    const v6, 0x7f0e0009

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 46
    .local v4, text:Landroid/widget/TextView;
    const/16 v5, 0x64

    if-ge p5, v5, :cond_2

    .line 47
    :try_start_1
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 49
    .local v3, str:Ljava/lang/String;
    const v5, 0x20300d7

    :try_start_2
    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    :goto_1
    const/16 v5, 0x10

    :try_start_3
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v5, v6, :cond_1

    .line 59
    const/high16 v5, 0x4000

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, -0x100

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 65
    :cond_1
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v5, p0, Lcom/android/mms/util/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    invoke-static {v5, v9, v9}, Lcom/htc/util/icon/IconImageGenerator;->genBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 36
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #image:Landroid/widget/ImageView;
    .restart local v3       #str:Ljava/lang/String;
    .restart local v4       #text:Landroid/widget/TextView;
    :catch_1
    move-exception v0

    .line 51
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #str:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 62
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, ""

    .line 63
    .restart local v3       #str:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 55
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v3, "99+"

    .line 56
    .restart local v3       #str:Ljava/lang/String;
    const v5, 0x20300d6

    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1
.end method
