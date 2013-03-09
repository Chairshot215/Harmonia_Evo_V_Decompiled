.class public Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;
.super Ljava/lang/Object;
.source "AndIdleMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListMenuPresenter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field mItemLayoutRes:I

.field mMenuView:Landroid/view/View;

.field mPosition:I

.field mThemeRes:I

.field mTitletext:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Landroid/content/Context;II)V
    .locals 3

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mItemLayoutRes:I

    iput p4, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mThemeRes:I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getSkinBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "zhtc_item_background_holo_dark"

    const v2, 0x1080675

    invoke-static {p1, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMenuView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->MenuView:[I

    const v4, 0x1010074

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v2, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iget v3, v3, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenuPadding:I

    iget-object v4, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iget v4, v4, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenuPadding:I

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mTitletext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    const v3, 0x10202bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->getSkinBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mMenuView:Landroid/view/View;

    return-object v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    #getter for: Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->access$300(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    #getter for: Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->access$300(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    return-void
.end method

.method public setId(I)V
    .locals 3

    iput p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mId:I

    const-string v0, "AndIdleMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mPosition:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->mTitletext:Ljava/lang/String;

    const-string v0, "AndIdleMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
