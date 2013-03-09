.class public Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
.super Ljava/lang/Object;
.source "ItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;,
        Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;
    }
.end annotation


# static fields
.field public static final CONTAINER_NAME:Ljava/lang/String; = "container"

.field public static final DRAG_NAME:Ljava/lang/String; = "Drag"

.field public static final DRAG_SCOPE:[Ljava/lang/String; = null

.field public static final DRAG_SCOPE_EDIT:Ljava/lang/String; = "item.drag_scope.edit"

.field public static final DRAG_SCOPE_EMPTY:Ljava/lang/String; = "empty"

.field public static final DRAG_SCOPE_FULL:Ljava/lang/String; = "full"

.field public static final DRAG_SCOPE_LAUNCHERBAR_FULL:Ljava/lang/String; = "launcherbar_full"

.field public static final DRAG_SCOPE_NAVBAR_ACCEPT:Ljava/lang/String; = "accept"

.field public static final DRAG_SCOPE_NO_DESKTOP:[Ljava/lang/String; = null

.field public static final DRAG_SCOPE_REMOVE:Ljava/lang/String; = "item.drag_scope.remove"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PICK_VIBRATE_DURATION:I = 0x32


# instance fields
.field private mCanDrop:Z

.field private mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

.field private mDragBeginListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mDragEndListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private mDropOverListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mFrozen:Z

.field private mIsItemDraggable:Z

.field mMarkerStart:Lcom/htc/fusion/fx/Marker;

.field private mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

.field private mPickVibrator:Landroid/os/Vibrator;

.field private mPicked:Z

.field private mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScene:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "item.drag_scope.remove"

    aput-object v1, v0, v2

    const-string v1, "item.drag_scope.edit"

    aput-object v1, v0, v3

    const-string v1, "full"

    aput-object v1, v0, v4

    const-string v1, "empty"

    aput-object v1, v0, v5

    const-string v1, "accept"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->DRAG_SCOPE:[Ljava/lang/String;

    .line 51
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "item.drag_scope.remove"

    aput-object v1, v0, v2

    const-string v1, "item.drag_scope.edit"

    aput-object v1, v0, v3

    const-string v1, "full"

    aput-object v1, v0, v4

    const-string v1, "accept"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->DRAG_SCOPE_NO_DESKTOP:[Ljava/lang/String;

    .line 52
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mFrozen:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mIsItemDraggable:Z

    .line 64
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickVibrator:Landroid/os/Vibrator;

    .line 70
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragBeginListener:Lcom/htc/fusion/fx/MessageListener;

    .line 82
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragEndListener:Lcom/htc/fusion/fx/MessageListener;

    .line 94
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    .line 111
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$4;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$4;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    .line 219
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mCanDrop:Z

    .line 187
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;-><init>(Lcom/htc/fusion/fx/FxScene;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/fusion/fx/controls/FxDragControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setDrop(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setItem(Lcom/htc/fusion/fx/FxScene;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setContainer(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setDrag(Ljava/lang/String;)V

    .line 180
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragBeginListener:Lcom/htc/fusion/fx/MessageListener;

    .line 181
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragEndListener:Lcom/htc/fusion/fx/MessageListener;

    .line 182
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    .line 183
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 184
    return-void
.end method

.method public drop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z

    .line 305
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    if-eqz v0, :cond_2

    .line 307
    const-string v0, "ItemContainer"

    const-string v1, "[EDIT_DEBUG] ItemContainer.drop() - endDrag() - start"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDragControl;->endDrag()V

    .line 309
    const-string v0, "ItemContainer"

    const-string v1, "[EDIT_DEBUG] ItemContainer.drop() - endDrag() - end"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;->onPick(Z)V

    goto :goto_0
.end method

.method public dropObject()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public enableDrag(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 273
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mIsItemDraggable:Z

    .line 274
    return-void
.end method

.method public freeze()V
    .locals 3

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mFrozen:Z

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeze widget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->freeze()Ljava/util/concurrent/Future;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mFrozen:Z

    goto :goto_0
.end method

.method getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mIsItemDraggable:Z

    return v0
.end method

.method public pick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 294
    :cond_0
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z

    .line 295
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;->onPick(Z)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDragControl;->beginDrag()V

    goto :goto_0
.end method

.method public setContainer(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-class v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendantByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    goto :goto_0
.end method

.method public setDrag(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getBeginDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragBeginListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 234
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getEndDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragEndListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 235
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-class v2, Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getChildByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDragControl;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 243
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    if-eqz v1, :cond_2

    .line 244
    sget-boolean v1, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetDrag("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxDragControl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mCanDrop:Z

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->DRAG_SCOPE:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->setDragScope([Ljava/lang/String;)V

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    sget v2, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->MANUAL:I

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->setBeginDragStyle(I)V

    .line 253
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getBeginDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragBeginListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 255
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    sget v2, Lcom/htc/fusion/fx/FxDraggable$EndDragStyle;->MANUAL:I

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEndDragStyle(I)V

    .line 256
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getEndDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDragEndListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 258
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 260
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mIsItemDraggable:Z

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    const-string v2, "Drag_start"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mMarkerStart:Lcom/htc/fusion/fx/Marker;

    .line 264
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    const-class v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->getChildByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 265
    .local v0, hb:Lcom/htc/fusion/fx/controls/FxHitbox;
    if-eqz v0, :cond_2

    .line 266
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setTouchOpacity(I)V

    .line 269
    .end local v0           #hb:Lcom/htc/fusion/fx/controls/FxHitbox;
    :cond_2
    return-void

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->DRAG_SCOPE_NO_DESKTOP:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->setDragScope([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDragVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 326
    :cond_0
    return-void
.end method

.method public setDrop(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDropControl;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 283
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    goto :goto_0
.end method

.method public setDrop(Z)V
    .locals 2
    .parameter "bCanDrop"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mCanDrop:Z

    .line 223
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mCanDrop:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->DRAG_SCOPE:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setDragScope([Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->DRAG_SCOPE_NO_DESKTOP:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setDragScope([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setItem(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    goto :goto_0
.end method

.method public setOnPickListener(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    .line 320
    return-void
.end method

.method setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;
    .locals 0
    .parameter "fxScene"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object p1
.end method

.method public thaw()V
    .locals 3

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mFrozen:Z

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thaw widget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->thaw()V

    .line 347
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mFrozen:Z

    goto :goto_0
.end method
