.class Lcom/htc/fm/FMRadio$7;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMRadio;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/htc/fm/FMRadio$7;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/htc/fm/FMRadio$7;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fm/FMRadio;->mIsScanCancelled:Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$602(Lcom/htc/fm/FMRadio;Z)Z

    .line 1441
    iget-object v0, p0, Lcom/htc/fm/FMRadio$7;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/htc/fm/FMRadio$7;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio$7;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/htc/fm/FMRadio$7;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->stopScan()V

    .line 1447
    :cond_1
    return-void
.end method
