.class Lcom/htc/launcher/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel$1;->this$0:Lcom/htc/launcher/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel$1;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;
    invoke-static {v0}, Lcom/htc/launcher/LauncherModel;->access$000(Lcom/htc/launcher/LauncherModel;)Lcom/htc/launcher/ApplicationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 354
    return-void
.end method
