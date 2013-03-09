.class Lcom/htc/lmw/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 119
    iput-object p1, p0, Lcom/htc/lmw/MainActivity$3;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$3;->this$0:Lcom/htc/lmw/MainActivity;

    iput-boolean v1, v0, Lcom/htc/lmw/MainActivity;->dialogActive:Z

    .line 125
    sget-boolean v0, Lcom/htc/lmw/MainActivity;->memoryAlreadyFreed:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$3;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-static {v0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$3;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$3;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-virtual {v0}, Lcom/htc/lmw/MainActivity;->finish()V

    .line 132
    return-void
.end method
