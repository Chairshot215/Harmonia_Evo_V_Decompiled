.class public Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;
.super Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;
.source "ListModeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;,
        Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field private static final M10_ITEM_PATH_LAND:Ljava/lang/String; = "Land/Bookmark_4x4_ListItem.m10"

.field private static final M10_ITEM_PATH_PORT:Ljava/lang/String; = "Port/Bookmark_4x4_ListItem.m10"


# instance fields
.field private mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

.field private mAddBookmarkItem:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

.field private mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScrollOffset:Landroid/graphics/PointF;

.field private mListView:Lcom/htc/fusion/fx/controls/FxListView;

.field private mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mScrollIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 6
    .parameter "base"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 87
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mLastScrollOffset:Landroid/graphics/PointF;

    .line 152
    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    const-string v2, "tag_name_of_add_bookmark_item"

    invoke-direct {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 55
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;

    const/4 v2, 0x0

    const v3, 0x7f070005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAddBookmarkItem:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 56
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAddBookmarkItem:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-interface {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mScrollIndex:I

    .line 58
    return-void
.end method

.method public static createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    .locals 2
    .parameter "host"

    .prologue
    .line 255
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;

    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;

    invoke-direct {v1, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)V

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    return-object v0
.end method

.method private getM10ItemPath(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 2
    .parameter "config"

    .prologue
    .line 259
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 260
    const-string v0, "Land/Bookmark_4x4_ListItem.m10"

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Port/Bookmark_4x4_ListItem.m10"

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "ListModeState"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfiguration"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 90
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getScrollOffset()Landroid/graphics/PointF;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mLastScrollOffset:Landroid/graphics/PointF;

    .line 92
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 100
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 101
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "ListViewViewPort"

    aput-object v5, v1, v8

    const-string v5, "timeline.main_page"

    aput-object v5, v1, v9

    .line 102
    .local v1, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 103
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v8

    check-cast v5, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 104
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 105
    :cond_1
    aget-object v5, v3, v9

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 106
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 108
    :cond_2
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 109
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-direct {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getM10ItemPath(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 111
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 112
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 113
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 115
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 116
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 117
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 120
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x28

    if-ne v5, v6, :cond_3

    .line 121
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v7, 0x1a

    invoke-virtual {v5, v6, v7}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 126
    :goto_0
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v5}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 127
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mLastScrollOffset:Landroid/graphics/PointF;

    invoke-virtual {v5, v6, v8}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffset(Landroid/graphics/PointF;I)V

    .line 128
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5, v9}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 129
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v6, 0x4120

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 130
    return-void

    .line 123
    :cond_3
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v7, 0x14

    invoke-virtual {v5, v6, v7}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onContentChanged()V

    .line 195
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/List;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    .line 198
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 208
    :goto_1
    iget v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mScrollIndex:I

    if-ltz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mScrollIndex:I

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 212
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->setBookmarkList(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 61
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onCreate()V

    .line 63
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 64
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 65
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "ListViewViewPort"

    aput-object v5, v1, v6

    const-string v5, "timeline.main_page"

    aput-object v5, v1, v7

    .line 66
    .local v1, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 67
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v6

    check-cast v5, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 68
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 69
    :cond_0
    aget-object v5, v3, v7

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 70
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 72
    :cond_1
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 73
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-direct {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getM10ItemPath(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 75
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 76
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 77
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 79
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 80
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 81
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 83
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 84
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v6, 0x4120

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onDestroy()V

    .line 135
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 136
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 138
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 145
    .local v0, b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->releaseFavicon()V

    goto :goto_0

    .line 150
    .end local v0           #b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_2
    return-void
.end method

.method public onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 219
    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v2

    .line 220
    .local v2, index:I
    iget v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 221
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 222
    .local v0, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-interface {v0, v6}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->containsTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    const/4 v3, 0x0

    .line 227
    .local v3, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v3           #intent:Landroid/content/Intent;
    .local v4, intent:Landroid/content/Intent;
    :try_start_1
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v6, "intent_widget"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 247
    .end local v0           #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v0       #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v6, "HtcBookmarkWidget"

    const-string v7, "Activity not found, abort insert bookmark"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, url:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    const-string v6, "com.android.browser.application_id"

    const-string v7, "com.htc.htcinternetwidget"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #url:Ljava/lang/String;
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 10
    .parameter "content"

    .prologue
    const/4 v9, -0x1

    .line 154
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->setContent(Ljava/lang/Object;)V

    move-object v3, p1

    .line 155
    check-cast v3, Ljava/util/ArrayList;

    .line 156
    .local v3, contentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v5

    .line 157
    .local v5, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    const-wide/16 v0, 0x0

    .line 159
    .local v0, LastCreatedBookmarkTime:J
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 161
    :cond_0
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v7}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->clear()V

    .line 162
    invoke-static {v5}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 163
    iput v9, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mScrollIndex:I

    .line 191
    :cond_1
    return-void

    .line 167
    :cond_2
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 168
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 169
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 171
    .local v2, b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_3

    .line 172
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v0

    goto :goto_0

    .line 176
    .end local v2           #b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    .line 177
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mAddBookmarkItem:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 181
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    const/4 v4, 0x0

    .line 182
    .local v4, count:I
    iput v9, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mScrollIndex:I

    .line 183
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 185
    .restart local v2       #b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_5

    .line 186
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v0

    .line 187
    iput v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->mScrollIndex:I

    .line 189
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 190
    goto :goto_1
.end method
