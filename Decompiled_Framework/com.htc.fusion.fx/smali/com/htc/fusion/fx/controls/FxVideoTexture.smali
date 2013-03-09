.class public Lcom/htc/fusion/fx/controls/FxVideoTexture;
.super Lcom/htc/fusion/fx/FxNodeControl;
.source "FxVideoTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxVideoTexture$1;,
        Lcom/htc/fusion/fx/controls/FxVideoTexture$BasicFuture;,
        Lcom/htc/fusion/fx/controls/FxVideoTexture$FutureBase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FxVideoTexture"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxNodeControl;-><init>(I)V

    return-void
.end method

.method private native nativeConnectMediaPlayer(Landroid/media/MediaPlayer;Lcom/htc/fusion/fx/controls/FxVideoTexture$FutureBase;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            "Lcom/htc/fusion/fx/controls/FxVideoTexture$FutureBase",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native nativeDisconnectMediaPlayer(Lcom/htc/fusion/fx/controls/FxVideoTexture$FutureBase;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/controls/FxVideoTexture$FutureBase",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method


# virtual methods
.method public connectMediaPlayer(Landroid/media/MediaPlayer;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/htc/fusion/fx/controls/FxVideoTexture$BasicFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/controls/FxVideoTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxVideoTexture;Lcom/htc/fusion/fx/controls/FxVideoTexture$1;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->nativeConnectMediaPlayer(Landroid/media/MediaPlayer;Lcom/htc/fusion/fx/controls/FxVideoTexture$FutureBase;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxVideoTexture$BasicFuture;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public disconnectMediaPlayer()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/htc/fusion/fx/controls/FxVideoTexture$BasicFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/controls/FxVideoTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxVideoTexture;Lcom/htc/fusion/fx/controls/FxVideoTexture$1;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->nativeDisconnectMediaPlayer(Lcom/htc/fusion/fx/controls/FxVideoTexture$FutureBase;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxVideoTexture$BasicFuture;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
