.class Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;
.super Ljava/lang/Object;
.source "BaseWidgetView.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;-><init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)V

    return-void
.end method


# virtual methods
.method public onCancelLoading()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onLoading()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public onObservedChanges()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bShouldRefresh:Z

    .line 496
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-boolean v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bIsWidgetOnScreen:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x8000

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 499
    :cond_0
    return-void
.end method

.method public onPostLoading(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iput-object p1, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mBookmarkItemList:Ljava/util/ArrayList;

    .line 484
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v1, v1, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mBookmarkItemList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->setContent(Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onContentChanged()V

    .line 488
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bShouldRefresh:Z

    .line 489
    return-void
.end method

.method public onPreLoading()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method
