.class Lcom/htc/launcher/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/htc/launcher/Workspace$1;->this$0:Lcom/htc/launcher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1357
    sget-object v0, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherAppWidgetHost;->startListening()V

    .line 1358
    return-void
.end method
