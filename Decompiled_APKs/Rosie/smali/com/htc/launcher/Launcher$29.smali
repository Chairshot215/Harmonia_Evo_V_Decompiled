.class Lcom/htc/launcher/Launcher$29;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->updateApplicationListAfterMccMncChanged()V
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
    .line 7900
    iput-object p1, p0, Lcom/htc/launcher/Launcher$29;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7903
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/LauncherModel;->getApplicationsAdapter()Lcom/htc/launcher/ApplicationsAdapter;

    move-result-object v0

    .line 7907
    .local v0, applicationList:Lcom/htc/launcher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/htc/launcher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 7908
    return-void
.end method
