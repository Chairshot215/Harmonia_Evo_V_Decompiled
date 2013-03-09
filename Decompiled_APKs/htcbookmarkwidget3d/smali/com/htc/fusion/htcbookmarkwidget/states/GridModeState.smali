.class public Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;
.super Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;
.source "GridModeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;,
        Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field private static final M10_ITEM_PATH_LAND:Ljava/lang/String; = "Land/VisualBookmark_4x4_ListItem.m10"

.field private static final M10_ITEM_PATH_PORT:Ljava/lang/String; = "Port/VisualBookmark_4x4_ListItem.m10"


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
    .line 40
    const-class v0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->$assertionsDisabled:Z

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

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 93
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mLastScrollOffset:Landroid/graphics/PointF;

    .line 170
    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    const-string v2, "tag_name_of_add_bookmark_item"

    invoke-direct {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 60
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;

    const/4 v2, 0x0

    const v3, 0x7f070005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAddBookmarkItem:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 61
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAddBookmarkItem:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-interface {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mScrollIndex:I

    .line 63
    return-void
.end method

.method public static createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    .locals 2
    .parameter "host"

    .prologue
    .line 296
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;

    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;

    invoke-direct {v1, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)V

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    return-object v0
.end method

.method private getM10ItemPath(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 2
    .parameter "config"

    .prologue
    .line 300
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 301
    const-string v0, "Land/VisualBookmark_4x4_ListItem.m10"

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Port/VisualBookmark_4x4_ListItem.m10"

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "GridModeState"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfiguration"

    .prologue
    const/16 v7, 0x28

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getScrollOffset()Landroid/graphics/PointF;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mLastScrollOffset:Landroid/graphics/PointF;

    .line 98
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v5, :cond_0

    .line 99
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 106
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 107
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v4, :cond_1

    .line 140
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "ListViewViewPort"

    aput-object v5, v1, v8

    const-string v5, "timeline.main_page"

    aput-object v5, v1, v9

    .line 109
    .local v1, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 110
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v8

    check-cast v5, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 111
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 112
    :cond_2
    aget-object v5, v3, v9

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 113
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 115
    :cond_3
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 116
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-direct {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getM10ItemPath(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 118
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 119
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 120
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 122
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 123
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 124
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 128
    :try_start_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v5, v7, :cond_4

    .line 129
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v7, 0x28

    invoke-virtual {v5, v6, v7}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v5}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 137
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mLastScrollOffset:Landroid/graphics/PointF;

    invoke-virtual {v5, v6, v8}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffset(Landroid/graphics/PointF;I)V

    .line 138
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5, v9}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 139
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v6, 0x4120

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto/16 :goto_0

    .line 131
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v7, 0x14

    invoke-virtual {v5, v6, v7}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 7

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x0

    .line 212
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onContentChanged()V

    .line 213
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    if-nez v1, :cond_3

    .line 216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 217
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 221
    .local v0, imageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;
    :goto_0
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/List;Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    .line 224
    :try_start_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v6, :cond_2

    .line 225
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v1}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 236
    .end local v0           #imageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;
    :goto_2
    iget v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mScrollIndex:I

    if-ltz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mScrollIndex:I

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 240
    :cond_0
    return-void

    .line 219
    :cond_1
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;

    invoke-direct {v0}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;-><init>()V

    .restart local v0       #imageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;
    goto :goto_0

    .line 227
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v1

    goto :goto_1

    .line 233
    .end local v0           #imageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;
    :cond_3
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->setBookmarkList(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 66
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onCreate()V

    .line 68
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 69
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 70
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v4, :cond_0

    .line 91
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "ListViewViewPort"

    aput-object v5, v1, v6

    const-string v5, "timeline.main_page"

    aput-object v5, v1, v7

    .line 72
    .local v1, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 73
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v6

    check-cast v5, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 74
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 75
    :cond_1
    aget-object v5, v3, v7

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 76
    sget-boolean v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 78
    :cond_2
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 79
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-direct {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getM10ItemPath(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 81
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 82
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 83
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 85
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;

    invoke-direct {v5, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 86
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 87
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 89
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 90
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v6, 0x4120

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 143
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onDestroy()V

    .line 145
    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 146
    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 148
    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 152
    :cond_0
    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v4}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->getCount()I

    move-result v1

    .line 153
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 154
    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 155
    .local v0, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getThumbnailImage()Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v3

    .line 158
    .local v3, thumbnail:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    if-eqz v3, :cond_1

    .line 159
    invoke-interface {v3}, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;->close()V

    .line 162
    :cond_1
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 163
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->releaseFavicon()V

    .line 153
    .end local v3           #thumbnail:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0           #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :cond_3
    return-void
.end method

.method public onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 247
    iget-object v7, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v3

    .line 248
    .local v3, index:I
    iget v7, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 249
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v7, v3}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 250
    .local v0, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-interface {v0, v7}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->containsTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 252
    const/4 v4, 0x0

    .line 255
    .local v4, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v4           #intent:Landroid/content/Intent;
    .local v5, intent:Landroid/content/Intent;
    :try_start_1
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v7, "intent_widget"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 288
    .end local v0           #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 259
    .restart local v0       #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v7, "HtcBookmarkWidget"

    const-string v8, "Activity not found, abort insert bookmark"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, url:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    const-string v7, "com.android.browser.application_id"

    const-string v8, "com.htc.htcinternetwidget"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 271
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #url:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 273
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v7, "HtcBookmarkWidget"

    const-string v8, "Activity not found, abort launch bookmark"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v0           #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    iget v7, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-ne v7, v9, :cond_0

    .line 279
    if-ltz v3, :cond_0

    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v7}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 280
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v7, v3}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 282
    .restart local v0       #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getThumbnailImage()Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v2

    .line 283
    .local v2, image:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    if-eqz v2, :cond_0

    .line 284
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;->close()V

    goto :goto_0

    .line 259
    .end local v2           #image:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .restart local v5       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #intent:Landroid/content/Intent;
    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 10
    .parameter "content"

    .prologue
    const/4 v9, -0x1

    .line 172
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->setContent(Ljava/lang/Object;)V

    move-object v3, p1

    .line 173
    check-cast v3, Ljava/util/ArrayList;

    .line 174
    .local v3, contentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v5

    .line 175
    .local v5, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    const-wide/16 v0, 0x0

    .line 177
    .local v0, LastCreatedBookmarkTime:J
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 179
    :cond_0
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;

    invoke-virtual {v7}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->clear()V

    .line 180
    invoke-static {v5}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 181
    iput v9, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mScrollIndex:I

    .line 209
    :cond_1
    return-void

    .line 185
    :cond_2
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 186
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 187
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 188
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 189
    .local v2, b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_3

    .line 190
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v0

    goto :goto_0

    .line 194
    .end local v2           #b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    .line 195
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mAddBookmarkItem:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 199
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    const/4 v4, 0x0

    .line 200
    .local v4, count:I
    iput v9, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mScrollIndex:I

    .line 201
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 203
    .restart local v2       #b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_5

    .line 204
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getCreatedTime()J

    move-result-wide v0

    .line 205
    iput v4, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->mScrollIndex:I

    .line 207
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 208
    goto :goto_1
.end method
