.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;
.super Landroid/os/Handler;
.source "FxWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# instance fields
.field pos:[I

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;


# direct methods
.method private constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 1
    .parameter

    .prologue
    .line 3003
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3004
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->pos:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3003
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 3007
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 3048
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3049
    return-void

    .line 3012
    :pswitch_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->onClickAllProgram()V

    goto :goto_0

    .line 3016
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->resetMiddleButton()V

    .line 3017
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    .line 3019
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "launcher"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3020
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3021
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "tutorial_notice"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3022
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3023
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->hideTipBubble()V

    goto :goto_0

    .line 3026
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :pswitch_3
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->onClickPhone()V

    goto :goto_0

    .line 3034
    :pswitch_4
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->isPageFull()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3036
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDrags()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I
    invoke-static {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$2600(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v1

    .line 3038
    .local v1, fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    const-string v3, "Add_page"

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxDragControl;->playMarker(Ljava/lang/String;)V

    .line 3039
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->addPage()V

    goto/16 :goto_0

    .line 3009
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
