.class Lcom/android/settings/SoundSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, action:Ljava/lang/String;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v4}, Lcom/android/settings/SoundSettings;->finish()V

    .line 207
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v2, restartIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v4}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/SoundSettings;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 209
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    const/high16 v4, 0x4000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 228
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #restartIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->updateState(Z)V
    invoke-static {v4, v1}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;Z)V

    .line 222
    :cond_2
    const-string v4, "android.media.EXTRA_RINGER_MODE"

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 224
    .local v3, ringerMode:I
    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 226
    .local v1, isSilentMode:Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v5, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->getSoundMode(I)I
    invoke-static {v5, v3}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;I)I

    move-result v5

    #calls: Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V
    invoke-static {v4, v5}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;I)V

    goto :goto_0
.end method
