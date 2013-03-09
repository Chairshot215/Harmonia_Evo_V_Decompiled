.class Lcom/htc/android/worldclock/AlarmAlert$8;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->onAlarmIntent()V
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
    .line 395
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$8;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$8;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->disableKeyguard()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$2000(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 399
    return-void
.end method
