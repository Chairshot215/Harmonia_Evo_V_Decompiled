.class final Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;
.super Landroid/os/Handler;
.source "ShareFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/ShareFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/ShareFolder;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamediaserver/ShareFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamediaserver/ShareFolder;Lcom/htc/dlnamediaserver/ShareFolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;-><init>(Lcom/htc/dlnamediaserver/ShareFolder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-virtual {v1}, Lcom/htc/dlnamediaserver/ShareFolder;->UpdateCheckedShared()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
