.class Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxFakeMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRightBtnClickListener"
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;->this$0:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;-><init>(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 183
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->skipShowHint()V

    .line 184
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->skipHideMenu()V

    .line 185
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;->this$0:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    #getter for: Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuCallback:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;
    invoke-static {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->access$200(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;)Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;->this$0:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    #getter for: Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuKeyEnable:Z
    invoke-static {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->access$300(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;->this$0:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    const/4 v1, 0x0

    #setter for: Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuKeyEnable:Z
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->access$302(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;Z)Z

    .line 187
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;->this$0:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    #getter for: Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuCallback:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;
    invoke-static {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->access$200(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;)Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;->onKeyRight()V

    .line 189
    :cond_0
    return-void
.end method
