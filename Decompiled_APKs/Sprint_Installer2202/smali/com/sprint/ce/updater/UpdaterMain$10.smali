.class Lcom/sprint/ce/updater/UpdaterMain$10;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->validateOverride(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;

.field private final synthetic val$appName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$10;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput-object p2, p0, Lcom/sprint/ce/updater/UpdaterMain$10;->val$appName:Ljava/lang/String;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$10;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$10;->val$appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->showOverrideFileDialog(Ljava/lang/String;)V

    .line 574
    return-void
.end method
