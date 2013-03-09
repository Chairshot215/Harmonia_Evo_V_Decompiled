.class public Lcom/htc/android/worldclock/TimerResUtils;
.super Lcom/htc/android/worldclock/ResUtils;
.source "TimerResUtils.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/ResUtils;-><init>(Landroid/app/Activity;)V

    .line 12
    return-void
.end method


# virtual methods
.method public initResources()V
    .locals 3

    .prologue
    .line 15
    const v0, 0x7f0b0006

    const v1, 0x7f080060

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/TimerResUtils;->setTitle(III)V

    .line 16
    const v0, 0x7f0b0024

    const-string v1, "common_glance_bkg"

    const v2, 0x20801c1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/TimerResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 17
    return-void
.end method

.method public resetLayout()V
    .locals 10

    .prologue
    const v6, 0x7f0600b4

    const/4 v3, 0x0

    .line 21
    const v1, 0x7f0b004e

    const v2, 0x7f0600ae

    const v4, 0x7f0600af

    const v5, 0x7f0600b0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 25
    const v1, 0x7f0b004d

    const v2, 0x7f0600b1

    const v4, 0x7f0600b2

    const v5, 0x7f0600b3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 29
    const v1, 0x7f0b006f

    move-object v0, p0

    move v2, v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 33
    const v1, 0x7f0b0070

    move-object v0, p0

    move v2, v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 37
    const v1, 0x7f0b0071

    move-object v0, p0

    move v2, v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 41
    const v5, 0x7f0b0072

    const v6, 0x7f0600b5

    const v7, 0x7f0600b6

    const v8, 0x7f0600b7

    const v9, 0x7f0600b8

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 45
    const v5, 0x7f0b001e

    const v6, 0x7f0600c0

    const v7, 0x7f0600c1

    const v8, 0x7f0600c2

    const v9, 0x7f0600c3

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 49
    const v5, 0x7f0b0068

    const v6, 0x7f0600c4

    const v7, 0x7f0600c5

    const v8, 0x7f0600c6

    move-object v4, p0

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 53
    const v5, 0x7f0b006a

    const v6, 0x7f0600c7

    const v7, 0x7f0600c8

    const v8, 0x7f0600c9

    move-object v4, p0

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/htc/android/worldclock/TimerResUtils;->setLayout(IIIII)V

    .line 56
    return-void
.end method
