.class Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;
.super Ljava/lang/Object;
.source "PortQwertySIPViewTutorial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

.field final synthetic val$this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->val$this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const v3, 0x7f02011d

    const v2, 0x7f02011c

    const/16 v6, 0x42

    .line 1033
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1034
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$1300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$1400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1036
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$1900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$1500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$1600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$1700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$1800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1071
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1038
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1040
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1044
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 1045
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1046
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$2900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1047
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1048
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1050
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 1051
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 1052
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v6}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 1053
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1055
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mIntentClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mIntentTarget:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1057
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$3800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1060
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$3900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1062
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1063
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1064
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->access$4700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1066
    :cond_6
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 1067
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 1068
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;->this$1:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v6}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_0
.end method
