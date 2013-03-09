.class Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSceneListReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 9538
    iput-object p1, p0, Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9538
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 9542
    iget-object v0, p0, Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2800(Lcom/htc/launcher/Launcher;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->setSceneUpdate(Z)V

    .line 9543
    return-void
.end method
