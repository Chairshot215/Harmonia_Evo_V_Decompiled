.class Lcom/sprint/ce/updater/UpdaterMain$13;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->setViewStatusOnUi(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;

.field private final synthetic val$mainStatus:I

.field private final synthetic val$progressButton:I

.field private final synthetic val$progressStatus:I

.field private final synthetic val$showProgressBar:Z


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput p2, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$mainStatus:I

    iput p3, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$progressButton:I

    iput p4, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$progressStatus:I

    iput-boolean p5, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$showProgressBar:Z

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 643
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget v1, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$mainStatus:I

    iget v2, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$progressButton:I

    iget v3, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$progressStatus:I

    iget-boolean v4, p0, Lcom/sprint/ce/updater/UpdaterMain$13;->val$showProgressBar:Z

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 644
    return-void
.end method
