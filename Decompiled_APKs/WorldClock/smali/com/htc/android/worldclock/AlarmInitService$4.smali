.class Lcom/htc/android/worldclock/AlarmInitService$4;
.super Ljava/lang/Object;
.source "AlarmInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmInitService;->alarmLockScreen(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$4;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$4;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$4;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmInitService;->access$200(Lcom/htc/android/worldclock/AlarmInitService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->setNextAlarm(Landroid/content/Context;I)V

    .line 238
    return-void
.end method
