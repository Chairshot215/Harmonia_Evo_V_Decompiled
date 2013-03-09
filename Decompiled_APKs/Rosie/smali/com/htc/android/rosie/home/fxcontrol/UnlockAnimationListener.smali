.class public Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;
.super Ljava/lang/Object;
.source "UnlockAnimationListener.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;


# instance fields
.field private mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mWorkspace:Lcom/htc/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 1
    .parameter "workspace"
    .parameter "fxWorkspace"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 10
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 13
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 14
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;)Lcom/htc/launcher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;

    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener$1;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->lock()V

    goto :goto_0
.end method
