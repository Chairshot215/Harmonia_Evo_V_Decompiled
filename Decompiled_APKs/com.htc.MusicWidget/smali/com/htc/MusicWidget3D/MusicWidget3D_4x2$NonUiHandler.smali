.class public final Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;
.super Landroid/os/Handler;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method public constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    .line 156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleNonUIMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method
