.class Lcom/htc/launcher/Launcher$21;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->removeWidgetsAndLoadUserItems(ZLcom/htc/launcher/Launcher;ZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5946
    iput-object p1, p0, Lcom/htc/launcher/Launcher$21;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5950
    iget-object v0, p0, Lcom/htc/launcher/Launcher$21;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->lockOrientation()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$5700(Lcom/htc/launcher/Launcher;)V

    .line 5952
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$21;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/htc/launcher/LauncherModel;->loadUserItems(ZLcom/htc/launcher/Launcher;ZZ)V

    .line 5953
    return-void
.end method
