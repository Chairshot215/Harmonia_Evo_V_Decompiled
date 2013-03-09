.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicWidget3D_4x4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShuffleClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;


# direct methods
.method private constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-virtual {v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->isWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "[MusicWidget3D]"

    const-string v1, "shuffle is clicked"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mLastHitTimeStamp:J

    .line 429
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #calls: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->toggleShuffle()V
    invoke-static {v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$300(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V

    .line 434
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 422
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
