.class Lcom/htc/android/worldclock/SoundSelect$3;
.super Ljava/lang/Object;
.source "SoundSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SoundSelect;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SoundSelect;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SoundSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/android/worldclock/SoundSelect$3;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.music"

    const-string v4, "com.htc.music.MusicPicker"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect$3;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    #getter for: Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/worldclock/SoundSelect;->access$000(Lcom/htc/android/worldclock/SoundSelect;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect$3;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    #getter for: Lcom/htc/android/worldclock/SoundSelect;->mIslaunchRingToneDialogActivity:Z
    invoke-static {v2}, Lcom/htc/android/worldclock/SoundSelect;->access$100(Lcom/htc/android/worldclock/SoundSelect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect$3;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/worldclock/SoundSelect;->mIslaunchRingToneDialogActivity:Z
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/SoundSelect;->access$102(Lcom/htc/android/worldclock/SoundSelect;Z)Z

    .line 113
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v3, p0, Lcom/htc/android/worldclock/SoundSelect$3;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    #getter for: Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/android/worldclock/SoundSelect;->access$000(Lcom/htc/android/worldclock/SoundSelect;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect$3;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/worldclock/SoundSelect;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect$3;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/SoundSelect;->finish()V

    goto :goto_0
.end method
