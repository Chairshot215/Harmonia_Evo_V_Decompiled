.class public Lcom/htc/dlnamediaserver/Stop;
.super Landroid/app/Activity;
.source "Stop.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Stop;->stopService(Landroid/content/Intent;)Z

    .line 14
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/Stop;->finish()V

    .line 15
    return-void
.end method
