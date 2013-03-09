.class Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;
.super Ljava/lang/Object;
.source "BaseWidgetView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 508
    const-class v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;-><init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x8002

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v4, 0x8000

    .line 510
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 577
    :goto_0
    return v0

    .line 513
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iput-boolean v1, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bIsWidgetOnScreen:Z

    .line 519
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onResume()V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-boolean v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bShouldRefresh:Z

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    :cond_2
    :goto_1
    move v0, v1

    .line 577
    goto :goto_0

    .line 533
    :pswitch_1
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v2, :cond_3

    .line 534
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x8001

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 535
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 536
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 539
    :cond_3
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iput-boolean v0, v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bIsWidgetOnScreen:Z

    .line 541
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onPause()V

    goto :goto_1

    .line 547
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getTags()[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    invoke-static {v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$300(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;->startLoadBookmark(Ljava/lang/Object;)V

    goto :goto_1

    .line 557
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->unbindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 560
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    invoke-virtual {v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 561
    sget-boolean v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 563
    :cond_5
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_6

    .line 564
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v0, v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    iget-object v2, v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 570
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    invoke-virtual {v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_1

    .line 510
    :pswitch_data_0
    .packed-switch 0x8000
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
