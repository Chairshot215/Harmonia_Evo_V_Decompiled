.class public Lcom/htc/taskmanager/Customize;
.super Lcom/htc/taskmanager/CustomizeBase;
.source "Customize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/taskmanager/Customize$1;,
        Lcom/htc/taskmanager/Customize$ResourceType;
    }
.end annotation


# static fields
.field public static bodyHasRoundCorners:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/taskmanager/Customize;->bodyHasRoundCorners:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/taskmanager/CustomizeBase;-><init>()V

    .line 116
    return-void
.end method

.method static configureMainActivity(Lcom/htc/taskmanager/MainActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/htc/taskmanager/CustomizeBase;->configureMainActivity(Lcom/htc/taskmanager/MainActivity;)V

    .line 90
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 91
    .local v0, bar:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 94
    .local v1, text:Lcom/htc/widget/HeaderBarText;
    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 98
    .end local v1           #text:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method

.method public static getAlphaBetSortIconId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x2080a80

    return v0
.end method

.method public static getKillAllButtontId()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x2020003

    return v0
.end method

.method public static getNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;
    .locals 5
    .parameter "context"
    .parameter "iconId"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"

    .prologue
    const/4 v4, 0x0

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/taskmanager/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v2, notificationIntent:Landroid/content/Intent;
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 80
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p1, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 81
    .local v1, notification:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 82
    invoke-virtual {v1, p0, p3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 83
    return-object v1
.end method

.method public static getRefreshButtonId()I
    .locals 1

    .prologue
    .line 21
    const v0, 0x2020001

    return v0
.end method

.method public static getSizeSortIconId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x2080338

    return v0
.end method

.method public static getSkinnedResId(Lcom/htc/taskmanager/MainActivity;Lcom/htc/taskmanager/Customize$ResourceType;)I
    .locals 4
    .parameter "activity"
    .parameter "resType"

    .prologue
    .line 41
    const-string v1, ""

    .line 42
    .local v1, resName:Ljava/lang/String;
    const/4 v0, -0x1

    .line 46
    .local v0, resId:I
    sget-object v2, Lcom/htc/taskmanager/Customize$1;->$SwitchMap$com$htc$taskmanager$Customize$ResourceType:[I

    invoke-virtual {p1}, Lcom/htc/taskmanager/Customize$ResourceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/htc/taskmanager/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 48
    :pswitch_0
    const-string v1, "common_progress_full"

    .line 49
    const v0, 0x20804c1

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    const-string v1, "common_downloading_progress_track_full"

    .line 53
    const v0, 0x20806d2

    .line 54
    goto :goto_0

    .line 56
    :pswitch_2
    const-string v1, "common_close_view"

    .line 57
    const v0, 0x2080013

    .line 58
    goto :goto_0

    .line 60
    :pswitch_3
    const-string v1, "taskmanager_icon_used"

    .line 61
    const v0, 0x7f020007

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getTitleTextId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x2020053

    return v0
.end method

.method public static skinCmdBarButtons(Lcom/htc/taskmanager/MainActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "activity"
    .parameter "refresh"
    .parameter "killAll"

    .prologue
    .line 72
    return-void
.end method

.method public static updateFreeMemory(Lcom/htc/taskmanager/MainActivity;I)V
    .locals 6
    .parameter "activity"
    .parameter "freeMemory"

    .prologue
    .line 110
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, textView:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public static updateUsedMemory(Lcom/htc/taskmanager/MainActivity;I)V
    .locals 6
    .parameter "activity"
    .parameter "usedMemory"

    .prologue
    .line 102
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, textView:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
