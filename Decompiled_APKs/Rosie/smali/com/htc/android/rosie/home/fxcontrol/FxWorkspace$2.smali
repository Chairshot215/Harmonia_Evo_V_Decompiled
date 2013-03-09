.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;
.super Ljava/lang/Object;
.source "FxWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onNavbarButtonLongTab(ILcom/htc/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field final synthetic val$nNavbarIndex:I

.field final synthetic val$runInfo:Lcom/htc/launcher/FxShortcutInfo;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/launcher/FxShortcutInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3322
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->val$runInfo:Lcom/htc/launcher/FxShortcutInfo;

    iput p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->val$nNavbarIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$2700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3325
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[LauncherBar] There is already something that be drag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :goto_0
    return-void

    .line 3328
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->val$runInfo:Lcom/htc/launcher/FxShortcutInfo;

    const-wide/16 v1, -0x3e5

    iput-wide v1, v0, Lcom/htc/launcher/FxShortcutInfo;->container:J

    .line 3330
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->val$nNavbarIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->startDragFromNavBar(I)V

    .line 3331
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->switchToStickyMode(Z)V

    goto :goto_0
.end method
