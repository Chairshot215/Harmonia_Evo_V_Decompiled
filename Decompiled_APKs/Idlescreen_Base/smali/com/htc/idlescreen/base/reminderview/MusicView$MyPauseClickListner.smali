.class Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPauseClickListner"
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 361
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 364
    const-string v1, "MusicView"

    const-string v2, "MyPauseClickListner"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->skipShowHint()V

    .line 366
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getMusicCtrl()Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    move-result-object v0

    .line 367
    .local v0, musicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->triggerPlay(Z)V

    .line 368
    return-void
.end method
