.class Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMPresetBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMPresetBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMPresetBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/FMPresetBrowserActivity;Lcom/htc/fm/FMPresetBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;-><init>(Lcom/htc/fm/FMPresetBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, action:Ljava/lang/String;
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetBrowserActivity] onReceive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "com.htc.fm.RemoteControl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.fm.cmdstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$200(Lcom/htc/fm/FMPresetBrowserActivity;)Lcom/htc/fm/Preset;

    move-result-object v2

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    new-instance v3, Lcom/htc/fm/Preset;

    invoke-direct {v3}, Lcom/htc/fm/Preset;-><init>()V

    #setter for: Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;
    invoke-static {v2, v3}, Lcom/htc/fm/FMPresetBrowserActivity;->access$202(Lcom/htc/fm/FMPresetBrowserActivity;Lcom/htc/fm/Preset;)Lcom/htc/fm/Preset;

    .line 217
    :cond_1
    sget v2, Lcom/htc/fm/FMDef;->Frequency:I

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-lt v2, v3, :cond_4

    sget v2, Lcom/htc/fm/FMDef;->Frequency:I

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;
    invoke-static {v3}, Lcom/htc/fm/FMPresetBrowserActivity;->access$200(Lcom/htc/fm/FMPresetBrowserActivity;)Lcom/htc/fm/Preset;

    move-result-object v3

    iget v3, v3, Lcom/htc/fm/Preset;->freq:I

    if-eq v2, v3, :cond_4

    .line 219
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$200(Lcom/htc/fm/FMPresetBrowserActivity;)Lcom/htc/fm/Preset;

    move-result-object v2

    sget v3, Lcom/htc/fm/FMDef;->Frequency:I

    iput v3, v2, Lcom/htc/fm/Preset;->freq:I

    .line 220
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    sget v3, Lcom/htc/fm/FMDef;->Frequency:I

    #setter for: Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I
    invoke-static {v2, v3}, Lcom/htc/fm/FMPresetBrowserActivity;->access$302(Lcom/htc/fm/FMPresetBrowserActivity;I)I

    .line 221
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetBrowserActivity] onReceive() - mFreq("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I
    invoke-static {v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$300(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v2, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v2, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->notifyDataSetChanged()V

    .line 224
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v3, v3, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;
    invoke-static {v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$200(Lcom/htc/fm/FMPresetBrowserActivity;)Lcom/htc/fm/Preset;

    move-result-object v4

    iget v4, v4, Lcom/htc/fm/Preset;->freq:I

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->setSelectPosition(Landroid/database/Cursor;I)V
    invoke-static {v2, v3, v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$400(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/database/Cursor;I)V

    .line 231
    :cond_2
    :goto_0
    const-string v2, "com.htc.fm.statechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, state:I
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetBrowserActivity] onReceive() - ACTION_STATE_CHANGED state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    packed-switch v1, :pswitch_data_0

    .line 247
    .end local v1           #state:I
    :cond_3
    :goto_1
    :pswitch_0
    return-void

    .line 227
    :cond_4
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetBrowserActivity] onReceive() - mFreq("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I
    invoke-static {v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$300(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") same!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .restart local v1       #state:I
    :pswitch_1
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->finish()V

    goto :goto_1

    .line 243
    :pswitch_2
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->finish()V

    goto :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
