.class public Lcom/htc/store/module/view/FeaturedItemView;
.super Ljava/lang/Object;
.source "FeaturedItemView.java"


# static fields
.field private static final ICON_ID_ARRAY:[I = null

.field private static final ICON_REFLECTION_ID_ARRAY:[I = null

.field private static final LABEL_ID_ARRAY:[I = null

.field private static final LAYOUT_ID_ARRAY:[I = null

.field public static final MAX_ITEM:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconReflection:Landroid/widget/ImageView;

.field private mLayout:Landroid/view/View;

.field private mOnlineId:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 16
    const-class v0, Lcom/htc/store/module/view/FeaturedItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/view/FeaturedItemView;->TAG:Ljava/lang/String;

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/store/module/view/FeaturedItemView;->LAYOUT_ID_ARRAY:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/store/module/view/FeaturedItemView;->ICON_ID_ARRAY:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/store/module/view/FeaturedItemView;->ICON_REFLECTION_ID_ARRAY:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/store/module/view/FeaturedItemView;->LABEL_ID_ARRAY:[I

    return-void

    .line 25
    nop

    :array_0
    .array-data 0x4
        0x60t 0x0t 0xct 0x7ft
        0x64t 0x0t 0xct 0x7ft
        0x68t 0x0t 0xct 0x7ft
        0x6ct 0x0t 0xct 0x7ft
        0x71t 0x0t 0xct 0x7ft
        0x75t 0x0t 0xct 0x7ft
        0x79t 0x0t 0xct 0x7ft
        0x7dt 0x0t 0xct 0x7ft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x61t 0x0t 0xct 0x7ft
        0x65t 0x0t 0xct 0x7ft
        0x69t 0x0t 0xct 0x7ft
        0x6dt 0x0t 0xct 0x7ft
        0x72t 0x0t 0xct 0x7ft
        0x76t 0x0t 0xct 0x7ft
        0x7at 0x0t 0xct 0x7ft
        0x7et 0x0t 0xct 0x7ft
    .end array-data

    .line 47
    :array_2
    .array-data 0x4
        0x62t 0x0t 0xct 0x7ft
        0x66t 0x0t 0xct 0x7ft
        0x6at 0x0t 0xct 0x7ft
        0x6et 0x0t 0xct 0x7ft
        0x73t 0x0t 0xct 0x7ft
        0x77t 0x0t 0xct 0x7ft
        0x7bt 0x0t 0xct 0x7ft
        0x7ft 0x0t 0xct 0x7ft
    .end array-data

    .line 58
    :array_3
    .array-data 0x4
        0x63t 0x0t 0xct 0x7ft
        0x67t 0x0t 0xct 0x7ft
        0x6bt 0x0t 0xct 0x7ft
        0x6ft 0x0t 0xct 0x7ft
        0x74t 0x0t 0xct 0x7ft
        0x78t 0x0t 0xct 0x7ft
        0x7ct 0x0t 0xct 0x7ft
        0x80t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 5
    .parameter "promoFeaturedView"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p1, :cond_1

    .line 71
    sget-object v0, Lcom/htc/store/module/view/FeaturedItemView;->LAYOUT_ID_ARRAY:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 72
    sget-object v0, Lcom/htc/store/module/view/FeaturedItemView;->LAYOUT_ID_ARRAY:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mLayout:Landroid/view/View;

    .line 73
    sget-object v0, Lcom/htc/store/module/view/FeaturedItemView;->ICON_ID_ARRAY:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIcon:Landroid/widget/ImageView;

    .line 74
    sget-object v0, Lcom/htc/store/module/view/FeaturedItemView;->ICON_REFLECTION_ID_ARRAY:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    .line 75
    sget-object v0, Lcom/htc/store/module/view/FeaturedItemView;->LABEL_ID_ARRAY:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mTitle:Landroid/widget/TextView;

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/htc/store/module/view/FeaturedItemView;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Invalid index: "

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/htc/store/module/view/FeaturedItemView;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Parent view is null."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getOnlineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method public isIconSet()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setIconReflectionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setIconReflectionDrawableWithAnimation(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    const/high16 v1, 0x7f04

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 112
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/htc/store/module/view/FeaturedItemView;->mIconReflection:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 114
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setLayoutVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/store/module/view/FeaturedItemView;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setOnlineItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineId"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/store/module/view/FeaturedItemView;->mOnlineId:Ljava/lang/String;

    .line 90
    return-void
.end method
