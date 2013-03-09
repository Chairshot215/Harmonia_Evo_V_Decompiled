.class Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;
.super Ljava/lang/Object;
.source "WidgetSetting.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnHeaderItemCheckedChangeListener"
.end annotation


# instance fields
.field mFooterView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

.field mListView:Lcom/htc/widget/HtcListView;

.field mListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;Lcom/htc/widget/HtcListView;Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;)V
    .locals 0
    .parameter "listener"
    .parameter "listView"
    .parameter "footerView"

    .prologue
    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->mListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    .line 270
    iput-object p2, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->mListView:Lcom/htc/widget/HtcListView;

    .line 271
    iput-object p3, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->mFooterView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 272
    return-void
.end method

.method private getAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    .locals 3

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 310
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_2

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 313
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .end local v0           #adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 318
    .restart local v0       #adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .end local v0           #adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    .restart local v0       #adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    goto :goto_0

    .line 323
    .end local v0           #adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFooterView()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->mFooterView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    return-object v0
.end method

.method private getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method private getWrapperListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->mListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;Z)V
    .locals 3
    .parameter "taggable"
    .parameter "isChecked"

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->getAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v0

    .line 276
    .local v0, adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    if-eqz v0, :cond_3

    .line 278
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 279
    if-eqz p2, :cond_0

    .line 280
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->setItemChecked(IZ)V

    .line 278
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->setItemChecked(IZ)V

    goto :goto_1

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->getFooterView()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    .line 288
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->getWrapperListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 289
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->getWrapperListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;->onCheckedChanged(Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;Z)V

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;->getAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->notifyDataSetChanged()V

    .line 294
    .end local v1           #i:I
    :cond_3
    return-void
.end method
