.class Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcNaviPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/HtcNaviPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mAppName:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mNaviBtnImgIds:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mContext:Landroid/content/Context;

    .line 269
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mAppName:[Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mNaviBtnImgIds:Landroid/content/res/TypedArray;

    .line 271
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mNaviBtnImgIds:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 282
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 288
    :try_start_0
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 289
    .local v4, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 290
    const v5, 0x7f030002

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 296
    new-instance v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;-><init>()V

    .line 297
    .local v3, holder:Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;
    const v5, 0x7f0b0004

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 299
    const v5, 0x7f0b0003

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 303
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mContext:Landroid/content/Context;

    const-string v6, "navipanel_main_btn"

    const v7, 0x7f020004

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 304
    .local v0, btnSkinnedSelectorId:I
    iget-object v5, v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 305
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 314
    .end local v0           #btnSkinnedSelectorId:I
    :goto_0
    iget-object v5, v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mAppName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v5, v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mNaviBtnImgIds:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lcom/htc/HtcNaviPanel/ResUtils;->setItemBackground(Landroid/content/Context;Landroid/view/View;)V

    .line 317
    iget-object v5, v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 318
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 323
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #holder:Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    return-object p2

    .line 310
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #holder:Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;
    goto :goto_0

    .line 320
    .end local v3           #holder:Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter$ViewHolder;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "HtcNaviPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resources Not Found, inflate layout fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
