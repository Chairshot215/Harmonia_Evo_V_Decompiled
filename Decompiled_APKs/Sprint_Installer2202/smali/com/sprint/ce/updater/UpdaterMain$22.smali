.class Lcom/sprint/ce/updater/UpdaterMain$22;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->setProgressStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;

.field private final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$22;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput p2, p0, Lcom/sprint/ce/updater/UpdaterMain$22;->val$resId:I

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$22;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    iget v1, p0, Lcom/sprint/ce/updater/UpdaterMain$22;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1196
    return-void
.end method
