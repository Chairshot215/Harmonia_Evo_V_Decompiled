.class Lcom/htc/launcher/DesktopItemController$4;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->reloadFxWidgetAsync(Lcom/htc/launcher/FxItemInfo;)V
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
    .line 1066
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$4;->this$0:Lcom/htc/launcher/DesktopItemController;

    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$4;->val$fxItemInfo:Lcom/htc/launcher/FxItemInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$4;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$4;->val$fxItemInfo:Lcom/htc/launcher/FxItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->rebindFxWidget(Lcom/htc/launcher/FxItemInfo;)V

    .line 1069
    return-void
.end method
