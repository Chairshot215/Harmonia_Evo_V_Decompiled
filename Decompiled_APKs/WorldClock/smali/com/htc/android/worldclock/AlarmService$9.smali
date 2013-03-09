.class Lcom/htc/android/worldclock/AlarmService$9;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$9;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmService: onCallStateChanged state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$9;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #calls: Lcom/htc/android/worldclock/AlarmService;->AutoSnooze()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$1200(Lcom/htc/android/worldclock/AlarmService;)V

    .line 459
    :cond_0
    return-void
.end method
