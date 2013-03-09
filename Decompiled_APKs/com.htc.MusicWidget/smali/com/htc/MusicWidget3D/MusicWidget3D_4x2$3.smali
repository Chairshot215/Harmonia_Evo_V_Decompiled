.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;
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
    .line 926
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 926
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x3

    .line 928
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 929
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-boolean v0, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 930
    const-string v0, "[MusicWidget3D]"

    const-string v1, "prev, remove because is updating"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v0, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v0, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v0, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    .line 936
    const-string v0, "[MusicWidget3D]"

    const-string v1, "prev, remove"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v0, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 942
    :cond_3
    const-string v0, "[MusicWidget3D]"

    const-string v1, "prev button: Do nothing because widget is invisible."

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
