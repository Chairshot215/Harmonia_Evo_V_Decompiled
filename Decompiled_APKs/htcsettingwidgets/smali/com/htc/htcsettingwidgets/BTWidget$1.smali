.class Lcom/htc/htcsettingwidgets/BTWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "BTWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/BTWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/BTWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/BTWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/BTWidget$1;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 177
    .local v1, bAirModeOn:Z
    if-nez v1, :cond_0

    .line 204
    .end local v1           #bAirModeOn:Z
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 186
    .local v3, iPrevState:I
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 188
    .local v2, iCurState:I
    if-eq v2, v5, :cond_0

    .line 190
    const/16 v4, 0xc

    if-ne v2, v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/htc/htcsettingwidgets/BTWidget$1;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    const/4 v5, 0x1

    #calls: Lcom/htc/htcsettingwidgets/BTWidget;->displayState(Z)V
    invoke-static {v4, v5}, Lcom/htc/htcsettingwidgets/BTWidget;->access$500(Lcom/htc/htcsettingwidgets/BTWidget;Z)V

    goto :goto_0

    .line 193
    :cond_2
    const/16 v4, 0xb

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    .line 197
    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/htc/htcsettingwidgets/BTWidget$1;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    #calls: Lcom/htc/htcsettingwidgets/BTWidget;->displayState(Z)V
    invoke-static {v4, v6}, Lcom/htc/htcsettingwidgets/BTWidget;->access$500(Lcom/htc/htcsettingwidgets/BTWidget;Z)V

    .line 199
    iget-object v4, p0, Lcom/htc/htcsettingwidgets/BTWidget$1;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    #calls: Lcom/htc/htcsettingwidgets/BTWidget;->getContext()Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/htcsettingwidgets/BTWidget;->access$600(Lcom/htc/htcsettingwidgets/BTWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method
