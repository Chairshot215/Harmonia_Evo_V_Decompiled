.class Lcom/android/mms/util/ScheduledDialogActivity$1;
.super Ljava/lang/Object;
.source "ScheduledDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ScheduledDialogActivity;->runSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ScheduledDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ScheduledDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/mms/util/ScheduledDialogActivity$1;->this$0:Lcom/android/mms/util/ScheduledDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$1;->this$0:Lcom/android/mms/util/ScheduledDialogActivity;

    #calls: Lcom/android/mms/util/ScheduledDialogActivity;->showMsg()V
    invoke-static {v0}, Lcom/android/mms/util/ScheduledDialogActivity;->access$100(Lcom/android/mms/util/ScheduledDialogActivity;)V

    .line 385
    return-void
.end method
