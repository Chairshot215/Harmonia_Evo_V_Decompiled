.class Lcom/htc/lmw/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/lmw/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/lmw/MainActivity$2;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$2;->this$0:Lcom/htc/lmw/MainActivity;

    iput-boolean v1, v0, Lcom/htc/lmw/MainActivity;->dialogActive:Z

    .line 108
    sget-boolean v0, Lcom/htc/lmw/MainActivity;->memoryAlreadyFreed:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$2;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-static {v0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$2;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$2;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-virtual {v0}, Lcom/htc/lmw/MainActivity;->finish()V

    .line 115
    return-void
.end method
