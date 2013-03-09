.class Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler$1;
.super Landroid/os/CountDownTimer;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler$1;->this$1:Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler$1;->this$1:Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;

    #calls: Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->sendEventChanged()V
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->access$100(Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;)V

    .line 532
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 527
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seconds remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method
