.class Lcom/htc/launcher/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Workspace;->updateApplicationIconForPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;

.field final synthetic val$theView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3330
    iput-object p1, p0, Lcom/htc/launcher/Workspace$7;->this$0:Lcom/htc/launcher/Workspace;

    iput-object p2, p0, Lcom/htc/launcher/Workspace$7;->val$theView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/htc/launcher/Workspace$7;->val$theView:Landroid/view/View;

    check-cast v0, Lcom/htc/launcher/Folder;

    invoke-virtual {v0}, Lcom/htc/launcher/Folder;->notifyDataSetChanged()V

    .line 3334
    const-string v0, "Workspace"

    const-string v1, "[UPDATEICON] updateApplicationIconForPackage() UserFolder notifyDataSetChanged()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    return-void
.end method
