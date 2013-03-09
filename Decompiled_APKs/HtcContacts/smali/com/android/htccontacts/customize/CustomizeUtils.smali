.class public Lcom/android/htccontacts/customize/CustomizeUtils;
.super Ljava/lang/Object;
.source "CustomizeUtils.java"


# static fields
.field public static final BROWSE_LAYER_TITLE:I = 0x3

.field public static final BUTTOM_FRAME_LAYOUT:I = 0x2

.field public static final CAROUSEL_SWITCH_LAYER:I = 0x1

.field public static final DETAIL_LAYER_TITLE:I = 0x4

.field public static final SEARCH_LAYER_TITLE:I = 0x5

.field private static backgroundDrawableResId:I

.field private static mHeight:I

.field private static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput v0, Lcom/android/htccontacts/customize/CustomizeUtils;->backgroundDrawableResId:I

    .line 43
    sput v0, Lcom/android/htccontacts/customize/CustomizeUtils;->mHeight:I

    .line 44
    sput v0, Lcom/android/htccontacts/customize/CustomizeUtils;->mWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBackgroundRes(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_app_bkg"

    const-string v2, "drawable"

    const-string v3, "com.htc"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/htccontacts/customize/CustomizeUtils;->backgroundDrawableResId:I

    .line 50
    const-string v0, "common_app_bkg"

    sget v1, Lcom/android/htccontacts/customize/CustomizeUtils;->backgroundDrawableResId:I

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/customize/CustomizeUtils;->backgroundDrawableResId:I

    .line 53
    :cond_0
    return-void
.end method

.method public static getCropBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "layoutType"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeUtils;->checkBackgroundRes(Landroid/content/Context;)V

    .line 97
    invoke-static {p0, p1}, Lcom/android/htccontacts/customize/CustomizeUtils;->getCropDimension(Landroid/content/Context;I)V

    .line 99
    sget v4, Lcom/android/htccontacts/customize/CustomizeUtils;->mWidth:I

    if-lez v4, :cond_0

    sget v4, Lcom/android/htccontacts/customize/CustomizeUtils;->mHeight:I

    if-gtz v4, :cond_1

    .line 100
    :cond_0
    const-string v4, "CustomizeUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/htccontacts/customize/CustomizeUtils;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/htccontacts/customize/CustomizeUtils;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v3, 0x0

    .line 110
    :goto_0
    return-object v3

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/htccontacts/customize/CustomizeUtils;->backgroundDrawableResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 106
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, bd:Landroid/graphics/Bitmap;
    sget v4, Lcom/android/htccontacts/customize/CustomizeUtils;->mWidth:I

    sget v5, Lcom/android/htccontacts/customize/CustomizeUtils;->mHeight:I

    invoke-static {v0, v4, v5}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, bmFinal:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v3, drawableCrop:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static getCropDimension(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "layoutType"

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, widthResId:I
    const/4 v0, 0x0

    .line 59
    .local v0, heightResId:I
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    const v1, 0x7f09000d

    .line 87
    if-lez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/htccontacts/customize/CustomizeUtils;->mWidth:I

    .line 90
    :cond_0
    if-lez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/htccontacts/customize/CustomizeUtils;->mHeight:I

    .line 93
    :cond_1
    return-void

    .line 62
    :pswitch_0
    const v0, 0x7f090004

    .line 66
    :pswitch_1
    const v0, 0x7f0900a3

    .line 68
    goto :goto_0

    .line 71
    :pswitch_2
    const v0, 0x7f09000a

    .line 73
    goto :goto_0

    .line 76
    :pswitch_3
    const v0, 0x7f09000b

    .line 78
    goto :goto_0

    .line 81
    :pswitch_4
    const v0, 0x7f09000c

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
