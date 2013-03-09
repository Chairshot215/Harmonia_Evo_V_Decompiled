.class Lcom/htc/launcher/LauncherModel$DesktopItemsLoader$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

.field final synthetic val$launcher:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader$1;->this$1:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    iput-object p2, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->onDesktopItemsLoaded()V

    .line 926
    return-void
.end method
