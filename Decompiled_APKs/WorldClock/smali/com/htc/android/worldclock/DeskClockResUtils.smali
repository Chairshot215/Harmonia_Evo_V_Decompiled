.class public Lcom/htc/android/worldclock/DeskClockResUtils;
.super Lcom/htc/android/worldclock/ResUtils;
.source "DeskClockResUtils.java"


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
.method public alarmDisplay(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "isEnable"
    .parameter "timeStr"

    .prologue
    const v3, 0x7f0b0032

    .line 51
    const v1, 0x7f0b0031

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, nextAlarm:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    if-nez p2, :cond_0

    .line 55
    const-string v1, "icon_deskclock_alarm_off"

    const v2, 0x7f020017

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setImageViewImageResource(Landroid/app/Activity;ILjava/lang/String;I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v1, "icon_deskclock_alarm_on"

    const v2, 0x7f020018

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setImageViewImageResource(Landroid/app/Activity;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public alarmDisplay(ZLjava/lang/String;)V
    .locals 4
    .parameter "isEnable"
    .parameter "timeStr"

    .prologue
    const v3, 0x7f0b0032

    .line 38
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, nextAlarm:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string v1, "icon_deskclock_alarm_off"

    const v2, 0x7f020017

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setImageViewImageResource(ILjava/lang/String;I)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "icon_deskclock_alarm_on"

    const v2, 0x7f020018

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setImageViewImageResource(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public initResources()V
    .locals 9

    .prologue
    const v8, 0x7f0b0026

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 16
    iget-object v3, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 17
    .local v1, headerText:Lcom/htc/widget/HeaderBarText;
    const v3, 0x7f080029

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 18
    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 20
    const v3, 0x7f0b0024

    const-string v4, "common_glance_bkg"

    const v5, 0x20801c1

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 21
    const v3, 0x7f0b002f

    const-string v4, "deskclock_led_bg"

    const v5, 0x7f020006

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 22
    const v3, 0x7f0b0033

    const-string v4, "btn_weather"

    const v5, 0x7f020005

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 24
    const-string v3, "clock_icon_dockmode_rest"

    const v4, 0x7f02001b

    invoke-virtual {p0, v8, v3, v4}, Lcom/htc/android/worldclock/DeskClockResUtils;->setImageButtonImageResource(ILjava/lang/String;I)V

    .line 25
    const-string v3, "clock_btn_center"

    const v4, 0x7f020001

    invoke-virtual {p0, v8, v3, v4}, Lcom/htc/android/worldclock/DeskClockResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 27
    const v3, 0x7f0b002b

    const-string v4, "clock_deskclock_digit_colon"

    const v5, 0x7f020014

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setImageViewImageResource(ILjava/lang/String;I)V

    .line 29
    const v3, 0x7f0b003d

    const-string v4, "common_icon_glance_my_location_rest"

    const v5, 0x2080901

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setBackgroundResource(ILjava/lang/String;I)V

    .line 31
    iget-object v3, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, battery:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 33
    .local v2, img:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f06001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    invoke-virtual {v0, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method

.method public resetLayout()V
    .locals 11

    .prologue
    const v10, 0x7f060015

    const v9, 0x7f060014

    const v8, 0x7f060032

    const v7, 0x7f060031

    const/4 v6, 0x0

    .line 61
    const v1, 0x7f0b002f

    const v2, 0x7f060010

    const v3, 0x7f060011

    const v4, 0x7f060012

    const v5, 0x7f060013

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 65
    const v1, 0x7f0b0032

    const v2, 0x7f06002c

    const v3, 0x7f06002d

    const v4, 0x7f06002e

    const v5, 0x7f06002f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 69
    const v1, 0x7f0b0033

    const v4, 0x7f060016

    const v5, 0x7f060017

    move-object v0, p0

    move v2, v9

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 73
    const v1, 0x7f0b003c

    const v4, 0x7f060016

    const v5, 0x7f060017

    move-object v0, p0

    move v2, v9

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 77
    const v1, 0x7f0b0025

    const v4, 0x7f060016

    const v5, 0x7f060017

    move-object v0, p0

    move v2, v9

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 81
    const v1, 0x7f0b0026

    const v2, 0x7f060018

    const v3, 0x7f060019

    const v4, 0x7f06001a

    const v5, 0x7f06001b

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 85
    const v0, 0x7f0b0026

    const/high16 v1, 0x7f08

    const v2, 0x7f06001c

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayoutAlignRight(III)V

    .line 88
    const v1, 0x7f0b0027

    const v4, 0x7f06001f

    const v5, 0x7f060020

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 92
    const v1, 0x7f0b0034

    const v4, 0x7f060047

    const v5, 0x7f060048

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 96
    const v0, 0x7f0b0034

    const v1, 0x7f08000b

    const v2, 0x7f060049

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayoutAlignRight(III)V

    .line 99
    const v1, 0x7f0b0035

    const v4, 0x7f06004a

    const v5, 0x7f06004b

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 103
    const v0, 0x7f0b0035

    const v1, 0x7f08000c

    const v2, 0x7f06004c

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayoutAlignRight(III)V

    .line 106
    const v1, 0x7f0b0036

    const v4, 0x7f06004d

    const v5, 0x7f06004e

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 110
    const v0, 0x7f0b0036

    const v1, 0x7f08000d

    const v2, 0x7f06004f

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayoutAlignRight(III)V

    .line 114
    const v1, 0x7f0b0037

    const v4, 0x7f060050

    const v5, 0x7f060051

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 117
    const v0, 0x7f0b0037

    const v1, 0x7f08000e

    const v2, 0x7f060052

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayoutAlignRight(III)V

    .line 120
    const v1, 0x7f0b0038

    const v5, 0x7f060053

    move-object v0, p0

    move v2, v6

    move v3, v6

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 124
    const v1, 0x7f0b0039

    const v4, 0x7f060055

    const v5, 0x7f060056

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 127
    const v0, 0x7f0b0039

    const v1, 0x7f08000f

    const v2, 0x7f060057

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayoutAlignRight(III)V

    .line 130
    const v1, 0x7f0b003a

    const v5, 0x7f060058

    move-object v0, p0

    move v2, v6

    move v3, v6

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 134
    const v1, 0x7f0b003b

    const v2, 0x7f06005a

    const v3, 0x7f06005b

    const v4, 0x7f06005c

    const v5, 0x7f06005d

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 138
    const v1, 0x7f0b0029

    const v4, 0x7f060033

    const v5, 0x7f060034

    move-object v0, p0

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 142
    const v1, 0x7f0b002a

    const v4, 0x7f060036

    const v5, 0x7f060037

    move-object v0, p0

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 146
    const v1, 0x7f0b002b

    const v2, 0x7f060039

    const v3, 0x7f06003a

    const v4, 0x7f06003b

    const v5, 0x7f06003c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 150
    const v1, 0x7f0b002c

    const v4, 0x7f06003e

    const v5, 0x7f06003f

    move-object v0, p0

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 154
    const v1, 0x7f0b002d

    const v4, 0x7f060041

    const v5, 0x7f060042

    move-object v0, p0

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 158
    const v1, 0x7f0b000d

    const v4, 0x7f060044

    const v5, 0x7f060045

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/worldclock/DeskClockResUtils;->setLayout(IIIII)V

    .line 161
    return-void
.end method
