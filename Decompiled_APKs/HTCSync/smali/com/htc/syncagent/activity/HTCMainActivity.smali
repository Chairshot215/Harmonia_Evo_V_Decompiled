.class public Lcom/htc/syncagent/activity/HTCMainActivity;
.super Landroid/app/Activity;
.source "HTCMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isReceiverRunning:Z

.field private mBTN_Sync:Landroid/widget/Button;

.field private mIcon_Sync_StatusImageView:Landroid/widget/ImageView;

.field private mTV_Connection_Status_Show:Landroid/widget/TextView;

.field private mTV_Last_Sync_Time_Show:Landroid/widget/TextView;

.field private mUsbDisconnect:Landroid/content/BroadcastReceiver;

.field private syncMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Connection_Status_Show:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Last_Sync_Time_Show:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mIcon_Sync_StatusImageView:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->isReceiverRunning:Z

    .line 30
    new-instance v0, Lcom/htc/syncagent/activity/HTCMainActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/syncagent/activity/HTCMainActivity$1;-><init>(Lcom/htc/syncagent/activity/HTCMainActivity;)V

    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->syncMainHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/htc/syncagent/activity/HTCMainActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/syncagent/activity/HTCMainActivity$2;-><init>(Lcom/htc/syncagent/activity/HTCMainActivity;)V

    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mUsbDisconnect:Landroid/content/BroadcastReceiver;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/htc/syncagent/activity/HTCMainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/htc/syncagent/activity/HTCMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/htc/syncagent/activity/HTCMainActivity;->checkAndStart()V

    return-void
.end method

.method private checkAndStart()V
    .locals 3

    .prologue
    .line 241
    const-string v0, "FDUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "7990 checkAndStart: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    sget v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 244
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->isStatusThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->isSyncThreadAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "FDUI"

    .line 249
    const-string v1, "7990 is not running, start it."

    .line 248
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->startSyncThread()V

    .line 253
    :cond_0
    const-string v0, "FDUI"

    const-string v1, "7990 start."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    return-void
.end method

.method private updateTextView(I)V
    .locals 8
    .parameter "iSyncStatus"

    .prologue
    const v7, 0x7f040004

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 163
    const-string v1, "FDUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateTextView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Connection_Status_Show:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mIcon_Sync_StatusImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Connection_Status_Show:Landroid/widget/TextView;

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mIcon_Sync_StatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Connection_Status_Show:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 189
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Last_Sync_Time_Show:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 194
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->loadSyncTime()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, time:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    :cond_1
    const-string v1, "FDUI"

    const-string v2, "sync time get null!"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Last_Sync_Time_Show:Landroid/widget/TextView;

    const v2, 0x7f04000e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :goto_1
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Last_Sync_Time_Show:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 210
    .end local v0           #time:Ljava/lang/String;
    :goto_2
    return-void

    .line 173
    :cond_2
    if-ne p1, v4, :cond_3

    .line 175
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Connection_Status_Show:Landroid/widget/TextView;

    .line 176
    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mIcon_Sync_StatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Connection_Status_Show:Landroid/widget/TextView;

    .line 183
    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mIcon_Sync_StatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 202
    .restart local v0       #time:Ljava/lang/String;
    :cond_4
    const-string v1, "FDUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync time  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Last_Sync_Time_Show:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    .end local v0           #time:Ljava/lang/String;
    :cond_5
    const-string v1, "FDUI"

    const-string v2, "last synctime label = null"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 215
    const-string v0, "FDUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Button click: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 219
    :pswitch_0
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-ne v0, v4, :cond_1

    .line 221
    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 222
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/syncagent/util/HTCUICommon;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/htc/syncagent/util/HTCUICommon;->addSyncMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-ne v0, v5, :cond_0

    .line 227
    sput v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 228
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/syncagent/util/HTCUICommon;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";STOP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/htc/syncagent/util/HTCUICommon;->addSyncMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x7f050011
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x3

    .line 92
    const-string v1, "FDUI"

    const-string v2, "onCreate."

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/syncagent/activity/HTCMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 95
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 96
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->setContentView(I)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 99
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Connection_Status_Show:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f05000f

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mTV_Last_Sync_Time_Show:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mIcon_Sync_StatusImageView:Landroid/widget/ImageView;

    .line 102
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->mBTN_Sync:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "FDUI"

    const-string v1, "onDestory."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "FDUI"

    const-string v1, "onPause."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "FDUI"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-direct {p0, v0}, Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V

    .line 130
    invoke-direct {p0}, Lcom/htc/syncagent/activity/HTCMainActivity;->checkAndStart()V

    .line 131
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "FDUI"

    const-string v1, "onStart."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 110
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-direct {p0, v0}, Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V

    .line 112
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity;->syncMainHandler:Landroid/os/Handler;

    sput-object v0, Lcom/htc/syncagent/util/HTCUICommon;->mainHandler:Landroid/os/Handler;

    .line 122
    invoke-direct {p0}, Lcom/htc/syncagent/activity/HTCMainActivity;->checkAndStart()V

    .line 123
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "FDUI"

    const-string v1, "onStop."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 151
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/syncagent/util/HTCUICommon;->mainHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method
