.class Lcom/htc/android/worldclock/Timer$4;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Timer;->onRingtone()V
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
    .line 239
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$4;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$4;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$400(Lcom/htc/android/worldclock/Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$4;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$600(Lcom/htc/android/worldclock/Timer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$4;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$500(Lcom/htc/android/worldclock/Timer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
