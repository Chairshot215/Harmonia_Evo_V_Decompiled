.class public Lcom/htc/android/worldclock/SetAlarmResUtils;
.super Lcom/htc/android/worldclock/ResUtils;
.source "SetAlarmResUtils.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/ResUtils;-><init>(Landroid/app/Activity;)V

    .line 13
    return-void
.end method


# virtual methods
.method public initResources()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 16
    const v0, 0x7f0b0006

    const v1, 0x7f080041

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/SetAlarmResUtils;->setTitle(III)V

    .line 17
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/android/worldclock/SetAlarmResUtils;->setRoundedCornerEnabled(IZZ)V

    .line 18
    const v0, 0x7f0b0024

    const-string v1, "common_glance_bkg"

    const v2, 0x20801c1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/SetAlarmResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 19
    return-void
.end method

.method public resetLayout()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 22
    const v1, 0x7f0b004c

    const/high16 v3, 0x7f06

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/SetAlarmResUtils;->setLayout(IIIII)V

    .line 25
    const v4, 0x7f0b004d

    const v5, 0x7f060006

    const v8, 0x7f060007

    move-object v3, p0

    move v6, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/htc/android/worldclock/SetAlarmResUtils;->setLayout(IIIII)V

    .line 29
    const v4, 0x7f0b004e

    const v5, 0x7f060009

    const v8, 0x7f06000a

    move-object v3, p0

    move v6, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/htc/android/worldclock/SetAlarmResUtils;->setLayout(IIIII)V

    .line 32
    return-void
.end method
