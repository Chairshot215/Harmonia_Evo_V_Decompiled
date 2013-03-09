.class Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;
.super Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;
.source "DeleteAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeleteAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteAlarmTimeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeleteAlarm;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/DeleteAlarm;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "list"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/htc/android/worldclock/AlarmClock;Ljava/util/ArrayList;)V

    .line 190
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 191
    iput-object p2, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    .line 192
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 196
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 199
    move v3, p1

    .line 200
    .local v3, positionId:I
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v5, 0x7f0b001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 201
    .local v0, cb:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-static {v4}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_delete(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 202
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    .local v2, lpCb:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eqz v4, :cond_0

    .line 204
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 205
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v4, v4, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    aget-boolean v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    new-instance v4, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;

    invoke-direct {v4, p0, v3}, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter$1;-><init>(Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    :goto_0
    return-object v4

    .line 210
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    goto :goto_0
.end method
