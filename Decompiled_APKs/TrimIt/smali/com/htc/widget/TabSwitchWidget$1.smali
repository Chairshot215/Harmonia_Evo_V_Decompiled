.class Lcom/htc/widget/TabSwitchWidget$1;
.super Ljava/lang/Object;
.source "TabSwitchWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchWidget;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget$1;->this$0:Lcom/htc/widget/TabSwitchWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1228
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget$1;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #getter for: Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z
    invoke-static {v1}, Lcom/htc/widget/TabSwitchWidget;->access$000(Lcom/htc/widget/TabSwitchWidget;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v3

    .line 1231
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1232
    .local v0, action:I
    if-nez v0, :cond_3

    .line 1233
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget$1;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #getter for: Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z
    invoke-static {v1}, Lcom/htc/widget/TabSwitchWidget;->access$100(Lcom/htc/widget/TabSwitchWidget;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1234
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget$1;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #getter for: Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchWidget;->access$200(Lcom/htc/widget/TabSwitchWidget;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1239
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget$1;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #getter for: Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z
    invoke-static {v1}, Lcom/htc/widget/TabSwitchWidget;->access$300(Lcom/htc/widget/TabSwitchWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget$1;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #setter for: Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z
    invoke-static {v1, v3}, Lcom/htc/widget/TabSwitchWidget;->access$102(Lcom/htc/widget/TabSwitchWidget;Z)Z

    goto :goto_0

    .line 1235
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1237
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget$1;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #getter for: Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchWidget;->access$200(Lcom/htc/widget/TabSwitchWidget;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
