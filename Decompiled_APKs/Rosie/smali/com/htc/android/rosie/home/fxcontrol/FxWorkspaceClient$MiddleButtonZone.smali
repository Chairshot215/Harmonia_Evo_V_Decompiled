.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;
.super Lcom/htc/android/rosie/home/fxcontrol/DropZone;
.source "FxWorkspaceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiddleButtonZone"
.end annotation


# instance fields
.field private mButtonID:I

.field private mControlName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method private constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "scope"
    .parameter "drop"
    .parameter "target"
    .parameter "controlName"
    .parameter "buttonID"

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 1442
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V

    .line 1444
    iput p6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;->mButtonID:I

    .line 1445
    iput-object p5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;->mControlName:Ljava/lang/String;

    .line 1447
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mAction:Ljava/lang/Runnable;

    .line 1451
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;Ljava/lang/String;ILcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 1438
    invoke-direct/range {p0 .. p6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method accept(Lcom/htc/launcher/Draggee;)Z
    .locals 2
    .parameter "draggee"

    .prologue
    const/4 v0, 0x1

    .line 1454
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return v0

    .line 1457
    :cond_1
    instance-of v1, p1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    if-nez v1, :cond_0

    .line 1462
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getScopeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;->mControlName:Ljava/lang/String;

    return-object v0
.end method

.method public updateBounds()V
    .locals 0

    .prologue
    .line 1472
    return-void
.end method
