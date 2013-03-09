.class Lcom/htc/WifiRouter/WifiRouter$UiHandler;
.super Landroid/os/Handler;
.source "WifiRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/WifiRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$UiHandler;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1157
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$UiHandler;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1400(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$UiHandler;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1400(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 1159
    .local v0, T1:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$UiHandler;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1165
    .end local v0           #T1:Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #T1:Landroid/widget/TextView;
    :cond_1
    move v1, v2

    .line 1160
    goto :goto_0

    .line 1163
    .end local v0           #T1:Landroid/widget/TextView;
    :cond_2
    const-wide/16 v3, 0x96

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/WifiRouter/WifiRouter$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
