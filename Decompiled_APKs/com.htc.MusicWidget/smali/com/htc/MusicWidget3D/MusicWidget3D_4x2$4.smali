.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V
    .locals 0
    .parameter

    .prologue
    .line 980
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 980
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 982
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 983
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mPlayPauseButton is clicked."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 985
    .local v0, playCurrTime:J
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayOldTime:J
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->access$100(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 986
    const-string v2, "[MusicWidget3D]"

    const-string v3, "too quickly. Discard it"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .end local v0           #playCurrTime:J
    :goto_0
    return-void

    .line 989
    .restart local v0       #playCurrTime:J
    :cond_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    #setter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayOldTime:J
    invoke-static {v2, v0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->access$102(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;J)J

    .line 990
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->playback()V

    goto :goto_0

    .line 992
    .end local v0           #playCurrTime:J
    :cond_1
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mPlayPauseButton: Do nothing if widget is not visible."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
