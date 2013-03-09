.class public Lcom/htc/music/ScanningProgressActivity;
.super Landroid/app/Activity;
.source "ScanningProgressActivity.java"


# static fields
.field private static final CHECK:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/htc/music/ScanningProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/ScanningProgressActivity$1;-><init>(Lcom/htc/music/ScanningProgressActivity;)V

    iput-object v0, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/ScanningProgressActivity;->setVolumeControlStream(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/ScanningProgressActivity;->requestWindowFeature(I)Z

    const v1, 0x7f030058

    invoke-virtual {p0, v1}, Lcom/htc/music/ScanningProgressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/ScanningProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0, v3}, Lcom/htc/music/ScanningProgressActivity;->setResult(I)V

    iget-object v1, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
