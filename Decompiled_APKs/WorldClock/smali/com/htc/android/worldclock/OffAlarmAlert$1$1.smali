.class Lcom/htc/android/worldclock/OffAlarmAlert$1$1;
.super Ljava/lang/Object;
.source "OffAlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/OffAlarmAlert$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/OffAlarmAlert$1;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/OffAlarmAlert$1;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/android/worldclock/OffAlarmAlert$1$1;->this$1:Lcom/htc/android/worldclock/OffAlarmAlert$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/worldclock/OffAlarmAlert$1$1;->this$1:Lcom/htc/android/worldclock/OffAlarmAlert$1;

    iget-object v0, v0, Lcom/htc/android/worldclock/OffAlarmAlert$1;->this$0:Lcom/htc/android/worldclock/OffAlarmAlert;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/worldclock/OffAlarmAlert;->setAirplaneMode(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/OffAlarmAlert;->access$000(Lcom/htc/android/worldclock/OffAlarmAlert;Z)V

    .line 86
    iget-object v0, p0, Lcom/htc/android/worldclock/OffAlarmAlert$1$1;->this$1:Lcom/htc/android/worldclock/OffAlarmAlert$1;

    iget-object v0, v0, Lcom/htc/android/worldclock/OffAlarmAlert$1;->this$0:Lcom/htc/android/worldclock/OffAlarmAlert;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/OffAlarmAlert;->finish()V

    .line 87
    return-void
.end method
