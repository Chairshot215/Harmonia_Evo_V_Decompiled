.class public abstract Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;
.super Lcom/htc/fusion/fx/controls/FxArrayAdapter;
.source "BookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/controls/FxArrayAdapter",
        "<",
        "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
        ">;"
    }
.end annotation


# instance fields
.field private mWidgetHost:Lcom/htc/android/rosie/widget/Widget$Host;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "widgetHost"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/rosie/widget/Widget$Host;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, arraylist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-direct {p0, p1, p3}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 17
    iput-object p2, p0, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->mWidgetHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 18
    return-void
.end method


# virtual methods
.method public getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->mWidgetHost:Lcom/htc/android/rosie/widget/Widget$Host;

    return-object v0
.end method

.method public setBookmarkList(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method

.method protected abstract setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
.end method
