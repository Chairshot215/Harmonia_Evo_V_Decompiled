.class public Lcom/htc/android/worldclock/StopwatchResUtils;
.super Lcom/htc/android/worldclock/ResUtils;
.source "StopwatchResUtils.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/ResUtils;-><init>(Landroid/app/Activity;)V

    .line 9
    return-void
.end method


# virtual methods
.method public initResources()V
    .locals 6

    .prologue
    const v5, 0x7f020028

    const v4, 0x7f020027

    const v3, 0x208005d

    .line 13
    const v0, 0x7f0b0006

    const v1, 0x7f08003a

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/StopwatchResUtils;->setTitle(III)V

    .line 15
    const v0, 0x7f0b0024

    const-string v1, "common_glance_bkg"

    const v2, 0x20801c1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/StopwatchResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 17
    const v0, 0x7f0b0058

    const-string v1, "common_led_bg"

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/android/worldclock/StopwatchResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 18
    const v0, 0x7f0b005e

    const-string v1, "common_led_bg"

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/android/worldclock/StopwatchResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 20
    const v0, 0x7f0b002b

    const-string v1, "stopwatch_digit_colon"

    invoke-virtual {p0, v0, v1, v4}, Lcom/htc/android/worldclock/StopwatchResUtils;->setImageViewImageResource(ILjava/lang/String;I)V

    .line 21
    const v0, 0x7f0b005b

    const-string v1, "stopwatch_digit_dot"

    invoke-virtual {p0, v0, v1, v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setImageViewImageResource(ILjava/lang/String;I)V

    .line 23
    const v0, 0x7f0b0061

    const-string v1, "digit_colon"

    invoke-virtual {p0, v0, v1, v4}, Lcom/htc/android/worldclock/StopwatchResUtils;->setImageViewImageResource(ILjava/lang/String;I)V

    .line 24
    const v0, 0x7f0b0064

    const-string v1, "stopwatch_dot"

    invoke-virtual {p0, v0, v1, v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setImageViewImageResource(ILjava/lang/String;I)V

    .line 26
    const v0, 0x7f0b0067

    const v1, 0x7f080013

    const v2, 0x7f080014

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/StopwatchResUtils;->setRoundedCornerEnabled(III)V

    .line 27
    return-void
.end method

.method public resetLayout()V
    .locals 11

    .prologue
    const v10, 0x7f0b0059

    const v9, 0x7f060082

    const v8, 0x7f060081

    const v7, 0x7f060089

    const/4 v6, 0x0

    .line 30
    const v1, 0x7f0b0058

    const v2, 0x7f06007d

    const v3, 0x7f06007e

    const v4, 0x7f06007f

    const v5, 0x7f060080

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 34
    const v1, 0x7f0b005e

    const v2, 0x7f060093

    const v3, 0x7f060094

    const v4, 0x7f060095

    const v5, 0x7f060096

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 38
    const v1, 0x7f0b005d

    const v4, 0x7f060090

    const v5, 0x7f060091

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 42
    const v0, 0x7f0b005d

    const v1, 0x7f080011

    const v2, 0x7f060092

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 45
    const v1, 0x7f0b0066

    const v4, 0x7f060098

    const v5, 0x7f060099

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 49
    const v0, 0x7f0b0066

    const v1, 0x7f080012

    const v2, 0x7f06009a

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 52
    const v1, 0x7f0b0067

    const v2, 0x7f06009b

    const v3, 0x7f06009c

    const v4, 0x7f06009d

    const v5, 0x7f06009e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 56
    const v1, 0x7f0b0068

    const v2, 0x7f06009f

    const v3, 0x7f0600a0

    const v4, 0x7f0600a1

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 60
    const v1, 0x7f0b0069

    const v2, 0x7f0600a2

    const v3, 0x7f0600a3

    const v4, 0x7f0600a4

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 64
    const v1, 0x7f0b006a

    const v2, 0x7f0600a5

    const v3, 0x7f0600a6

    const v4, 0x7f0600a7

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 68
    const v1, 0x7f0b006b

    const v2, 0x7f0600aa

    const v3, 0x7f0600ab

    const v4, 0x7f0600ac

    const v5, 0x7f0600ad

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 72
    const v1, 0x7f0b002c

    const v4, 0x7f060088

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 76
    const v0, 0x7f0b002c

    const v1, 0x7f06008a

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 79
    const v1, 0x7f0b002d

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 83
    const v0, 0x7f0b002d

    const v1, 0x7f06008b

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 86
    const v1, 0x7f0b002b

    const v2, 0x7f060083

    const v3, 0x7f060084

    move-object v0, p0

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 90
    const v0, 0x7f0b002b

    const v1, 0x7f06008c

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    move-object v0, p0

    move v1, v10

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 97
    const v0, 0x7f06008d

    invoke-virtual {p0, v10, v6, v0}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 100
    const v1, 0x7f0b005a

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 104
    const v0, 0x7f06008e

    invoke-virtual {p0, v10, v6, v0}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 107
    const v1, 0x7f0b005b

    const v2, 0x7f060085

    const v3, 0x7f060086

    const v5, 0x7f060087

    move-object v0, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 111
    const v0, 0x7f0b005b

    const v1, 0x7f06008f

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 114
    const v1, 0x7f0b005c

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 118
    const v1, 0x7f0b005f

    const v4, 0x7f060088

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 122
    const v0, 0x7f0b005f

    const v1, 0x7f06008a

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 125
    const v1, 0x7f0b0060

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 129
    const v0, 0x7f0b0060

    const v1, 0x7f06008b

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 132
    const v1, 0x7f0b0061

    const v2, 0x7f060083

    const v3, 0x7f060084

    move-object v0, p0

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 136
    const v0, 0x7f0b0061

    const v1, 0x7f06008c

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 139
    const v1, 0x7f0b0062

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 143
    const v0, 0x7f0b0062

    const v1, 0x7f06008d

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 146
    const v1, 0x7f0b0063

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 150
    const v0, 0x7f0b0062

    const v1, 0x7f06008e

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 153
    const v1, 0x7f0b0064

    const v2, 0x7f060085

    const v3, 0x7f060086

    const v5, 0x7f060087

    move-object v0, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 157
    const v0, 0x7f0b0064

    const v1, 0x7f06008f

    invoke-virtual {p0, v0, v6, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayoutAlignRight(III)V

    .line 160
    const v1, 0x7f0b0065

    move-object v0, p0

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchResUtils;->setLayout(IIIII)V

    .line 164
    const v0, 0x7f0b0067

    const v1, 0x7f070015

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/worldclock/StopwatchResUtils;->setBackgroundColor(II)V

    .line 165
    const v0, 0x7f0b0067

    const v1, 0x7f080013

    const v2, 0x7f080014

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/StopwatchResUtils;->setRoundedCornerEnabled(III)V

    .line 166
    return-void
.end method
