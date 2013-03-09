.class Lcom/htc/android/worldclock/Timer$3;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Timer;->onInitParent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mDestroyed:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$400(Lcom/htc/android/worldclock/Timer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$500(Lcom/htc/android/worldclock/Timer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$600(Lcom/htc/android/worldclock/Timer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/Timer;->access$500(Lcom/htc/android/worldclock/Timer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/worldclock/Timer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$700(Lcom/htc/android/worldclock/Timer;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 227
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$3;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$800(Lcom/htc/android/worldclock/Timer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x323

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
