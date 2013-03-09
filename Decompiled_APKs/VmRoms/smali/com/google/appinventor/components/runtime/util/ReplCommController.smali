.class public Lcom/google/appinventor/components/runtime/util/ReplCommController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;
    }
.end annotation


# static fields
.field public static final BLOCKS_EDITOR_PORT:I = 0x270d

.field private static final LOG_TAG:Ljava/lang/String; = "REPL Controller"


# instance fields
.field private blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

.field private everStarted:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->everStarted:Z

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    const/16 v1, 0x270d

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;-><init>(Lcom/google/appinventor/components/runtime/util/ReplCommController;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    return-void
.end method

.method private ShowAlert(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/ReplCommController$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/ReplCommController$1;-><init>(Lcom/google/appinventor/components/runtime/util/ReplCommController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->StopServer()V

    return-void
.end method

.method public startListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->everStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->ServerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->StartServer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->everStarted:Z

    if-eqz p1, :cond_0

    const-string v0, "Listening to App Inventor. Click \"Restart app on device\" in the Blocks Editor  if you don\'t eventually see your components."

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->ShowAlert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopListening(Z)V
    .locals 0

    return-void
.end method
