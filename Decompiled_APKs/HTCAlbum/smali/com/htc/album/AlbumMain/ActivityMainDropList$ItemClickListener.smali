.class Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;
.super Ljava/lang/Object;
.source "ActivityMainDropList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/ActivityMainDropList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;


# direct methods
.method private constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "nIndex"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$000(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 98
    const-string v3, "ActivityMainDropList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ActivityMainDropList][onItemClick]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$100(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/AlbumMain/AdapterDropList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/AlbumMain/AdapterDropList;->getCount()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 101
    :cond_0
    const-string v3, "ActivityMainDropList"

    const-string v4, "[HTCAlbum][ActivityMainDropList][onItemClick]: Index out of bound, reset to 0"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 p3, 0x0

    .line 105
    :cond_1
    const/4 v2, 0x0

    .line 108
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$100(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/AlbumMain/AdapterDropList;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    if-nez v2, :cond_3

    .line 129
    :cond_2
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ActivityMainDropList"

    const-string v4, "[HTCAlbum][ActivityMainDropList][onItemClick]: no plugin..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v3, "ActivityMainDropList"

    const-string v4, "[HTCAlbum][ActivityMainDropList][onItemClick]: found..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$000(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$000(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v3

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I
    invoke-static {v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$200(Lcom/htc/album/AlbumMain/ActivityMainDropList;)I

    move-result v3

    if-eq v3, p3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #setter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I
    invoke-static {v3, p3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$202(Lcom/htc/album/AlbumMain/ActivityMainDropList;I)I

    .line 125
    const-string v3, "ActivityMainDropList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ActivityMainDropList][onItemClick]: focus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I
    invoke-static {v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$200(Lcom/htc/album/AlbumMain/ActivityMainDropList;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #calls: Lcom/htc/album/AlbumMain/ActivityMainDropList;->openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V
    invoke-static {v3, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$300(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/opensense/plugin/TabPlugin;)V

    goto :goto_1
.end method
