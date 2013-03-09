.class Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;
.super Ljava/lang/Object;
.source "ViewTemplateBase.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/ViewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainViewContextMenuListener"
.end annotation


# instance fields
.field private mMenuItemListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewMenuItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/album/ViewTemplateBase",
            "<TV;>.MainViewMenuItemClick",
            "Listener;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/opensense/album/ViewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/ViewTemplateBase;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;->this$0:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewMenuItemClickListener;

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;->this$0:Lcom/htc/opensense/album/ViewTemplateBase;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase$MainViewMenuItemClickListener;-><init>(Lcom/htc/opensense/album/ViewTemplateBase;Lcom/htc/opensense/album/ViewTemplateBase$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;->mMenuItemListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewMenuItemClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/ViewTemplateBase;Lcom/htc/opensense/album/ViewTemplateBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;-><init>(Lcom/htc/opensense/album/ViewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;->this$0:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/opensense/album/ViewTemplateBase;->onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;->this$0:Lcom/htc/opensense/album/ViewTemplateBase;

    iput-object p3, v2, Lcom/htc/opensense/album/ViewTemplateBase;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;->mMenuItemListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewMenuItemClickListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
