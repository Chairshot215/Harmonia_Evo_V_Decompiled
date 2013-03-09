.class public Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MarqueePlayListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method protected constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V
    .locals 0
    .parameter

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->runMarquee()V

    .line 2329
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2326
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
