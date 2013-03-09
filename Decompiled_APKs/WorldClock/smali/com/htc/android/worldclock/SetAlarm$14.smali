.class Lcom/htc/android/worldclock/SetAlarm$14;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$14;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$14;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$2500(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->set(IZ)V

    .line 563
    return-void
.end method
