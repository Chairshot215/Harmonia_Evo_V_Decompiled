.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$1;
.super Landroid/os/Handler;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$1;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$1;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleUiHandlerMessage(Landroid/os/Message;)Z

    .line 231
    return-void
.end method
