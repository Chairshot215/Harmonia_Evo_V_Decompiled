.class Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;
.super Landroid/content/BroadcastReceiver;
.source "GridWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;


# direct methods
.method constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->bShouldRefresh:Z

    .line 47
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;

    iget-boolean v0, v0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->bIsWidgetOnScreen:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mLoaderCallback:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mLoaderCallback:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onObservedChanges()V

    .line 52
    :cond_0
    return-void
.end method
