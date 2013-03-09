.class public abstract Lcom/htc/android/rosie/home/fxcontrol/DropZone;
.super Ljava/lang/Object;
.source "DropZone.java"


# instance fields
.field protected mAction:Ljava/lang/Runnable;

.field private mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private mListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

.field public mOverlayColor:I

.field private mScope:Ljava/lang/String;

.field private mTarget:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V
    .locals 2
    .parameter "scope"
    .parameter "drop"
    .parameter "target"
    .parameter "overlay"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 19
    .local v0, scopes:[Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mScope:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 22
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mTarget:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    .line 23
    iput p4, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mOverlayColor:I

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

    return-object v0
.end method


# virtual methods
.method accept(Lcom/htc/launcher/Draggee;)Z
    .locals 1
    .parameter "draggee"

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public bindListener(Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

    .line 28
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/DropZone$1;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->bindEvent(Lcom/htc/fusion/fx/IMessageSource;Lcom/htc/fusion/fx/MessageListener;)V

    .line 33
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/DropZone$2;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->bindEvent(Lcom/htc/fusion/fx/IMessageSource;Lcom/htc/fusion/fx/MessageListener;)V

    .line 38
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOutSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/DropZone$3;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone$3;-><init>(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->bindEvent(Lcom/htc/fusion/fx/IMessageSource;Lcom/htc/fusion/fx/MessageListener;)V

    .line 43
    return-void
.end method

.method destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->unbindListener()V

    .line 86
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 87
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mScope:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mTarget:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    .line 89
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mAction:Ljava/lang/Runnable;

    .line 90
    return-void
.end method

.method public getAction()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method getDrop()Lcom/htc/fusion/fx/controls/FxDropControl;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    return-object v0
.end method

.method getScopeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mTarget:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 56
    const-string v0, "EditZone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] DropZone.setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDropControl;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mTarget:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    iput-boolean p1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->acceptDrop:Z

    .line 59
    return-void
.end method

.method unbindListener()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->destroy()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

    goto :goto_0
.end method

.method public abstract updateBounds()V
.end method
