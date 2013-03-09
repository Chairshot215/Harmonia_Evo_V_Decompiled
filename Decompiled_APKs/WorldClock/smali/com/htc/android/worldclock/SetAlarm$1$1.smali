.class Lcom/htc/android/worldclock/SetAlarm$1$1;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/SetAlarm$1;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SetAlarm$1;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$1$1;->this$1:Lcom/htc/android/worldclock/SetAlarm$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1$1;->this$1:Lcom/htc/android/worldclock/SetAlarm$1;

    iget-object v0, v0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$400(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1$1;->this$1:Lcom/htc/android/worldclock/SetAlarm$1;

    iget-object v0, v0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$500(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1$1;->this$1:Lcom/htc/android/worldclock/SetAlarm$1;

    iget-object v0, v0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$500(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method
