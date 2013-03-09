.class public Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;
.super Ljava/lang/Object;
.source "SunnyContextMenu.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method
