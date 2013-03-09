.class Lcom/htc/dlnamediaserver/ShareFolderAdapter$1;
.super Ljava/lang/Object;
.source "ShareFolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/ShareFolderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/ShareFolderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter$1;->this$0:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter$1;->this$0:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    iget-object v2, v2, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-virtual {v2}, Lcom/htc/dlnamediaserver/ShareFolder;->GetListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 137
    .local v1, thePos:I
    iget-object v2, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter$1;->this$0:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v0

    .line 138
    .local v0, theItem:Lcom/htc/dlnamediaserver/ShareFolderItem;
    iget-boolean v2, v0, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
