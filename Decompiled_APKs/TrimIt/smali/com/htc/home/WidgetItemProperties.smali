.class public Lcom/htc/home/WidgetItemProperties;
.super Ljava/lang/Object;
.source "WidgetItemProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/WidgetItemProperties$FavoriteItemInfo;
    }
.end annotation


# instance fields
.field private mCategoryId:I

.field private mFavoriteItemInfo:[Lcom/htc/home/WidgetItemProperties$FavoriteItemInfo;

.field private mMaxInstances:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/htc/home/WidgetItemProperties;->mMaxInstances:I

    .line 25
    iput v0, p0, Lcom/htc/home/WidgetItemProperties;->mCategoryId:I

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/home/WidgetItemProperties;->mCategoryId:I

    return v0
.end method

.method public getDescription(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "res"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavoriteItemInfo()[Lcom/htc/home/WidgetItemProperties$FavoriteItemInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/home/WidgetItemProperties;->mFavoriteItemInfo:[Lcom/htc/home/WidgetItemProperties$FavoriteItemInfo;

    return-object v0
.end method

.method public getMaxInstances()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/home/WidgetItemProperties;->mMaxInstances:I

    return v0
.end method

.method public setCategoryId(I)V
    .locals 0
    .parameter "catId"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/home/WidgetItemProperties;->mCategoryId:I

    .line 54
    return-void
.end method

.method public setFavoriteItemInfo([Lcom/htc/home/WidgetItemProperties$FavoriteItemInfo;)V
    .locals 0
    .parameter "favoriteItemInfo"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/home/WidgetItemProperties;->mFavoriteItemInfo:[Lcom/htc/home/WidgetItemProperties$FavoriteItemInfo;

    .line 38
    return-void
.end method

.method public setMaxInstances(I)V
    .locals 0
    .parameter "maxInstances"

    .prologue
    .line 45
    iput p1, p0, Lcom/htc/home/WidgetItemProperties;->mMaxInstances:I

    .line 46
    return-void
.end method
