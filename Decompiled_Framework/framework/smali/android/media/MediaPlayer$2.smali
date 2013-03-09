.class Landroid/media/MediaPlayer$2;
.super Landroid/media/HDMIStatusObserver$HDMIStatusListener;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->registerHDMINotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Landroid/media/HDMIStatusObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroid/media/HDMIStatusObserver$HDMIStatusListener;-><init>(Landroid/media/HDMIStatusObserver;)V

    return-void
.end method


# virtual methods
.method public onPlug()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->onHDMIStateChanged(Z)V

    return-void
.end method

.method public onUnPlug()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->onHDMIStateChanged(Z)V

    return-void
.end method
