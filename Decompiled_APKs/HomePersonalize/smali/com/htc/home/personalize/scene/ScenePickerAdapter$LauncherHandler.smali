.class Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;
.super Landroid/os/Handler;
.source "ScenePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;->this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;Lcom/htc/home/personalize/scene/ScenePickerAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;-><init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 682
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;->this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 685
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 686
    return-void
.end method
