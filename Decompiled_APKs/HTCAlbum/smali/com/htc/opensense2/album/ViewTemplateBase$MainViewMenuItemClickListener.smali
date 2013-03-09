.class Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;
.super Ljava/lang/Object;
.source "ViewTemplateBase.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/ViewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainViewMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/ViewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/ViewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>.MainViewMenuItemClickListener;"
    iput-object p1, p0, Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;->this$0:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/ViewTemplateBase;Lcom/htc/opensense2/album/ViewTemplateBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>.MainViewMenuItemClickListener;"
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;-><init>(Lcom/htc/opensense2/album/ViewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 103
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>.MainViewMenuItemClickListener;"
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;->this$0:Lcom/htc/opensense2/album/ViewTemplateBase;

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;->this$0:Lcom/htc/opensense2/album/ViewTemplateBase;

    iget-object v1, v1, Lcom/htc/opensense2/album/ViewTemplateBase;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onMainViewContextItemSelected(Landroid/view/MenuItem;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    move-result v0

    return v0
.end method
