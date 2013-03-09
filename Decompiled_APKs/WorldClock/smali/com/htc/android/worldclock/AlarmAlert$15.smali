.class Lcom/htc/android/worldclock/AlarmAlert$15;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 804
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$15;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 807
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 808
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$15;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    invoke-static {}, Lcom/htc/android/worldclock/AlarmAlert;->access$2300()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$2302(Z)Z

    .line 813
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$15;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmAlert;->dismiss()V

    goto :goto_0
.end method
