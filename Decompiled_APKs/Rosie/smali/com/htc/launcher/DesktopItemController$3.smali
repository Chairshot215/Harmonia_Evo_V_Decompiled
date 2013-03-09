.class Lcom/htc/launcher/DesktopItemController$3;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->addFxWidgetAsync(Lcom/htc/launcher/FxItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;

.field final synthetic val$fxItemInfo:Lcom/htc/launcher/FxItemInfo;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FxItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$3;->this$0:Lcom/htc/launcher/DesktopItemController;

    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$3;->val$fxItemInfo:Lcom/htc/launcher/FxItemInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1053
    invoke-static {}, Lcom/htc/launcher/DesktopItemController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APTR_TEST, shooterU_534] addFxWidgetAsync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$3;->val$fxItemInfo:Lcom/htc/launcher/FxItemInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$3;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$3;->val$fxItemInfo:Lcom/htc/launcher/FxItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->bindFxWidget(Lcom/htc/launcher/FxItemInfo;)V

    .line 1055
    return-void
.end method
