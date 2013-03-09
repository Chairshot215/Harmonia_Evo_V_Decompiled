.class Lcom/sprint/ce/updater/UpdaterMain$11;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->showOverrideFileDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$11;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$11;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const/4 v1, 0x1

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->fileOverride(Z)V
    invoke-static {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$13(Lcom/sprint/ce/updater/UpdaterMain;Z)V

    .line 599
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 600
    return-void
.end method
