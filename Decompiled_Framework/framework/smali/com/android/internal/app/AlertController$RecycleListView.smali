.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/AlertController$RecycleListView;->skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v2, 0x1080062

    if-ne v1, v2, :cond_2

    const-string/jumbo v2, "list_selector_background"

    invoke-static {p1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$802(Z)Z

    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$902(Z)Z

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setSelector(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "list_selector_holo_dark"

    invoke-static {p1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
