.class Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;
.super Ljava/lang/Object;
.source "DeleteAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

.field final synthetic val$positionId:I


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    iput p2, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->val$positionId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    if-nez v0, :cond_0

    .line 224
    .end local p1
    :goto_0
    return-void

    .line 222
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    iget v1, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->val$positionId:I

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 223
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    iget v2, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;->val$positionId:I

    aget-boolean v1, v1, v2

    #calls: Lcom/htc/android/worldclock/DeleteAlarm;->handleDeleteCount(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/DeleteAlarm;->access$100(Lcom/htc/android/worldclock/DeleteAlarm;Z)V

    goto :goto_0
.end method
