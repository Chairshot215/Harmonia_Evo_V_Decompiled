.class public abstract Lcom/htc/widget/DeckControlAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeckControlAdapter.java"


# instance fields
.field final LAYOUT_ALPHA:[I

.field final LAYOUT_ALPHA_L:[I

.field final LAYOUT_ROTATE_X:[F

.field final LAYOUT_ROTATE_X_L:[F

.field final LAYOUT_ROTATE_Y:[F

.field final LAYOUT_ROTATE_Y_L:[F

.field final LAYOUT_SCALE:[F

.field final LAYOUT_SCALE_L:[F

.field final LAYOUT_TRANSLATION_X:[F

.field final LAYOUT_TRANSLATION_X_L:[F

.field final LAYOUT_TRANSLATION_X_VIGOR:[F

.field final LAYOUT_TRANSLATION_Y:[F

.field final LAYOUT_TRANSLATION_Y_L:[F

.field final LAYOUT_TRANSLATION_Y_VIGOR:[F

.field private final containerCountL:I

.field private final containerCountP:I

.field private containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

.field private context:Landroid/content/Context;

.field private final debugflag:Z

.field private displayItemHeight:I

.field private displayItemWidth:I

.field private internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v1, 0x100

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x7

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v6, p0, Lcom/htc/widget/DeckControlAdapter;->debugflag:Z

    iput v1, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemWidth:I

    iput v1, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemHeight:I

    iput v4, p0, Lcom/htc/widget/DeckControlAdapter;->containerCountL:I

    iput v3, p0, Lcom/htc/widget/DeckControlAdapter;->containerCountP:I

    iput-object v5, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/DeckControlAdapter;->orientation:I

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_X:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_Y:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_X_VIGOR:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_Y_VIGOR:[F

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ALPHA:[I

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_SCALE:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_X:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_Y:[F

    new-array v1, v4, [F

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_X_L:[F

    new-array v1, v4, [F

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_Y_L:[F

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ALPHA_L:[I

    new-array v1, v4, [F

    fill-array-data v1, :array_b

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_SCALE_L:[F

    new-array v1, v4, [F

    fill-array-data v1, :array_c

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_X_L:[F

    new-array v1, v4, [F

    fill-array-data v1, :array_d

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_Y_L:[F

    iput-object v5, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    iput-object p1, p0, Lcom/htc/widget/DeckControlAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/DeckControlAdapter;->orientation:I

    iget v1, p0, Lcom/htc/widget/DeckControlAdapter;->orientation:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/htc/widget/DeckControlAdapter;->orientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "SPresentationSAdapter"

    const-string v2, "setup landscape container"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    new-array v1, v4, [Lcom/htc/sunny/SPresentationContainerLayout;

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aput-object v5, v1, v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    new-instance v2, Lcom/htc/sunny/SPresentationContainerLayout;

    invoke-direct {v2}, Lcom/htc/sunny/SPresentationContainerLayout;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_Y_L:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_X_L:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_SCALE_L:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_SCALE_L:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ALPHA_L:[I

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_X_L:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_Y_L:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemWidth:I

    iput v2, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemHeight:I

    iput v2, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "SPresentationSAdapter"

    const-string v2, "setup portrait container"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    new-array v1, v3, [Lcom/htc/sunny/SPresentationContainerLayout;

    iput-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aput-object v5, v1, v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    new-instance v2, Lcom/htc/sunny/SPresentationContainerLayout;

    invoke-direct {v2}, Lcom/htc/sunny/SPresentationContainerLayout;-><init>()V

    aput-object v2, v1, v0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_Y_VIGOR:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_X_VIGOR:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mX:F

    :goto_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_SCALE:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_SCALE:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ALPHA:[I

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_X:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_ROTATE_Y:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemWidth:I

    iput v2, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemHeight:I

    iput v2, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_Y:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->LAYOUT_TRANSLATION_X:[F

    aget v2, v2, v0

    iput v2, v1, Lcom/htc/sunny/Vector3F;->mX:F

    goto :goto_2

    :cond_3
    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x96t 0xc3t
        0x0t 0x0t 0x48t 0xc3t
        0x0t 0x0t 0xc8t 0xc2t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xc8t 0x42t
        0x0t 0x0t 0x48t 0x43t
        0x0t 0x0t 0x96t 0x43t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xet 0xc3t
        0x0t 0x0t 0x2dt 0xc3t
        0x0t 0x0t 0x4dt 0xc3t
        0x0t 0x0t 0x6ct 0xc3t
        0x0t 0x0t 0x4dt 0xc3t
        0x0t 0x0t 0x2dt 0xc3t
        0x0t 0x0t 0xet 0xc3t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0xe1t 0xc3t
        0x0t 0x0t 0x96t 0xc3t
        0x0t 0x0t 0x16t 0xc3t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x16t 0x43t
        0x0t 0x0t 0x96t 0x43t
        0x0t 0x0t 0xe1t 0x43t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0xfet 0xc2t
        0x0t 0x0t 0x1et 0xc3t
        0x0t 0x0t 0x39t 0xc3t
        0x0t 0x0t 0x6ct 0xc3t
        0x0t 0x0t 0x39t 0xc3t
        0x0t 0x0t 0x1et 0xc3t
        0x0t 0x0t 0xfet 0xc2t
    .end array-data

    :array_4
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1ft 0x85t 0x2bt 0x3ft
        0x5ct 0x8ft 0x42t 0x3ft
        0x52t 0xb8t 0x5et 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x52t 0xb8t 0x5et 0x3ft
        0x5ct 0x8ft 0x42t 0x3ft
        0x1ft 0x85t 0x2bt 0x3ft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x16t 0xc4t
        0x0t 0x0t 0xe1t 0xc3t
        0x0t 0x0t 0x96t 0xc3t
        0x0t 0x0t 0x16t 0xc3t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x16t 0x43t
        0x0t 0x0t 0x96t 0x43t
        0x0t 0x0t 0xe1t 0x43t
        0x0t 0x0t 0x16t 0x44t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x24t 0xc2t
        0x0t 0x0t 0x60t 0xc2t
        0x0t 0x0t 0x8et 0xc2t
        0x0t 0x0t 0xact 0xc2t
        0x0t 0x0t 0xcat 0xc2t
        0x0t 0x0t 0xact 0xc2t
        0x0t 0x0t 0x8et 0xc2t
        0x0t 0x0t 0x60t 0xc2t
        0x0t 0x0t 0x24t 0xc2t
    .end array-data

    :array_a
    .array-data 0x4
        0x85t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xb8t 0x1et 0x5t 0x3ft
        0xf6t 0x28t 0x1ct 0x3ft
        0xect 0x51t 0x38t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0xect 0x51t 0x38t 0x3ft
        0xf6t 0x28t 0x1ct 0x3ft
        0xb8t 0x1et 0x5t 0x3ft
    .end array-data

    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method adjustLayout(IIF)V
    .locals 11

    const/4 v10, 0x0

    const-string v6, "SPresentationSAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reset adjustLayout("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemWidth:I

    iput p2, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/DeckControlAdapter;->getContainerCount()I

    move-result v1

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    new-array v6, v1, [Lcom/htc/sunny/SPresentationContainerLayout;

    iput-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    div-int/lit8 v6, v1, 0x2

    sub-int v0, v2, v6

    move v4, p3

    iget v6, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemHeight:I

    int-to-float v6, v6

    const v7, 0x3d4ccccd

    mul-float v5, v6, v7

    const-wide v6, 0x3feb333340000000L

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    new-instance v7, Lcom/htc/sunny/SPresentationContainerLayout;

    invoke-direct {v7}, Lcom/htc/sunny/SPresentationContainerLayout;-><init>()V

    aput-object v7, v6, v2

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    int-to-float v7, v0

    mul-float/2addr v7, v4

    iput v7, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v7, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemHeight:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iput v3, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iput v3, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v10, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v10, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget v7, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemWidth:I

    iput v7, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    iget v7, p0, Lcom/htc/widget/DeckControlAdapter;->displayItemHeight:I

    iput v7, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    iget-object v6, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v6, v6, v2

    const/high16 v7, 0x437f

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method getContainerCount()I
    .locals 2

    iget v0, p0, Lcom/htc/widget/DeckControlAdapter;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/DeckControlAdapter;->orientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method getItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/DeckControlAdapter;->getCount()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    invoke-interface {v0}, Lcom/htc/widget/DeckControl$DCAdapterListener;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/DeckControl$DCAdapterListener;->notifyDataSetChanged(I)V

    :cond_0
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/DeckControl$DCAdapterListener;->notifyUpdateItem(I)V

    :cond_0
    return-void
.end method

.method setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControlAdapter;->internalListener:Lcom/htc/widget/DeckControl$DCAdapterListener;

    return-void
.end method

.method setYOffset(F)V
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v2, "SPresentationSAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reste setYOffset("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/widget/DeckControlAdapter;->getContainerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DeckControlAdapter;->containerLayout:[Lcom/htc/sunny/SPresentationContainerLayout;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    sub-float/2addr v3, p1

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
