.class public Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlBGHandler;
.super Landroid/os/Handler;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyCtrlBGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/ctrl/BaseCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlBGHandler;->this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlBGHandler;->this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->handleMessageBG(Landroid/os/Message;)V

    .line 77
    return-void
.end method
