.class Lcom/htc/android/worldclock/AlarmAlert$1;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$1;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$1;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$1;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmAlert;->dismiss()V

    goto :goto_0
.end method
