.class public Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;
.super Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

# interfaces
.implements Lcom/actionbarsherlock/view/SubMenu;


# instance fields
.field private mItem:Lcom/actionbarsherlock/view/MenuItem;

.field private final mNativeSubMenu:Landroid/view/SubMenu;


# direct methods
.method public constructor <init>(Landroid/view/SubMenu;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public getItem()Lcom/actionbarsherlock/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method public setHeaderIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
