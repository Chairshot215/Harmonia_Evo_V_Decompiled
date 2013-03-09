.class public Lcom/htc/clock3dwidget/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# static fields
.field public static final CLOCK_LAYOUT_ID:I = 0x7f030000

.field public static final CLOCK_LISTVIEW_ID:I = 0x7f090004

.field public static final CLOCK_TITLE_ID:I = 0x7f060029

.field public static final DELETE_ADD_CITY:Z = false

.field public static final M10_CLOCK_03:Ljava/lang/String; = null

.field public static final M10_CLOCK_04:Ljava/lang/String; = null

.field public static final M10_CLOCK_05:Ljava/lang/String; = null

.field public static final M10_CLOCK_06:Ljava/lang/String; = null

.field public static final M10_CLOCK_07:Ljava/lang/String; = null

.field public static final M10_CLOCK_08:Ljava/lang/String; = null

.field public static final M10_CLOCK_09:Ljava/lang/String; = null

.field public static final M10_CLOCK_10:Ljava/lang/String; = null

.field public static final M10_CLOCK_1x1:Ljava/lang/String; = null

.field public static final M10_CLOCK_2x2:Ljava/lang/String; = null

.field public static final M10_CLOCK_BEAM:Ljava/lang/String; = null

.field public static final M10_CLOCK_DIGITAL:Ljava/lang/String; = null

.field public static final M10_CLOCK_DUAL:Ljava/lang/String; = null

.field public static final M10_CLOCK_RING:Ljava/lang/String; = null

.field public static final M10_CLOCK_SOCIAL:Ljava/lang/String; = null

.field public static final M10_CLOCK_SPIN_CYCLE:Ljava/lang/String; = null

.field public static final M10_CLOCK_WEATHER:Ljava/lang/String; = null

.field public static final M10_CLOCK_WEATHER_4x1:Ljava/lang/String; = null

.field public static final M10_LOCKSCREEN_CONTAINER:Ljava/lang/String; = "Pyramid_Lockscreen_clock.m10"

.field public static final M10_LOCKSCREEN_RING_MOTION:Ljava/lang/String; = "Pyramid_Lock_ring_motion.m10"

.field public static final NO_TOP_ROUND:Z = false

.field public static final WIGGLE_LOOPING:Z = false

.field public static final WWP_LAYOUT_ID:I = 0x7f030001

.field public static final WWP_LISTVIEW_ID:I = 0x7f090006

.field public static final WWP_TITLE_ID:I = 0x7f060025


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Clock_03.m10"

    :goto_0
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_03:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Clock_04.m10"

    :goto_1
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_04:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Clock_05.m10"

    :goto_2
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_05:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Clock_06.m10"

    :goto_3
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_06:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Clock_07.m10"

    :goto_4
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_07:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Clock_08.m10"

    :goto_5
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_08:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Clock_09.m10"

    :goto_6
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_09:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Clock_10.m10"

    :goto_7
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_10:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Clock_digital_2x1.m10"

    :goto_8
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_DIGITAL:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Clock_2x2.m10"

    :goto_9
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_2x2:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Clock_Worldclock_1x1.m10"

    :goto_a
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_1x1:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Clock_dual.m10"

    :goto_b
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_DUAL:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Clock_Beam.m10"

    :goto_c
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_BEAM:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Clock_Ring.m10"

    :goto_d
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_RING:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Clock_SpinCycle.m10"

    :goto_e
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_SPIN_CYCLE:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Clock_social_4x2.m10"

    :goto_f
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_SOCIAL:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Clock_weather_4x2.m10"

    :goto_10
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_WEATHER:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isWVGAReso()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Clock_weather_4x1.m10"

    :goto_11
    sput-object v0, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_WEATHER_4x1:Ljava/lang/String;

    return-void

    .line 18
    :cond_0
    const-string v0, "clock_03_4x3.m10"

    goto/16 :goto_0

    .line 19
    :cond_1
    const-string v0, "clock_04_4x3.m10"

    goto/16 :goto_1

    .line 20
    :cond_2
    const-string v0, "clock_05_4x3.m10"

    goto/16 :goto_2

    .line 21
    :cond_3
    const-string v0, "clock_06_4x3.m10"

    goto/16 :goto_3

    .line 22
    :cond_4
    const-string v0, "clock_07_4x3.m10"

    goto/16 :goto_4

    .line 23
    :cond_5
    const-string v0, "clock_08_4x3.m10"

    goto/16 :goto_5

    .line 24
    :cond_6
    const-string v0, "clock_09_4x3.m10"

    goto/16 :goto_6

    .line 25
    :cond_7
    const-string v0, "clock_10_4x3.m10"

    goto/16 :goto_7

    .line 26
    :cond_8
    const-string v0, "clock_digital_2x1.m10"

    goto :goto_8

    .line 27
    :cond_9
    const-string v0, "clock_2x2.m10"

    goto :goto_9

    .line 28
    :cond_a
    const-string v0, "clock_world.m10"

    goto :goto_a

    .line 29
    :cond_b
    const-string v0, "clock_dual.m10"

    goto :goto_b

    .line 30
    :cond_c
    const-string v0, "clock_beam.m10"

    goto :goto_c

    .line 31
    :cond_d
    const-string v0, "clock_ring.m10"

    goto :goto_d

    .line 32
    :cond_e
    const-string v0, "clock_spincycle.m10"

    goto :goto_e

    .line 33
    :cond_f
    const-string v0, "clock_social.m10"

    goto :goto_f

    .line 34
    :cond_10
    const-string v0, "clock_weather.m10"

    goto :goto_10

    .line 35
    :cond_11
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isHDReso()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "clock_weather_4x1.m10"

    goto :goto_11

    :cond_12
    const-string v0, "Clock_Weather_4x1.m10"

    goto :goto_11
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHeaderView(Landroid/app/Activity;Lcom/htc/widget/HtcListView;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "activity"
    .parameter "listview"
    .parameter "addClickListener"

    .prologue
    .line 73
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 74
    .local v0, headerBarButtonAdd:Lcom/htc/widget/HeaderBarImage;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 75
    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 76
    const v1, 0x208087b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public static setupButton(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "activity"
    .parameter "l"

    .prologue
    .line 83
    const v2, 0x7f090008

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 84
    .local v0, button:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_0

    .line 85
    const v2, 0x7f060027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #button:Lcom/htc/widget/HtcFooterButton;
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate~ set button exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setupView(Landroid/app/Activity;IIII)V
    .locals 2
    .parameter "activity"
    .parameter "layoutId"
    .parameter "listViewId"
    .parameter "titleStringId"
    .parameter "type"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 54
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 55
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    const/4 v1, 0x4

    if-ne p4, v1, :cond_0

    .line 56
    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 62
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 63
    return-void

    .line 57
    :cond_0
    const/4 v1, 0x7

    if-ne p4, v1, :cond_1

    .line 58
    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto :goto_0

    .line 60
    :cond_1
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public static setupWWPView(Landroid/app/Activity;IIII)V
    .locals 2
    .parameter "activity"
    .parameter "layoutId"
    .parameter "listViewId"
    .parameter "titleStringId"
    .parameter "type"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 68
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 70
    return-void
.end method
