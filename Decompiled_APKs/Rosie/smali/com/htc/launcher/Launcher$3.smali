.class Lcom/htc/launcher/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/htc/launcher/Launcher$3;->this$0:Lcom/htc/launcher/Launcher;

    iput p2, p0, Lcom/htc/launcher/Launcher$3;->val$requestCode:I

    iput p3, p0, Lcom/htc/launcher/Launcher$3;->val$resultCode:I

    iput-object p4, p0, Lcom/htc/launcher/Launcher$3;->val$data:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/htc/launcher/Launcher$3;->this$0:Lcom/htc/launcher/Launcher;

    iget v1, p0, Lcom/htc/launcher/Launcher$3;->val$requestCode:I

    iget v2, p0, Lcom/htc/launcher/Launcher$3;->val$resultCode:I

    iget-object v3, p0, Lcom/htc/launcher/Launcher$3;->val$data:Landroid/content/Intent;

    #calls: Lcom/htc/launcher/Launcher;->onWidgetActivityResult(IILandroid/content/Intent;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/launcher/Launcher;->access$1600(Lcom/htc/launcher/Launcher;IILandroid/content/Intent;)V

    .line 1123
    return-void
.end method
