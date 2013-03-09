.class Lcom/htc/lmw/MainActivity$1;
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
    .line 87
    iput-object p1, p0, Lcom/htc/lmw/MainActivity$1;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$1;->this$0:Lcom/htc/lmw/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/lmw/MainActivity;->dialogActive:Z

    .line 93
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$1;->this$0:Lcom/htc/lmw/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 95
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/MainActivity$1;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/Wizard;->start(Landroid/app/Activity;)V

    .line 96
    iget-object v0, p0, Lcom/htc/lmw/MainActivity$1;->this$0:Lcom/htc/lmw/MainActivity;

    invoke-virtual {v0}, Lcom/htc/lmw/MainActivity;->finish()V

    .line 97
    return-void
.end method
