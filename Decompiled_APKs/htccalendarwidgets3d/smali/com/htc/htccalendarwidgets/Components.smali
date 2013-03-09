.class public Lcom/htc/htccalendarwidgets/Components;
.super Ljava/lang/Object;
.source "Components.java"


# static fields
.field public static final LAND_SCENE_PATH:Ljava/lang/String; = "Land/"

.field public static final MONTH_GRID_ITEMS:[Ljava/lang/String; = null

.field public static final MONTH_GRID_ITEM_FX_CONTROL_NAME:[Ljava/lang/String; = null

.field public static final MONTH_GRID_ITEM_FX_CONTROL_NAME_LUNAR:[Ljava/lang/String; = null

.field public static final PORT_SCENE_PATH:Ljava/lang/String; = "Port/"

.field private static final STYLE_01_FX_CONTROL_NAME:[Ljava/lang/String; = null

.field private static final STYLE_02_FX_CONTROL_NAME:[Ljava/lang/String; = null

.field private static final STYLE_03_FX_CONTROL_NAME:[Ljava/lang/String; = null

.field private static final WIDGET_STYLE1_AGENDA_HEADER_NAME:Ljava/lang/String; = "CalendarList_4x4_ListItem.m10"

.field private static final WIDGET_STYLE1_HEADER_NAME:Ljava/lang/String; = "Calendar_4x4_ListItem.m10"

.field private static final WIDGET_STYLE1_LISTITEM_NAME:Ljava/lang/String; = "Calendar_Grid_ListItem.m10"

.field public static final WIDGET_STYLE1_NAME:Ljava/lang/String; = "Calendar_4x4_ListView.m10"

.field private static final WIDGET_STYLE2_HEADER_NAME:Ljava/lang/String; = "Agenda_Header_ListItem.m10"

.field private static final WIDGET_STYLE2_LISTITEM_NAME:Ljava/lang/String; = "Agenda_ListItem.m10"

.field public static final WIDGET_STYLE2_NAME:Ljava/lang/String; = "Agenda_ListView.m10"

.field public static final WIDGET_STYLE3_NAME:Ljava/lang/String; = "Calendar_4x1.m10"

.field public static final WIDGET_STYLE_01:I = 0x0

.field public static final WIDGET_STYLE_02:I = 0x1

.field public static final WIDGET_STYLE_03:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.common_header"

    aput-object v1, v0, v3

    const-string v1, "textlabel.common_header_left"

    aput-object v1, v0, v4

    const-string v1, "textlabel.calendar_icon_01"

    aput-object v1, v0, v5

    const-string v1, "textlabel.calendar_icon_02"

    aput-object v1, v0, v6

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TBListView_month"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.week.01"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.week.02"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "textlabel.week.03"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.week.04"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.week.05"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "textlabel.week.06"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "textlabel.week.07"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/Components;->STYLE_01_FX_CONTROL_NAME:[Ljava/lang/String;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "textlabel.empty_page"

    aput-object v1, v0, v3

    const-string v1, "textlabel.common_header_left"

    aput-object v1, v0, v4

    const-string v1, "textlabel.calendar_icon_01"

    aput-object v1, v0, v5

    const-string v1, "textlabel.calendar_icon_02"

    aput-object v1, v0, v6

    const-string v1, "button.common_header"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "app.hitbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.main_page"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timeline.tiltanim"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ListViewViewPort_Portrait"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/Components;->STYLE_02_FX_CONTROL_NAME:[Ljava/lang/String;

    .line 52
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.common_widget_4x1"

    aput-object v1, v0, v3

    const-string v1, "textlabel.empty_page"

    aput-object v1, v0, v4

    const-string v1, "textlabel.calendar_4x1_01"

    aput-object v1, v0, v5

    const-string v1, "textlabel.calendar_4x1_02"

    aput-object v1, v0, v6

    const-string v1, "textlabel.calendar_4x1_03"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "textlabel.calendar_4x1_04"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.calendar_4x1_05"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.calendar_4x1_06"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "textlabel.calendar_4x1_07"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.calendar_icon_01"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.calendar_icon_02"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dynamicimage.label_b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dynamicimage.label"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dynamicimage.label_1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "main_event.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.main_page"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "timeline.tiltanim"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "first_event.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "second_event.hitbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/Components;->STYLE_03_FX_CONTROL_NAME:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Calendar_Item_01"

    aput-object v1, v0, v3

    const-string v1, "Calendar_Item_02"

    aput-object v1, v0, v4

    const-string v1, "Calendar_Item_03"

    aput-object v1, v0, v5

    const-string v1, "Calendar_Item_04"

    aput-object v1, v0, v6

    const-string v1, "Calendar_Item_05"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Calendar_Item_06"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Calendar_Item_07"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Calendar_Item_08"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Calendar_Item_09"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Calendar_Item_10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Calendar_Item_11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Calendar_Item_12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Calendar_Item_13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Calendar_Item_14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Calendar_Item_15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Calendar_Item_16"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Calendar_Item_17"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Calendar_Item_18"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Calendar_Item_19"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Calendar_Item_20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Calendar_Item_21"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Calendar_Item_22"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Calendar_Item_23"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Calendar_Item_24"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Calendar_Item_25"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Calendar_Item_26"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Calendar_Item_27"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Calendar_Item_28"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Calendar_Item_29"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Calendar_Item_30"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Calendar_Item_31"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Calendar_Item_32"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Calendar_Item_33"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Calendar_Item_34"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Calendar_Item_35"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Calendar_Item_36"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Calendar_Item_37"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Calendar_Item_38"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Calendar_Item_39"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Calendar_Item_40"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Calendar_Item_41"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Calendar_Item_42"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEMS:[Ljava/lang/String;

    .line 84
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "textlabel.calendar_day_b"

    aput-object v1, v0, v3

    const-string v1, "textlabel.calendar_day_s"

    aput-object v1, v0, v4

    const-string v1, "textlabel.calendar_day_lunar"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME_LUNAR:[Ljava/lang/String;

    .line 90
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "textlabel.calendar_day"

    aput-object v1, v0, v3

    const-string v1, "button.calendar_day"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.calendar_today"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.calendar_indicator"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getScenePath(I)Ljava/lang/String;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 169
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "Port/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Land/"

    goto :goto_0
.end method

.method public static getWidgetHeaderListPath(I)Ljava/lang/String;
    .locals 2
    .parameter "orientation"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/htccalendarwidgets/Components;->getScenePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CalendarList_4x4_ListItem.m10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetHeaderPath(II)Ljava/lang/String;
    .locals 3
    .parameter "orientation"
    .parameter "style"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, scenePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 125
    .local v1, styleName:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/htccalendarwidgets/Components;->getScenePath(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 128
    :pswitch_0
    const-string v1, "Calendar_4x4_ListItem.m10"

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    const-string v1, "Agenda_Header_ListItem.m10"

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getWidgetItemPath(II)Ljava/lang/String;
    .locals 3
    .parameter "orientation"
    .parameter "style"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, scenePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 142
    .local v1, styleName:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/htccalendarwidgets/Components;->getScenePath(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 145
    :pswitch_0
    const-string v1, "Calendar_Grid_ListItem.m10"

    .line 146
    goto :goto_0

    .line 148
    :pswitch_1
    const-string v1, "Agenda_ListItem.m10"

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getWidgetSceneObjectMap(I)[Ljava/lang/String;
    .locals 1
    .parameter "style"

    .prologue
    .line 156
    packed-switch p0, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    sget-object v0, Lcom/htc/htccalendarwidgets/Components;->STYLE_01_FX_CONTROL_NAME:[Ljava/lang/String;

    goto :goto_0

    .line 160
    :pswitch_1
    sget-object v0, Lcom/htc/htccalendarwidgets/Components;->STYLE_02_FX_CONTROL_NAME:[Ljava/lang/String;

    goto :goto_0

    .line 162
    :pswitch_2
    sget-object v0, Lcom/htc/htccalendarwidgets/Components;->STYLE_03_FX_CONTROL_NAME:[Ljava/lang/String;

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getWidgetScenePath(II)Ljava/lang/String;
    .locals 3
    .parameter "orientation"
    .parameter "style"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, scenePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 101
    .local v1, styleName:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/htccalendarwidgets/Components;->getScenePath(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 114
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 104
    :pswitch_0
    const-string v1, "Calendar_4x4_ListView.m10"

    .line 105
    goto :goto_0

    .line 107
    :pswitch_1
    const-string v1, "Agenda_ListView.m10"

    .line 108
    goto :goto_0

    .line 110
    :pswitch_2
    const-string v1, "Calendar_4x1.m10"

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
