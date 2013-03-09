.class public Lcom/htc/fusion/fx/controls/FxListView;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;
    }
.end annotation


# static fields
.field public static final INVALID_INDEX:I = -0x1

.field private static sEnableGc:Z

.field static sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/fusion/fx/controls/FxListView;->sEnableGc:Z

    new-instance v0, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-direct {v0}, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;-><init>()V

    sput-object v0, Lcom/htc/fusion/fx/controls/FxListView;->sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-static {}, Lcom/htc/fusion/fx/controls/FxListView;->getGlobalListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    sget-object v1, Lcom/htc/fusion/fx/controls/FxListView;->sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method

.method public static enableGcForExternalAlloc(Z)V
    .locals 2

    sget-boolean v0, Lcom/htc/fusion/fx/controls/FxListView;->sEnableGc:Z

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/htc/fusion/fx/controls/FxListView;->getGlobalListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    sget-object v1, Lcom/htc/fusion/fx/controls/FxListView;->sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    :goto_0
    sput-boolean p0, Lcom/htc/fusion/fx/controls/FxListView;->sEnableGc:Z

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/htc/fusion/fx/controls/FxListView;->getGlobalListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    sget-object v1, Lcom/htc/fusion/fx/controls/FxListView;->sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private static native getGlobalListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end method

.method public static pause()V
    .locals 2

    invoke-static {}, Lcom/htc/fusion/fx/controls/FxListView;->getGlobalListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    sget-object v1, Lcom/htc/fusion/fx/controls/FxListView;->sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    sget-object v0, Lcom/htc/fusion/fx/controls/FxListView;->sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;->reset()V

    return-void
.end method

.method public static resume()V
    .locals 2

    sget-boolean v0, Lcom/htc/fusion/fx/controls/FxListView;->sEnableGc:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/fusion/fx/controls/FxListView;->getGlobalListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    sget-object v1, Lcom/htc/fusion/fx/controls/FxListView;->sGlobalListViewEvent:Lcom/htc/fusion/fx/controls/FxListView$GlobalListViewListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public native applyScrollOffset(Landroid/graphics/PointF;I)V
.end method

.method public native disableAsyncItemLoading()V
.end method

.method public native disableRecycling()V
.end method

.method public native disableVirtualization()V
.end method

.method public native enableRecycling(I)V
.end method

.method public native enableVirtualization(I)V
.end method

.method public native flickListView(Landroid/graphics/PointF;)V
.end method

.method public native getAsyncListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end method

.method public native getAsyncListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end method

.method public native getCollection()Lcom/htc/fusion/fx/controls/FxListViewCollection;
.end method

.method public native getCollectionCount()I
.end method

.method public native getCurrentlySelectedIndex()I
.end method

.method public native getFirstVisibleIndex()I
.end method

.method public native getLastVisibleIndex()I
.end method

.method public native getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end method

.method public native getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end method

.method public native getMaxScrollOffset()Landroid/graphics/PointF;
.end method

.method public native getScrollDirection()I
.end method

.method public native getScrollOffset()Landroid/graphics/PointF;
.end method

.method public native getScrollOffsetByItem(I)Landroid/graphics/PointF;
.end method

.method public native isHidden()Z
.end method

.method public native isPressed()Z
.end method

.method public native isScrolling()Z
.end method

.method public native requestAnimateIn(Z)V
.end method

.method public native requestAnimateOut(Z)V
.end method

.method public requestRefresh(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/controls/FxListView;->requestRefresh(ZZ)V

    return-void
.end method

.method public native requestRefresh(ZZ)V
.end method

.method public native requestSyncCallback()V
.end method

.method public native scrollToTopEnabled()Z
.end method

.method public native setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V
.end method

.method public native setDefaultFooterPath(Ljava/lang/String;)V
.end method

.method public native setDefaultHeaderPath(Ljava/lang/String;)V
.end method

.method public native setDefaultItemPath(Ljava/lang/String;)V
.end method

.method public native setListViewFooterCallbackHandler(Lcom/htc/fusion/fx/controls/FxListViewFooterCallbackHandler;)V
.end method

.method public native setListViewHeaderCallbackHandler(Lcom/htc/fusion/fx/controls/FxListViewHeaderCallbackHandler;)V
.end method

.method public native setListViewItemCallbackHandler(Lcom/htc/fusion/fx/controls/FxListViewItemCallbackHandler;)V
.end method

.method public native setScrollOffset(Landroid/graphics/PointF;I)V
.end method

.method public native setScrollOffsetByItem(ILandroid/graphics/PointF;I)V
.end method

.method public native setScrollOffsetByPercentage(FI)V
.end method

.method public native snappingEnabled()Z
.end method
