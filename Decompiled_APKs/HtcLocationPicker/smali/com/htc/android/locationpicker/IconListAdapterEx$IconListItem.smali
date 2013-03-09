.class public Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapterEx.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/IconListAdapterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDrable:Landroid/graphics/drawable/Drawable;

.field private mOrder:I

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .parameter "title"
    .parameter "d"
    .parameter "resolveInfo"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mOrder:I

    .line 56
    iput-object p1, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mTitle:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mDrable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object p3, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ResolveInfo;I)V
    .locals 0
    .parameter "title"
    .parameter "d"
    .parameter "resolveInfo"
    .parameter "order"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ResolveInfo;)V

    .line 63
    iput p4, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mOrder:I

    .line 64
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mOrder:I

    iget v1, p1, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mOrder:I

    if-ge v0, v1, :cond_0

    .line 82
    const/4 v0, -0x1

    .line 90
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v0, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mOrder:I

    iget v1, p1, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mOrder:I

    if-ne v0, v1, :cond_1

    .line 86
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->compareTo(Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)I

    move-result v0

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mDrable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
