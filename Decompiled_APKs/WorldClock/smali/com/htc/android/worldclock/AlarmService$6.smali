.class Lcom/htc/android/worldclock/AlarmService$6;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmService;->playAlarm()V
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
    .line 305
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$6;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$6;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$700(Lcom/htc/android/worldclock/AlarmService;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$6;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$6;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/worldclock/AlarmKlaxon;->play(Landroid/content/Context;I)V

    .line 309
    return-void
.end method
