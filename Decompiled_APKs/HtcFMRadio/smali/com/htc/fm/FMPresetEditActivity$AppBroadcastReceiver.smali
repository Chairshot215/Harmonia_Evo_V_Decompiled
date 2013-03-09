.class Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMPresetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMPresetEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMPresetEditActivity;


# direct methods
.method private constructor <init>(Lcom/htc/fm/FMPresetEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/FMPresetEditActivity;Lcom/htc/fm/FMPresetEditActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;-><init>(Lcom/htc/fm/FMPresetEditActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, action:Ljava/lang/String;
    const-string v2, "FMPresetEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetEditActivity] onReceive("

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

    .line 133
    const-string v2, "com.htc.fm.statechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, state:I
    const-string v2, "FMPresetEditActivity"

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

    .line 136
    packed-switch v1, :pswitch_data_0

    .line 149
    .end local v1           #state:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 140
    .restart local v1       #state:I
    :pswitch_1
    iget-object v2, p0, Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetEditActivity;->finish()V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v2, p0, Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetEditActivity;->finish()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
