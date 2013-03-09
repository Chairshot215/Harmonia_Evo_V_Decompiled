.class Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ListViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/widget/ListViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mControlNames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/photowidget3d/widget/ListViewManager;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/widget/ListViewManager;)V
    .locals 3
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dynamicimage.photo_frame"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.loading"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->mControlNames:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/widget/ListViewManager;Lcom/htc/photowidget3d/widget/ListViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;-><init>(Lcom/htc/photowidget3d/widget/ListViewManager;)V

    return-void
.end method

.method private getImageAndInitControls(Lcom/htc/fusion/fx/controls/FxListItem;)Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .locals 4
    .parameter "listItem"

    .prologue
    .line 308
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->mControlNames:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 309
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 310
    .local v1, dyImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    const/4 v3, 0x1

    aget-object v2, v0, v3

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 311
    .local v2, textLoading:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_0

    .line 313
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v3, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/widget/FusionListView;->getLoadingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 316
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 325
    iget-object v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v2

    .line 327
    .local v2, pos:I
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    sparse-switch v3, :sswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 331
    :sswitch_0
    iget-object v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-direct {p0, v3}, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->getImageAndInitControls(Lcom/htc/fusion/fx/controls/FxListItem;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v0

    .line 332
    .local v0, dyImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v1, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;

    .line 333
    .local v1, listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;
    if-eqz v1, :cond_0

    .line 335
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v3, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-interface {v1, v3, v2, v0}, Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;->onListItemCreated(Lcom/htc/photowidget3d/widget/FusionListView;ILcom/htc/fusion/fx/controls/FxDynamicImage;)V

    goto :goto_0

    .line 341
    .end local v0           #dyImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v1           #listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;
    :sswitch_1
    iget-object v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-direct {p0, v3}, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->getImageAndInitControls(Lcom/htc/fusion/fx/controls/FxListItem;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v0

    .line 342
    .restart local v0       #dyImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v1, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;

    .line 343
    .restart local v1       #listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;
    if-eqz v1, :cond_0

    .line 345
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v3, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-interface {v1, v3, v2, v0}, Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;->onListItemChanged(Lcom/htc/photowidget3d/widget/FusionListView;ILcom/htc/fusion/fx/controls/FxDynamicImage;)V

    goto :goto_0

    .line 351
    .end local v0           #dyImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v1           #listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;
    :sswitch_2
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v1, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;

    .line 352
    .local v1, listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;
    if-eqz v1, :cond_0

    .line 354
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v3, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-interface {v1, v3, v2}, Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;->onListItemClick(Lcom/htc/photowidget3d/widget/FusionListView;I)V

    goto :goto_0

    .line 360
    .end local v1           #listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;
    :sswitch_3
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v1, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;

    .line 361
    .local v1, listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;
    if-eqz v1, :cond_0

    .line 363
    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v3, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-interface {v1, v3, v2}, Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;->onListItemDestroyed(Lcom/htc/photowidget3d/widget/FusionListView;I)V

    goto :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_2
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 299
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
