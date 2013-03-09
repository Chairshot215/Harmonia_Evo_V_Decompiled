.class public Lcom/htc/store/module/view/HubListView;
.super Lcom/htc/widget/HtcListView;
.source "HubListView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsGalleryTouched:Z

.field private mListItemHeight:I

.field private mPromoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;

.field private mPromoSwitcherHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/view/HubListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/store/module/view/HubListView;->mIsGalleryTouched:Z

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/view/HubListView;->mListItemHeight:I

    .line 26
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcherHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/store/module/view/HubListView;->mIsGalleryTouched:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/view/HubListView;->mListItemHeight:I

    .line 33
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcherHeight:I

    .line 34
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 38
    iget-object v8, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v8, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 40
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 92
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_0
    return v8

    .line 43
    .restart local v0       #action:I
    :pswitch_0
    iget-object v8, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v8}, Lcom/htc/store/module/view/PromoSwitcher;->isShown()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/htc/store/module/view/HubListView;->mIsGalleryTouched:Z

    if-nez v8, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/htc/store/module/view/HubListView;->getLastVisiblePosition()I

    move-result v2

    .line 45
    .local v2, lastItemNumber:I
    invoke-virtual {p0}, Lcom/htc/store/module/view/HubListView;->getHeight()I

    move-result v3

    .line 46
    .local v3, listHeight:I
    invoke-virtual {p0}, Lcom/htc/store/module/view/HubListView;->getTop()I

    move-result v6

    .line 47
    .local v6, switcherTop:I
    iget v5, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcherHeight:I

    .line 49
    .local v5, switcherHeight:I
    iget v8, p0, Lcom/htc/store/module/view/HubListView;->mListItemHeight:I

    mul-int/2addr v8, v2

    sub-int v7, v3, v8

    .line 50
    .local v7, switcherVisibleHeight:I
    if-gez v7, :cond_3

    .line 51
    const/4 v7, 0x0

    .line 56
    :cond_1
    :goto_1
    if-gez v7, :cond_2

    .line 57
    const/4 v7, 0x0

    .line 59
    :cond_2
    add-int v4, v6, v7

    .line 61
    .local v4, switcherBottom:I
    sget-object v8, Lcom/htc/store/module/view/HubListView;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "lastItemNumber: "

    aput-object v10, v9, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object v8, Lcom/htc/store/module/view/HubListView;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "listHeight: "

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    sget-object v8, Lcom/htc/store/module/view/HubListView;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "switcherTop: "

    aput-object v10, v9, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    sget-object v8, Lcom/htc/store/module/view/HubListView;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "switcherHeight: "

    aput-object v10, v9, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-object v8, Lcom/htc/store/module/view/HubListView;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "switcherVisibleHeight: "

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sget-object v8, Lcom/htc/store/module/view/HubListView;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "switcherBottom: "

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/store/module/view/HubListView;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/store/module/view/HubListView;->getRight()I

    move-result v9

    invoke-direct {v1, v8, v6, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 71
    iput-boolean v12, p0, Lcom/htc/store/module/view/HubListView;->mIsGalleryTouched:Z

    .line 72
    iget-object v8, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v8, p1}, Lcom/htc/store/module/view/PromoSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

    .line 52
    .end local v1           #hitRect:Landroid/graphics/Rect;
    .end local v4           #switcherBottom:I
    :cond_3
    if-le v7, v5, :cond_1

    .line 53
    move v7, v5

    goto/16 :goto_1

    .line 78
    .end local v2           #lastItemNumber:I
    .end local v3           #listHeight:I
    .end local v5           #switcherHeight:I
    .end local v6           #switcherTop:I
    .end local v7           #switcherVisibleHeight:I
    :pswitch_1
    iget-boolean v8, p0, Lcom/htc/store/module/view/HubListView;->mIsGalleryTouched:Z

    if-eqz v8, :cond_0

    .line 79
    iget-object v8, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v8, p1}, Lcom/htc/store/module/view/PromoSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

    .line 85
    :pswitch_2
    iget-boolean v8, p0, Lcom/htc/store/module/view/HubListView;->mIsGalleryTouched:Z

    if-eqz v8, :cond_0

    .line 86
    iput-boolean v11, p0, Lcom/htc/store/module/view/HubListView;->mIsGalleryTouched:Z

    .line 87
    iget-object v8, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v8, p1}, Lcom/htc/store/module/view/PromoSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;)V
    .locals 0
    .parameter "switcher"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/store/module/view/HubListView;->mPromoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;

    .line 97
    return-void
.end method
