.class Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;


# instance fields
.field mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iput-object v3, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$10(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$5(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$10(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #calls: Lcom/actionbarsherlock/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$11(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$12(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$12(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$10(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->requestLayout()V

    invoke-virtual {p2, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    return v4

    :cond_6
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$4(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$5(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->requestLayout()V

    invoke-virtual {p2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_6
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    :cond_0
    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
