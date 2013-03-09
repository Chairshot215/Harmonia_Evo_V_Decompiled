.class Lcom/htc/android/worldclock/Timer$5$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Timer$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/Timer$5;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Timer$5;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$5$1;->this$1:Lcom/htc/android/worldclock/Timer$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$5$1;->this$1:Lcom/htc/android/worldclock/Timer$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/Timer$5;->this$0:Lcom/htc/android/worldclock/Timer;

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Lcom/htc/android/worldclock/Timer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$5$1;->this$1:Lcom/htc/android/worldclock/Timer$5;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer$5;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1000(Lcom/htc/android/worldclock/Timer;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$5$1;->this$1:Lcom/htc/android/worldclock/Timer$5;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer$5;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mIslaunchRingToneDialogActivity:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$900(Lcom/htc/android/worldclock/Timer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$5$1;->this$1:Lcom/htc/android/worldclock/Timer$5;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer$5;->this$0:Lcom/htc/android/worldclock/Timer;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/worldclock/Timer;->mIslaunchRingToneDialogActivity:Z
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Timer;->access$902(Lcom/htc/android/worldclock/Timer;Z)Z

    .line 311
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$5$1;->this$1:Lcom/htc/android/worldclock/Timer$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/Timer$5;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/worldclock/Timer;->access$1000(Lcom/htc/android/worldclock/Timer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$5$1;->this$1:Lcom/htc/android/worldclock/Timer$5;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer$5;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-virtual {v1, v0, v4}, Lcom/htc/android/worldclock/Timer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 316
    :cond_0
    return-void
.end method
