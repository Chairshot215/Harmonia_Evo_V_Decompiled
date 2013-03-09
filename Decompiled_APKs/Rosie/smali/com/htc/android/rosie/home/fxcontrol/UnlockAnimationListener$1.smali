.class Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener$1;
.super Ljava/lang/Object;
.source "UnlockAnimationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->access$000(Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;)Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->unlock()V

    .line 32
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->access$000(Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;)Lcom/htc/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->access$000(Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;)Lcom/htc/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 33
    return-void
.end method
