.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicWidgetClickListener"
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
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method private constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const-string v0, "[MusicWidget3D]"

    const-string v1, "Music widget is clicked"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-wide v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mLastHitTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v0, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/MusicWidget3D/MusicUtils;->launchMusic(Landroid/content/Context;)V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const-string v0, "[MusicWidget3D]"

    const-string v1, "Ignore this time Music AP launch"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 866
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
