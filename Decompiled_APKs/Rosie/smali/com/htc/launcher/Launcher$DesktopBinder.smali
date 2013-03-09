.class Lcom/htc/launcher/Launcher$DesktopBinder;
.super Landroid/os/Handler;
.source "Launcher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopBinder"
.end annotation


# static fields
.field static final HTCWIDGETS_COUNT:I = 0x1

.field static final ITEMS_COUNT:I = 0xc8

.field static final MESSAGE_BIND_APPWIDGETS:I = 0x2

.field static final MESSAGE_BIND_HTCWIDGETS:I = 0x100

.field static final MESSAGE_BIND_ITEMS:I = 0x1


# instance fields
.field private final mAppWidgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHtcWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mTerminate:Z


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "launcher"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/Launcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6752
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    .local p3, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/LauncherAppWidgetInfo;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6749
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mTerminate:Z

    .line 6828
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mHtcWidgets:Ljava/util/ArrayList;

    .line 6754
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 6755
    iput-object p2, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    .line 6758
    iget-object v4, p1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 6759
    .local v1, currentScreen:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6760
    .local v3, size:I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    .line 6762
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 6763
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 6764
    .local v0, appWidgetInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    iget v4, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ne v4, v1, :cond_0

    .line 6765
    iget-object v4, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6762
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6767
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 6770
    .end local v0           #appWidgetInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    :cond_1
    return-void
.end method

.method private bindHtcWidgets(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .locals 13
    .parameter "binder"
    .parameter
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/Launcher$DesktopBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetProxy;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 6846
    .local p2, htcWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetProxy;>;"
    iget-object v10, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/Launcher;

    .line 6847
    .local v6, launcher:Lcom/htc/launcher/Launcher;
    if-nez v6, :cond_0

    .line 6879
    :goto_0
    return-void

    .line 6850
    :cond_0
    iget-object v9, v6, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 6851
    .local v9, workspace:Lcom/htc/launcher/Workspace;
    invoke-virtual {v9}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v7

    .line 6852
    .local v7, screen:I
    #getter for: Lcom/htc/launcher/Launcher;->mDesktopLocked:Z
    invoke-static {v6}, Lcom/htc/launcher/Launcher;->access$7800(Lcom/htc/launcher/Launcher;)Z

    move-result v1

    .line 6854
    .local v1, desktopLocked:Z
    add-int/lit8 v10, p3, 0x1

    move/from16 v0, p4

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6856
    .local v2, end:I
    move/from16 v4, p3

    .line 6858
    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 6859
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/WidgetProxy;

    .line 6861
    .local v5, item:Lcom/htc/launcher/WidgetProxy;
    :try_start_0
    invoke-virtual {v9, v7}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v10, v11}, Lcom/htc/launcher/WidgetProxy;->inflate(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 6863
    .local v8, view2:Landroid/view/View;
    invoke-virtual {v8, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6864
    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v11

    if-nez v1, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v8, v5, v10}, Lcom/htc/launcher/DesktopItemController;->addWidgetAsync(Landroid/view/View;Lcom/htc/launcher/Widget;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6858
    .end local v8           #view2:Landroid/view/View;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6864
    .restart local v8       #view2:Landroid/view/View;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 6865
    .end local v8           #view2:Landroid/view/View;
    :catch_0
    move-exception v3

    .line 6866
    .local v3, ex:Ljava/lang/Exception;
    const-string v10, "Rosie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error found in - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6867
    const-string v10, "Rosie"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 6873
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #item:Lcom/htc/launcher/WidgetProxy;
    :cond_2
    move/from16 v0, p4

    if-lt v2, v0, :cond_3

    .line 6874
    #calls: Lcom/htc/launcher/Launcher;->finishBindDesktopHtcWidgets()V
    invoke-static {v6}, Lcom/htc/launcher/Launcher;->access$7900(Lcom/htc/launcher/Launcher;)V

    goto :goto_0

    .line 6876
    :cond_3
    const/16 v10, 0x100

    move/from16 v0, p4

    invoke-virtual {p1, v10, v4, v0}, Lcom/htc/launcher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public addHtcWidget(Lcom/htc/launcher/WidgetProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 6837
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-static {}, Lcom/htc/launcher/Launcher;->access$7700()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6838
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mHtcWidgets:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6842
    :goto_0
    return-void

    .line 6840
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mHtcWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 6798
    iget-object v1, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher;

    .line 6799
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mTerminate:Z

    if-eqz v1, :cond_1

    .line 6822
    :cond_0
    :goto_0
    return-void

    .line 6803
    :cond_1
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[APTR_TEST, rider_s_351] handleMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6805
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 6807
    :sswitch_0
    iget-object v1, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/htc/launcher/Launcher;->bindItems(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    invoke-static {v0, p0, v1, v2, v3}, Lcom/htc/launcher/Launcher;->access$7500(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 6811
    :sswitch_1
    iget-object v1, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    #calls: Lcom/htc/launcher/Launcher;->bindAppWidgets(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    invoke-static {v0, p0, v1}, Lcom/htc/launcher/Launcher;->access$7600(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    goto :goto_0

    .line 6817
    :sswitch_2
    iget-object v1, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mHtcWidgets:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, p0, v1, v2, v3}, Lcom/htc/launcher/Launcher$DesktopBinder;->bindHtcWidgets(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 6805
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method public queueIdle()Z
    .locals 2

    .prologue
    .line 6787
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "[APTR_TEST, rider_s_351] DesktopBinder queueIdle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6788
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    .line 6789
    const/4 v0, 0x0

    return v0
.end method

.method public startBindingAppWidgets()V
    .locals 1

    .prologue
    .line 6793
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6794
    return-void
.end method

.method public startBindingAppWidgetsWhenIdle()V
    .locals 3

    .prologue
    .line 6779
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rosie"

    const-string v2, "[APTR_TEST, rider_s_351] startBindingAppWidgetsWhenIdle()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 6781
    .local v0, messageQueue:Landroid/os/MessageQueue;
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 6782
    return-void
.end method

.method public startBindingHtcWidgets()V
    .locals 3

    .prologue
    .line 6831
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "[APTR_TEST, rider_s_351] startBindingHtcWidgets()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6832
    :cond_0
    const/16 v0, 0x100

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mHtcWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6834
    return-void
.end method

.method public startBindingItems()V
    .locals 3

    .prologue
    .line 6773
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/launcher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6775
    return-void
.end method
