.class Lcom/htc/idlescreen/base/reminderview/IncomingCallView$1;
.super Ljava/lang/Object;
.source "IncomingCallView.java"

# interfaces
.implements Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/IncomingCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/IncomingCallView;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/reminderview/IncomingCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$1;->this$0:Lcom/htc/idlescreen/base/reminderview/IncomingCallView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyLeft()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$1;->this$0:Lcom/htc/idlescreen/base/reminderview/IncomingCallView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->closeMenu()V

    .line 514
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->sendMessagetoRejectCall()V

    .line 516
    return-void
.end method

.method public onKeyRight()V
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->MuteCall()V

    .line 522
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$1;->this$0:Lcom/htc/idlescreen/base/reminderview/IncomingCallView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->closeMenu()V

    .line 523
    return-void
.end method
