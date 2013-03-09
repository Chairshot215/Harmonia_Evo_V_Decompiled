.class public Lcom/htc/htcmailwidgets/Components;
.super Ljava/lang/Object;
.source "Components.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/Components$WidgetInfo;,
        Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;,
        Lcom/htc/htcmailwidgets/Components$OS_VERSION;,
        Lcom/htc/htcmailwidgets/Components$ORIENTATION;
    }
.end annotation


# static fields
.field public static final HD:I = 0x7

.field private static final HD_WIDGET_STYLE1_PHOTO_SIZE_X:I = 0x4a

.field private static final HD_WIDGET_STYLE1_PHOTO_SIZE_Y:I = 0x4a

.field private static final HD_WIDGET_STYLE2_PHOTO_SIZE_X:I = 0x48

.field private static final HD_WIDGET_STYLE2_PHOTO_SIZE_Y:I = 0x48

.field private static final HONEYCOMB_WIDGET_STYLE1_LISTITEM_NAME:Ljava/lang/String; = "Mail_3x5_ListItem.m10"

.field public static final HONEYCOMB_WIDGET_STYLE1_NAME:Ljava/lang/String; = "Mail_3x5_ListView.m10"

.field private static final HONEYCOMB_WIDGET_STYLE2_LISTITEM_NAME:Ljava/lang/String; = "MailSummary_3x5_ListItem.m10"

.field public static final HONEYCOMB_WIDGET_STYLE2_NAME:Ljava/lang/String; = "MailSummary_3x3_ListView.m10"

.field private static final HONEYCOMB_WIDGET_STYLE3_LISTITEM_NAME:Ljava/lang/String; = "MailList_3x5_ListItem.m10"

.field public static final HONEYCOMB_WIDGET_STYLE3_NAME:Ljava/lang/String; = "MailSummary_3x4_ListView.m10"

.field public static final HONEYCOMB_WIDGET_STYLE4_NAME:Ljava/lang/String; = "MailSummary_3x5_ListView.m10"

.field public static final HONEYCOMB_WIDGET_STYLE5_NAME:Ljava/lang/String; = "MailList_3x3_ListView.m10"

.field public static final HONEYCOMB_WIDGET_STYLE6_NAME:Ljava/lang/String; = "MailList_3x4_ListView.m10"

.field public static final HONEYCOMB_WIDGET_STYLE7_NAME:Ljava/lang/String; = "MailList_3x5_ListView.m10"

.field public static final HONEYCOMB_WIDGET_STYLE_01:I = 0x0

.field public static final HONEYCOMB_WIDGET_STYLE_02:I = 0x1

.field public static final HONEYCOMB_WIDGET_STYLE_03:I = 0x2

.field public static final HONEYCOMB_WIDGET_STYLE_04:I = 0x3

.field public static final HONEYCOMB_WIDGET_STYLE_05:I = 0x4

.field public static final HONEYCOMB_WIDGET_STYLE_06:I = 0x5

.field public static final HONEYCOMB_WIDGET_STYLE_07:I = 0x6

.field private static final HONEYCOMB_WSVGA_WIDGET_STYLE1_PHOTO_SIZE_X:I = 0x40

.field private static final HONEYCOMB_WSVGA_WIDGET_STYLE1_PHOTO_SIZE_Y:I = 0x40

.field private static final HONEYCOMB_WSVGA_WIDGET_STYLE2_PHOTO_SIZE_X:I = 0x48

.field private static final HONEYCOMB_WSVGA_WIDGET_STYLE2_PHOTO_SIZE_Y:I = 0x48

.field public static final HVGA:I = 0x2

.field public static final KEY_WIDGET_SCENE:Ljava/lang/String; = "widget_scene"

.field public static final LAND_SCENE_PATH:Ljava/lang/String; = "Land/"

.field public static final PORT_SCENE_PATH:Ljava/lang/String; = "Port/"

.field public static final QHD:I = 0x5

.field private static final QHD_WIDGET_STYLE1_PHOTO_SIZE_X:I = 0x4a

.field private static final QHD_WIDGET_STYLE1_PHOTO_SIZE_Y:I = 0x4a

.field private static final QHD_WIDGET_STYLE2_PHOTO_SIZE_X:I = 0x48

.field private static final QHD_WIDGET_STYLE2_PHOTO_SIZE_Y:I = 0x48

.field public static final QVGA:I = 0x0

.field public static final UNKNOWN:I = -0x1

.field public static final UNKNOWN_WIDGET_STYLE:I = -0x1

.field private static final WIDGET_STYLE1_LISTITEM_NAME:Ljava/lang/String; = "Mail_4x4_ListItem.m10"

.field public static final WIDGET_STYLE1_NAME:Ljava/lang/String; = "Mail_4x4_ListView.m10"

.field private static final WIDGET_STYLE2_LISTITEM_NAME:Ljava/lang/String; = "MailSummary_4x4_ListItem.m10"

.field public static final WIDGET_STYLE2_NAME:Ljava/lang/String; = "MailSummary_4x4_ListView.m10"

.field private static final WIDGET_STYLE3_LISTITEM_NAME:Ljava/lang/String; = "MailList_4x4_ListItem.m10"

.field public static final WIDGET_STYLE3_NAME:Ljava/lang/String; = "MailList_4x4_ListView.m10"

.field public static final WIDGET_STYLE_01:I = 0x0

.field public static final WIDGET_STYLE_02:I = 0x1

.field public static final WIDGET_STYLE_03:I = 0x2

.field public static final WQVGA:I = 0x1

.field public static final WSVGA:I = 0x4

.field private static final WSVGA_WIDGET_STYLE1_PHOTO_SIZE_X:I = 0x40

.field private static final WSVGA_WIDGET_STYLE1_PHOTO_SIZE_Y:I = 0x40

.field private static final WSVGA_WIDGET_STYLE2_PHOTO_SIZE_X:I = 0x48

.field private static final WSVGA_WIDGET_STYLE2_PHOTO_SIZE_Y:I = 0x48

.field public static final WVGA:I = 0x3

.field private static final WVGA_WIDGET_STYLE1_PHOTO_SIZE_X:I = 0x48

.field private static final WVGA_WIDGET_STYLE1_PHOTO_SIZE_Y:I = 0x48

.field private static final WVGA_WIDGET_STYLE2_PHOTO_SIZE_X:I = 0x48

.field private static final WVGA_WIDGET_STYLE2_PHOTO_SIZE_Y:I = 0x48

.field public static final WXGA:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOSVersion(Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$OS_VERSION;
    .locals 8
    .parameter "release_version"

    .prologue
    const-wide/high16 v6, 0x4010

    .line 980
    sget-object v0, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    .line 982
    .local v0, os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 983
    .local v1, pos:I
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 984
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_0

    .line 985
    sget-object v0, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    .line 986
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_1

    .line 987
    sget-object v0, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    .line 988
    :cond_1
    return-object v0
.end method

.method public static getResolution(II)I
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v5, 0x500

    const/16 v4, 0x320

    const/16 v3, 0x1e0

    const/16 v2, 0x140

    const/16 v1, 0xf0

    .line 90
    if-ne p0, v1, :cond_0

    if-eq p1, v2, :cond_1

    :cond_0
    if-ne p0, v2, :cond_2

    if-ne p1, v1, :cond_2

    .line 92
    :cond_1
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 93
    :cond_2
    if-ne p0, v1, :cond_3

    const/16 v0, 0x190

    if-eq p1, v0, :cond_4

    :cond_3
    const/16 v0, 0x190

    if-ne p0, v0, :cond_5

    if-ne p1, v1, :cond_5

    .line 95
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :cond_5
    if-ne p0, v2, :cond_6

    if-eq p1, v3, :cond_7

    :cond_6
    if-ne p0, v3, :cond_8

    if-ne p1, v2, :cond_8

    .line 98
    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    .line 99
    :cond_8
    if-ne p0, v3, :cond_9

    if-eq p1, v4, :cond_a

    :cond_9
    if-ne p0, v4, :cond_b

    if-ne p1, v3, :cond_b

    .line 101
    :cond_a
    const/4 v0, 0x3

    goto :goto_0

    .line 102
    :cond_b
    const/16 v0, 0x258

    if-ne p0, v0, :cond_c

    const/16 v0, 0x400

    if-eq p1, v0, :cond_f

    :cond_c
    const/16 v0, 0x400

    if-ne p0, v0, :cond_d

    const/16 v0, 0x258

    if-eq p1, v0, :cond_f

    :cond_d
    const/16 v0, 0x400

    if-ne p0, v0, :cond_e

    const/16 v0, 0x228

    if-eq p1, v0, :cond_f

    :cond_e
    const/16 v0, 0x258

    if-ne p0, v0, :cond_10

    const/16 v0, 0x3d0

    if-ne p1, v0, :cond_10

    .line 106
    :cond_f
    const/4 v0, 0x4

    goto :goto_0

    .line 107
    :cond_10
    const/16 v0, 0x21c

    if-ne p0, v0, :cond_11

    const/16 v0, 0x3c0

    if-eq p1, v0, :cond_12

    :cond_11
    const/16 v0, 0x3c0

    if-ne p0, v0, :cond_13

    const/16 v0, 0x21c

    if-ne p1, v0, :cond_13

    .line 109
    :cond_12
    const/4 v0, 0x5

    goto :goto_0

    .line 110
    :cond_13
    if-ne p0, v4, :cond_14

    if-eq p1, v5, :cond_15

    :cond_14
    if-ne p0, v5, :cond_16

    if-ne p1, v4, :cond_16

    .line 112
    :cond_15
    const/4 v0, 0x6

    goto :goto_0

    .line 113
    :cond_16
    if-ne p0, v5, :cond_17

    const/16 v0, 0x2d0

    if-eq p1, v0, :cond_18

    :cond_17
    const/16 v0, 0x2d0

    if-ne p0, v0, :cond_19

    if-ne p1, v5, :cond_19

    .line 115
    :cond_18
    const/4 v0, 0x7

    goto :goto_0

    .line 116
    :cond_19
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getWidgetAsyncListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;
    .locals 7
    .parameter "osVersion"
    .parameter "resolution"
    .parameter "style"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, fxControlIn:[Ljava/lang/String;
    if-eq p1, v3, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 819
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_3

    .line 820
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 900
    :cond_2
    :goto_0
    return-object v0

    .line 822
    :pswitch_0
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.photo"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_photo"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.attachment"

    aput-object v1, v0, v6

    const-string v1, "textlabel.name_02"

    aput-object v1, v0, v2

    const-string v1, "textlabel.time_02"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.mail_02"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.secondary"

    aput-object v2, v0, v1

    .line 825
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto :goto_0

    .line 827
    :pswitch_1
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_indicator_01"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.mail_indicator_02"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.mail_indicator_03"

    aput-object v1, v0, v2

    const-string v1, "dynamicimage.mail_indicator_04"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "dynamicimage.photos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.Mail_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.Mail_time_02"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "textlabel.Mail_maintext"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.Mail_primary_02"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.Mail_secondary_02"

    aput-object v2, v0, v1

    .line 831
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto :goto_0

    .line 833
    :pswitch_2
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "dynamicimage.mail_indicator_01"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_indicator_02"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.mail_indicator_03"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.mail_indicator_04"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto :goto_0

    .line 838
    :cond_3
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 840
    :pswitch_3
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.photo"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_photo"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.attachment"

    aput-object v1, v0, v6

    const-string v1, "textlabel.name_02"

    aput-object v1, v0, v2

    const-string v1, "textlabel.time_02"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.mail_02"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.secondary"

    aput-object v2, v0, v1

    .line 843
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 847
    :pswitch_4
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_indicator_01"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.mail_indicator_02"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.mail_indicator_03"

    aput-object v1, v0, v2

    const-string v1, "dynamicimage.mail_indicator_04"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "dynamicimage.photos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.Mail_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.Mail_time_02"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "textlabel.Mail_maintext"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.Mail_primary_02"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.Mail_secondary_02"

    aput-object v2, v0, v1

    .line 851
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 855
    :pswitch_5
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "dynamicimage.mail_indicator_01"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_indicator_02"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.mail_indicator_03"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.mail_indicator_04"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 861
    :cond_4
    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    :cond_5
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_6

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_7

    .line 862
    :cond_6
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 864
    :pswitch_6
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.photo"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_photo"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.attachment"

    aput-object v1, v0, v6

    const-string v1, "textlabel.name_02"

    aput-object v1, v0, v2

    const-string v1, "textlabel.time_02"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.mail_02"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.secondary"

    aput-object v2, v0, v1

    .line 867
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 869
    :pswitch_7
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.indicator_01"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.indicator_02"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.indicator_03"

    aput-object v1, v0, v2

    const-string v1, "dynamicimage.indicator_04"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "dynamicimage.common_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.Mail_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.Mail_time_02"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "textlabel.Mail_maintext"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.Mail_primary_02"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.Mail_secondary_02"

    aput-object v2, v0, v1

    .line 873
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 875
    :pswitch_8
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "dynamicimage.mail_indicator_01"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_indicator_02"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.mail_indicator_03"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.mail_indicator_04"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 880
    :cond_7
    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_8

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_2

    .line 881
    :cond_8
    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 883
    :pswitch_9
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.photo"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_photo"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.attachment"

    aput-object v1, v0, v6

    const-string v1, "textlabel.name_02"

    aput-object v1, v0, v2

    const-string v1, "textlabel.time_02"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.mail_02"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.secondary"

    aput-object v2, v0, v1

    .line 886
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 888
    :pswitch_a
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_indicator_01"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.mail_indicator_02"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.mail_indicator_03"

    aput-object v1, v0, v2

    const-string v1, "dynamicimage.mail_indicator_04"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "dynamicimage.photos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.Mail_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.Mail_time_02"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "textlabel.Mail_maintext"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.Mail_primary_02"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.Mail_secondary_02"

    aput-object v2, v0, v1

    .line 892
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 894
    :pswitch_b
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "dynamicimage.mail_indicator_01"

    aput-object v1, v0, v4

    const-string v1, "dynamicimage.mail_indicator_02"

    aput-object v1, v0, v5

    const-string v1, "dynamicimage.mail_indicator_03"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.mail_indicator_04"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 838
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 862
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 881
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getWidgetItemPath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;
    .locals 2
    .parameter "osVersion"
    .parameter "resolution"
    .parameter "orientation"
    .parameter "style"

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, M10_PATH:Ljava/lang/String;
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_6

    .line 488
    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 489
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_1

    .line 490
    packed-switch p3, :pswitch_data_0

    .line 502
    :cond_1
    :goto_0
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 503
    packed-switch p3, :pswitch_data_1

    .line 614
    :cond_2
    :goto_1
    return-object v0

    .line 492
    :pswitch_0
    const-string v0, "Port/Mail_4x4_ListItem.m10"

    .line 493
    goto :goto_0

    .line 495
    :pswitch_1
    const-string v0, "Port/MailSummary_4x4_ListItem.m10"

    .line 496
    goto :goto_0

    .line 498
    :pswitch_2
    const-string v0, "Port/MailList_4x4_ListItem.m10"

    goto :goto_0

    .line 505
    :pswitch_3
    const-string v0, "Land/Mail_4x4_ListItem.m10"

    .line 506
    goto :goto_1

    .line 508
    :pswitch_4
    const-string v0, "Land/MailSummary_4x4_ListItem.m10"

    .line 509
    goto :goto_1

    .line 511
    :pswitch_5
    const-string v0, "Land/MailList_4x4_ListItem.m10"

    goto :goto_1

    .line 515
    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 516
    :cond_4
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_5

    .line 517
    packed-switch p3, :pswitch_data_2

    .line 533
    :cond_5
    :goto_2
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 534
    packed-switch p3, :pswitch_data_3

    goto :goto_1

    .line 536
    :pswitch_6
    const-string v0, "Land/Mail_3x5_ListItem.m10"

    .line 537
    goto :goto_1

    .line 519
    :pswitch_7
    const-string v0, "Port/Mail_3x5_ListItem.m10"

    .line 520
    goto :goto_2

    .line 524
    :pswitch_8
    const-string v0, "Port/MailSummary_3x5_ListItem.m10"

    .line 525
    goto :goto_2

    .line 529
    :pswitch_9
    const-string v0, "Port/MailList_3x5_ListItem.m10"

    goto :goto_2

    .line 541
    :pswitch_a
    const-string v0, "Land/MailSummary_3x5_ListItem.m10"

    .line 542
    goto :goto_1

    .line 546
    :pswitch_b
    const-string v0, "Land/MailList_3x5_ListItem.m10"

    goto :goto_1

    .line 551
    :cond_6
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_8

    .line 552
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_7

    .line 553
    packed-switch p3, :pswitch_data_4

    .line 565
    :cond_7
    :goto_3
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 566
    packed-switch p3, :pswitch_data_5

    goto :goto_1

    .line 568
    :pswitch_c
    const-string v0, "Land/Mail_4x4_ListItem.m10"

    .line 569
    goto :goto_1

    .line 555
    :pswitch_d
    const-string v0, "Port/Mail_4x4_ListItem.m10"

    .line 556
    goto :goto_3

    .line 558
    :pswitch_e
    const-string v0, "Port/MailSummary_4x4_ListItem.m10"

    .line 559
    goto :goto_3

    .line 561
    :pswitch_f
    const-string v0, "Port/MailList_4x4_ListItem.m10"

    goto :goto_3

    .line 571
    :pswitch_10
    const-string v0, "Land/MailSummary_4x4_ListItem.m10"

    .line 572
    goto :goto_1

    .line 574
    :pswitch_11
    const-string v0, "Land/MailList_4x4_ListItem.m10"

    goto :goto_1

    .line 579
    :cond_8
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_9

    .line 580
    packed-switch p3, :pswitch_data_6

    .line 596
    :cond_9
    :goto_4
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 597
    packed-switch p3, :pswitch_data_7

    goto :goto_1

    .line 599
    :pswitch_12
    const-string v0, "Land/Mail_3x5_ListItem.m10"

    .line 600
    goto :goto_1

    .line 582
    :pswitch_13
    const-string v0, "Port/Mail_3x5_ListItem.m10"

    .line 583
    goto :goto_4

    .line 587
    :pswitch_14
    const-string v0, "Port/MailSummary_3x5_ListItem.m10"

    .line 588
    goto :goto_4

    .line 592
    :pswitch_15
    const-string v0, "Port/MailList_3x5_ListItem.m10"

    goto :goto_4

    .line 604
    :pswitch_16
    const-string v0, "Land/MailSummary_3x5_ListItem.m10"

    .line 605
    goto :goto_1

    .line 609
    :pswitch_17
    const-string v0, "Land/MailList_3x5_ListItem.m10"

    goto :goto_1

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 503
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 517
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 534
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 553
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 566
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 580
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch

    .line 597
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_12
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public static getWidgetListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;
    .locals 7
    .parameter "osVersion"
    .parameter "resolution"
    .parameter "style"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, fxControlIn:[Ljava/lang/String;
    if-eq p1, v3, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 734
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_3

    .line 735
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 812
    :cond_2
    :goto_0
    return-object v0

    .line 737
    :pswitch_0
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.delete_page"

    aput-object v1, v0, v4

    const-string v1, "timeline.photo"

    aput-object v1, v0, v5

    const-string v1, "textlabel.name"

    aput-object v1, v0, v6

    const-string v1, "mail.sender.hitbox"

    aput-object v1, v0, v2

    const-string v1, "mail.photo.hitbox"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.mail"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "button.mail_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "button.mail_reply"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.primary"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.page"

    aput-object v2, v0, v1

    .line 741
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto :goto_0

    .line 743
    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "textlabel.Mail_primary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.Mail_secondary"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .line 746
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto :goto_0

    .line 748
    :pswitch_2
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "textlabel.primary"

    aput-object v1, v0, v4

    const-string v1, "textlabel.secondary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.time"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto :goto_0

    .line 752
    :cond_3
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 754
    :pswitch_3
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.delete_page"

    aput-object v1, v0, v4

    const-string v1, "timeline.photo"

    aput-object v1, v0, v5

    const-string v1, "textlabel.name"

    aput-object v1, v0, v6

    const-string v1, "mail.sender.hitbox"

    aput-object v1, v0, v2

    const-string v1, "mail.photo.hitbox"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.mail"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "button.mail_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "button.mail_reply"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.primary"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.page"

    aput-object v2, v0, v1

    .line 758
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 762
    :pswitch_4
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "textlabel.Mail_primary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.Mail_secondary"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .line 765
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 769
    :pswitch_5
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "textlabel.primary"

    aput-object v1, v0, v4

    const-string v1, "textlabel.secondary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.time"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 774
    :cond_4
    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    :cond_5
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_6

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_7

    .line 775
    :cond_6
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 777
    :pswitch_6
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.delete_page"

    aput-object v1, v0, v4

    const-string v1, "timeline.photo"

    aput-object v1, v0, v5

    const-string v1, "textlabel.name"

    aput-object v1, v0, v6

    const-string v1, "mail.sender.hitbox"

    aput-object v1, v0, v2

    const-string v1, "mail.photo.hitbox"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.mail"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "button.mail_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "button.mail_reply"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.primary"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.page"

    aput-object v2, v0, v1

    .line 781
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 783
    :pswitch_7
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "textlabel.Mail_primary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.Mail_secondary"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .line 786
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 788
    :pswitch_8
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "textlabel.Mail_primary"

    aput-object v1, v0, v4

    const-string v1, "textlabel.Mail_secondary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.Mail_time"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 792
    :cond_7
    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_8

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_2

    .line 793
    :cond_8
    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 795
    :pswitch_9
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.delete_page"

    aput-object v1, v0, v4

    const-string v1, "timeline.photo"

    aput-object v1, v0, v5

    const-string v1, "textlabel.name"

    aput-object v1, v0, v6

    const-string v1, "mail.sender.hitbox"

    aput-object v1, v0, v2

    const-string v1, "mail.photo.hitbox"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "textlabel.time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "textlabel.mail"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "button.mail_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "button.mail_reply"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.primary"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.page"

    aput-object v2, v0, v1

    .line 799
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 801
    :pswitch_a
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "timeline.text_mail"

    aput-object v1, v0, v4

    const-string v1, "textlabel.Mail_primary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.Mail_secondary"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .line 804
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 806
    :pswitch_b
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const-string v1, "textlabel.primary"

    aput-object v1, v0, v4

    const-string v1, "textlabel.secondary"

    aput-object v1, v0, v5

    const-string v1, "textlabel.time"

    aput-object v1, v0, v6

    const-string v1, "dynamicimage.label"

    aput-object v1, v0, v2

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 752
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 775
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 793
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getWidgetPhotoSizeX(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I
    .locals 5
    .parameter "osVersion"
    .parameter "resolution"
    .parameter "style"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, size:I
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_3

    .line 125
    if-ne p1, v3, :cond_1

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 134
    const/16 v0, 0x40

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 128
    :pswitch_0
    const/16 v0, 0x40

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    const/16 v0, 0x48

    .line 132
    goto :goto_0

    .line 137
    :cond_1
    if-eq p1, v4, :cond_2

    if-ne p1, v2, :cond_0

    .line 138
    :cond_2
    packed-switch p2, :pswitch_data_1

    .line 146
    const/16 v0, 0x4a

    .line 147
    goto :goto_0

    .line 140
    :pswitch_2
    const/16 v0, 0x4a

    .line 141
    goto :goto_0

    .line 143
    :pswitch_3
    const/16 v0, 0x48

    .line 144
    goto :goto_0

    .line 150
    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    if-ne p1, v3, :cond_6

    .line 151
    :cond_4
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_5

    .line 152
    packed-switch p2, :pswitch_data_2

    .line 160
    const/16 v0, 0x40

    .line 161
    goto :goto_0

    .line 154
    :pswitch_4
    const/16 v0, 0x40

    .line 155
    goto :goto_0

    .line 157
    :pswitch_5
    const/16 v0, 0x48

    .line 158
    goto :goto_0

    .line 164
    :cond_5
    packed-switch p2, :pswitch_data_3

    .line 174
    const/16 v0, 0x40

    .line 175
    goto :goto_0

    .line 166
    :pswitch_6
    const/16 v0, 0x40

    .line 167
    goto :goto_0

    .line 171
    :pswitch_7
    const/16 v0, 0x48

    .line 172
    goto :goto_0

    .line 178
    :cond_6
    if-ne p1, v2, :cond_7

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_7

    .line 179
    packed-switch p2, :pswitch_data_4

    .line 187
    const/16 v0, 0x4a

    .line 188
    goto :goto_0

    .line 181
    :pswitch_8
    const/16 v0, 0x4a

    .line 182
    goto :goto_0

    .line 184
    :pswitch_9
    const/16 v0, 0x48

    .line 185
    goto :goto_0

    .line 190
    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_8

    .line 191
    packed-switch p2, :pswitch_data_5

    .line 199
    const/16 v0, 0x48

    .line 200
    goto :goto_0

    .line 193
    :pswitch_a
    const/16 v0, 0x48

    .line 194
    goto :goto_0

    .line 196
    :pswitch_b
    const/16 v0, 0x48

    .line 197
    goto :goto_0

    .line 202
    :cond_8
    if-ne p1, v4, :cond_0

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_0

    .line 203
    packed-switch p2, :pswitch_data_6

    .line 211
    const/16 v0, 0x4a

    goto :goto_0

    .line 205
    :pswitch_c
    const/16 v0, 0x4a

    .line 206
    goto :goto_0

    .line 208
    :pswitch_d
    const/16 v0, 0x48

    .line 209
    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 152
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 164
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 179
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 191
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 203
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getWidgetPhotoSizeY(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I
    .locals 5
    .parameter "osVersion"
    .parameter "resolution"
    .parameter "style"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, size:I
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_3

    .line 223
    if-ne p1, v3, :cond_1

    .line 224
    packed-switch p2, :pswitch_data_0

    .line 232
    const/16 v0, 0x40

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 226
    :pswitch_0
    const/16 v0, 0x40

    .line 227
    goto :goto_0

    .line 229
    :pswitch_1
    const/16 v0, 0x48

    .line 230
    goto :goto_0

    .line 235
    :cond_1
    if-eq p1, v4, :cond_2

    if-ne p1, v2, :cond_0

    .line 236
    :cond_2
    packed-switch p2, :pswitch_data_1

    .line 244
    const/16 v0, 0x4a

    .line 245
    goto :goto_0

    .line 238
    :pswitch_2
    const/16 v0, 0x4a

    .line 239
    goto :goto_0

    .line 241
    :pswitch_3
    const/16 v0, 0x48

    .line 242
    goto :goto_0

    .line 248
    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    if-ne p1, v3, :cond_6

    .line 249
    :cond_4
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_5

    .line 250
    packed-switch p2, :pswitch_data_2

    .line 258
    const/16 v0, 0x40

    .line 259
    goto :goto_0

    .line 252
    :pswitch_4
    const/16 v0, 0x40

    .line 253
    goto :goto_0

    .line 255
    :pswitch_5
    const/16 v0, 0x48

    .line 256
    goto :goto_0

    .line 262
    :cond_5
    packed-switch p2, :pswitch_data_3

    .line 272
    const/16 v0, 0x40

    .line 273
    goto :goto_0

    .line 264
    :pswitch_6
    const/16 v0, 0x40

    .line 265
    goto :goto_0

    .line 269
    :pswitch_7
    const/16 v0, 0x48

    .line 270
    goto :goto_0

    .line 276
    :cond_6
    if-ne p1, v2, :cond_7

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_7

    .line 277
    packed-switch p2, :pswitch_data_4

    .line 285
    const/16 v0, 0x4a

    .line 286
    goto :goto_0

    .line 279
    :pswitch_8
    const/16 v0, 0x4a

    .line 280
    goto :goto_0

    .line 282
    :pswitch_9
    const/16 v0, 0x48

    .line 283
    goto :goto_0

    .line 288
    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_8

    .line 289
    packed-switch p2, :pswitch_data_5

    .line 297
    const/16 v0, 0x48

    .line 298
    goto :goto_0

    .line 291
    :pswitch_a
    const/16 v0, 0x48

    .line 292
    goto :goto_0

    .line 294
    :pswitch_b
    const/16 v0, 0x48

    .line 295
    goto :goto_0

    .line 300
    :cond_8
    if-ne p1, v4, :cond_0

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_0

    .line 301
    packed-switch p2, :pswitch_data_6

    .line 309
    const/16 v0, 0x4a

    goto :goto_0

    .line 303
    :pswitch_c
    const/16 v0, 0x4a

    .line 304
    goto :goto_0

    .line 306
    :pswitch_d
    const/16 v0, 0x48

    .line 307
    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 250
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 262
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 277
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 289
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 301
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getWidgetSceneObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;
    .locals 8
    .parameter "osVersion"
    .parameter "resolution"
    .parameter "style"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 618
    const/4 v0, 0x0

    .line 620
    .local v0, fxControlIn:[Ljava/lang/String;
    if-eq p1, v4, :cond_0

    if-ne p1, v6, :cond_4

    .line 621
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_3

    .line 622
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 726
    :cond_2
    :goto_0
    return-object v0

    .line 624
    :pswitch_0
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "TBListView_Mail_4x4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeline.tiltanim"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeline.error_page"

    aput-object v2, v0, v1

    const-string v1, "textlabel.name"

    aput-object v1, v0, v3

    const-string v1, "textlabel.time"

    aput-object v1, v0, v4

    const-string v1, "textlabel.mail"

    aput-object v1, v0, v5

    const-string v1, "textlabel.title"

    aput-object v1, v0, v6

    const-string v1, "textlabel.body"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "dynamicimage.mail_photo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.empty"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.account"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .line 628
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto :goto_0

    .line 630
    :pswitch_1
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .line 633
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 635
    :pswitch_2
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 641
    :cond_3
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 643
    :pswitch_3
    const/16 v1, 0x11

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "TBListView_Mail_4x4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeline.tiltanim"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeline.error_page"

    aput-object v2, v0, v1

    const-string v1, "textlabel.name"

    aput-object v1, v0, v3

    const-string v1, "textlabel.time"

    aput-object v1, v0, v4

    const-string v1, "textlabel.mail"

    aput-object v1, v0, v5

    const-string v1, "textlabel.title"

    aput-object v1, v0, v6

    const-string v1, "textlabel.body"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "dynamicimage.mail_photo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.empty"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.account"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "textlabel.common_notifiction99"

    aput-object v2, v0, v1

    .line 647
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 651
    :pswitch_4
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "textlabel.common_notifiction99"

    aput-object v2, v0, v1

    .line 654
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 658
    :pswitch_5
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "textlabel.common_notifiction99"

    aput-object v2, v0, v1

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 665
    :cond_4
    if-ne p1, v5, :cond_6

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_6

    .line 666
    :cond_5
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 668
    :pswitch_6
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "TBListView_Mail_4x4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeline.tiltanim"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeline.error_page"

    aput-object v2, v0, v1

    const-string v1, "textlabel.name"

    aput-object v1, v0, v3

    const-string v1, "textlabel.time"

    aput-object v1, v0, v4

    const-string v1, "textlabel.mail"

    aput-object v1, v0, v5

    const-string v1, "textlabel.title"

    aput-object v1, v0, v6

    const-string v1, "textlabel.body"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "dynamicimage.mail_photo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.empty"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.account"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .line 672
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 674
    :pswitch_7
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .line 677
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 679
    :pswitch_8
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 685
    :cond_6
    if-ne p1, v7, :cond_8

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_7

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_8

    .line 686
    :cond_7
    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 688
    :pswitch_9
    const/16 v1, 0x11

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "TBListView_Mail_4x4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeline.tiltanim"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeline.error_page"

    aput-object v2, v0, v1

    const-string v1, "textlabel.name"

    aput-object v1, v0, v3

    const-string v1, "textlabel.time"

    aput-object v1, v0, v4

    const-string v1, "textlabel.mail"

    aput-object v1, v0, v5

    const-string v1, "textlabel.title"

    aput-object v1, v0, v6

    const-string v1, "textlabel.body"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "dynamicimage.mail_photo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.empty"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.account"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "textlabel.common_notifiction99"

    aput-object v2, v0, v1

    .line 692
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 694
    :pswitch_a
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "textlabel.common_notifiction99"

    aput-object v2, v0, v1

    .line 697
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 699
    :pswitch_b
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "textlabel.common_notifiction99"

    aput-object v2, v0, v1

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 705
    :cond_8
    if-ne p1, v3, :cond_2

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq p0, v1, :cond_9

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_2

    .line 706
    :cond_9
    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    .line 708
    :pswitch_c
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "TBListView_Mail_4x4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeline.tiltanim"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeline.error_page"

    aput-object v2, v0, v1

    const-string v1, "textlabel.name"

    aput-object v1, v0, v3

    const-string v1, "textlabel.time"

    aput-object v1, v0, v4

    const-string v1, "textlabel.mail"

    aput-object v1, v0, v5

    const-string v1, "textlabel.title"

    aput-object v1, v0, v6

    const-string v1, "textlabel.body"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "dynamicimage.mail_photo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.empty"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.account"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .line 712
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 714
    :pswitch_d
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .line 717
    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 719
    :pswitch_e
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #fxControlIn:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.common_header_left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.common_header"

    aput-object v2, v0, v1

    const-string v1, "timeline.main_page"

    aput-object v1, v0, v3

    const-string v1, "timeline.mail_icon"

    aput-object v1, v0, v4

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v5

    const-string v1, "app.hitbox"

    aput-object v1, v0, v6

    const-string v1, "ListViewViewPort"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "button.common_left"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "button.common_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.common_notifiction"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timeline.common_notifiction"

    aput-object v2, v0, v1

    .restart local v0       #fxControlIn:[Ljava/lang/String;
    goto/16 :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 641
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 666
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 686
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 706
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getWidgetScenePath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;
    .locals 2
    .parameter "osVersion"
    .parameter "resolution"
    .parameter "orientation"
    .parameter "style"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, M10_PATH:Ljava/lang/String;
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_6

    .line 322
    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 323
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_1

    .line 324
    packed-switch p3, :pswitch_data_0

    .line 336
    :cond_1
    :goto_0
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 337
    packed-switch p3, :pswitch_data_1

    .line 480
    :cond_2
    :goto_1
    return-object v0

    .line 326
    :pswitch_0
    const-string v0, "Port/Mail_4x4_ListView.m10"

    .line 327
    goto :goto_0

    .line 329
    :pswitch_1
    const-string v0, "Port/MailSummary_4x4_ListView.m10"

    .line 330
    goto :goto_0

    .line 332
    :pswitch_2
    const-string v0, "Port/MailList_4x4_ListView.m10"

    goto :goto_0

    .line 339
    :pswitch_3
    const-string v0, "Land/Mail_4x4_ListView.m10"

    .line 340
    goto :goto_1

    .line 342
    :pswitch_4
    const-string v0, "Land/MailSummary_4x4_ListView.m10"

    .line 343
    goto :goto_1

    .line 345
    :pswitch_5
    const-string v0, "Land/MailList_4x4_ListView.m10"

    goto :goto_1

    .line 349
    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 350
    :cond_4
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_5

    .line 351
    packed-switch p3, :pswitch_data_2

    .line 375
    :cond_5
    :goto_2
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 376
    packed-switch p3, :pswitch_data_3

    goto :goto_1

    .line 378
    :pswitch_6
    const-string v0, "Land/Mail_3x5_ListView.m10"

    .line 379
    goto :goto_1

    .line 353
    :pswitch_7
    const-string v0, "Port/Mail_3x5_ListView.m10"

    .line 354
    goto :goto_2

    .line 356
    :pswitch_8
    const-string v0, "Port/MailSummary_3x3_ListView.m10"

    .line 357
    goto :goto_2

    .line 359
    :pswitch_9
    const-string v0, "Port/MailSummary_3x4_ListView.m10"

    .line 360
    goto :goto_2

    .line 362
    :pswitch_a
    const-string v0, "Port/MailSummary_3x5_ListView.m10"

    .line 363
    goto :goto_2

    .line 365
    :pswitch_b
    const-string v0, "Port/MailList_3x3_ListView.m10"

    .line 366
    goto :goto_2

    .line 368
    :pswitch_c
    const-string v0, "Port/MailList_3x4_ListView.m10"

    .line 369
    goto :goto_2

    .line 371
    :pswitch_d
    const-string v0, "Port/MailList_3x5_ListView.m10"

    goto :goto_2

    .line 381
    :pswitch_e
    const-string v0, "Land/MailSummary_3x3_ListView.m10"

    .line 382
    goto :goto_1

    .line 384
    :pswitch_f
    const-string v0, "Land/MailSummary_3x4_ListView.m10"

    .line 385
    goto :goto_1

    .line 387
    :pswitch_10
    const-string v0, "Land/MailSummary_3x5_ListView.m10"

    .line 388
    goto :goto_1

    .line 390
    :pswitch_11
    const-string v0, "Land/MailList_3x3_ListView.m10"

    .line 391
    goto :goto_1

    .line 393
    :pswitch_12
    const-string v0, "Land/MailList_3x4_ListView.m10"

    .line 394
    goto :goto_1

    .line 396
    :pswitch_13
    const-string v0, "Land/MailList_3x5_ListView.m10"

    goto :goto_1

    .line 401
    :cond_6
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_8

    .line 402
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_7

    .line 403
    packed-switch p3, :pswitch_data_4

    .line 415
    :cond_7
    :goto_3
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 416
    packed-switch p3, :pswitch_data_5

    goto :goto_1

    .line 418
    :pswitch_14
    const-string v0, "Land/Mail_4x4_ListView.m10"

    .line 419
    goto :goto_1

    .line 405
    :pswitch_15
    const-string v0, "Port/Mail_4x4_ListView.m10"

    .line 406
    goto :goto_3

    .line 408
    :pswitch_16
    const-string v0, "Port/MailSummary_4x4_ListView.m10"

    .line 409
    goto :goto_3

    .line 411
    :pswitch_17
    const-string v0, "Port/MailList_4x4_ListView.m10"

    goto :goto_3

    .line 421
    :pswitch_18
    const-string v0, "Land/MailSummary_4x4_ListView.m10"

    .line 422
    goto :goto_1

    .line 424
    :pswitch_19
    const-string v0, "Land/MailList_4x4_ListView.m10"

    goto :goto_1

    .line 429
    :cond_8
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_9

    .line 430
    packed-switch p3, :pswitch_data_6

    .line 454
    :cond_9
    :goto_4
    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v1, :cond_2

    .line 455
    packed-switch p3, :pswitch_data_7

    goto/16 :goto_1

    .line 457
    :pswitch_1a
    const-string v0, "Land/Mail_3x5_ListView.m10"

    .line 458
    goto/16 :goto_1

    .line 432
    :pswitch_1b
    const-string v0, "Port/Mail_3x5_ListView.m10"

    .line 433
    goto :goto_4

    .line 435
    :pswitch_1c
    const-string v0, "Port/MailSummary_3x3_ListView.m10"

    .line 436
    goto :goto_4

    .line 438
    :pswitch_1d
    const-string v0, "Port/MailSummary_3x4_ListView.m10"

    .line 439
    goto :goto_4

    .line 441
    :pswitch_1e
    const-string v0, "Port/MailSummary_3x5_ListView.m10"

    .line 442
    goto :goto_4

    .line 444
    :pswitch_1f
    const-string v0, "Port/MailList_3x3_ListView.m10"

    .line 445
    goto :goto_4

    .line 447
    :pswitch_20
    const-string v0, "Port/MailList_3x4_ListView.m10"

    .line 448
    goto :goto_4

    .line 450
    :pswitch_21
    const-string v0, "Port/MailList_3x5_ListView.m10"

    goto :goto_4

    .line 460
    :pswitch_22
    const-string v0, "Land/MailSummary_3x3_ListView.m10"

    .line 461
    goto/16 :goto_1

    .line 463
    :pswitch_23
    const-string v0, "Land/MailSummary_3x4_ListView.m10"

    .line 464
    goto/16 :goto_1

    .line 466
    :pswitch_24
    const-string v0, "Land/MailSummary_3x5_ListView.m10"

    .line 467
    goto/16 :goto_1

    .line 469
    :pswitch_25
    const-string v0, "Land/MailList_3x3_ListView.m10"

    .line 470
    goto/16 :goto_1

    .line 472
    :pswitch_26
    const-string v0, "Land/MailList_3x4_ListView.m10"

    .line 473
    goto/16 :goto_1

    .line 475
    :pswitch_27
    const-string v0, "Land/MailList_3x5_ListView.m10"

    goto/16 :goto_1

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 337
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 351
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 376
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 403
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 416
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_14
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 430
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 455
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method private static getWidgetStyle(Lcom/htc/htcmailwidgets/Components$OS_VERSION;IILcom/htc/htcmailwidgets/Components$WIDGET_STYLE;)I
    .locals 5
    .parameter "osVersion"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "style"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 939
    const/4 v0, -0x1

    .line 940
    .local v0, type:I
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_7

    .line 941
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_PAPER:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_1

    .line 942
    const/4 v0, 0x0

    .line 976
    :cond_0
    :goto_0
    return v0

    .line 943
    :cond_1
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_SUMMARY:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_4

    .line 944
    if-ne p1, v2, :cond_2

    if-ne p2, v2, :cond_2

    .line 945
    const/4 v0, 0x1

    .line 946
    :cond_2
    if-ne p1, v2, :cond_3

    if-ne p2, v3, :cond_3

    .line 947
    const/4 v0, 0x2

    .line 948
    :cond_3
    if-ne p1, v2, :cond_0

    if-ne p2, v4, :cond_0

    .line 949
    const/4 v0, 0x3

    goto :goto_0

    .line 950
    :cond_4
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_LIST:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_0

    .line 951
    if-ne p1, v2, :cond_5

    if-ne p2, v2, :cond_5

    .line 952
    const/4 v0, 0x4

    .line 953
    :cond_5
    if-ne p1, v2, :cond_6

    if-ne p2, v3, :cond_6

    .line 954
    const/4 v0, 0x5

    .line 955
    :cond_6
    if-ne p1, v2, :cond_0

    if-ne p2, v4, :cond_0

    .line 956
    const/4 v0, 0x6

    goto :goto_0

    .line 958
    :cond_7
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_a

    .line 959
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_PAPER:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_8

    .line 960
    const/4 v0, 0x0

    goto :goto_0

    .line 961
    :cond_8
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_SUMMARY:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_9

    .line 962
    const/4 v0, 0x1

    goto :goto_0

    .line 963
    :cond_9
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_LIST:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_0

    .line 964
    const/4 v0, 0x2

    goto :goto_0

    .line 966
    :cond_a
    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne p0, v1, :cond_0

    .line 967
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_PAPER:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_b

    .line 968
    const/4 v0, 0x0

    goto :goto_0

    .line 969
    :cond_b
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_SUMMARY:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_c

    .line 970
    const/4 v0, 0x1

    goto :goto_0

    .line 971
    :cond_c
    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_LIST:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    if-ne p3, v1, :cond_0

    .line 972
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getWidgetType(Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;
    .locals 2
    .parameter "type"

    .prologue
    .line 926
    sget-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_NONE:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 928
    .local v0, style:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;
    const-string v1, "paper"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    sget-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_PAPER:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 930
    :cond_0
    const-string v1, "summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    sget-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_SUMMARY:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 932
    :cond_1
    const-string v1, "list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    sget-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_LIST:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 935
    :cond_2
    return-object v0
.end method

.method public static parseScene(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$WidgetInfo;
    .locals 8
    .parameter "scene"
    .parameter "release_version"

    .prologue
    .line 992
    new-instance v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/Components$WidgetInfo;-><init>()V

    .line 994
    .local v3, w:Lcom/htc/htcmailwidgets/Components$WidgetInfo;
    if-nez p0, :cond_1

    .line 995
    invoke-static {p1}, Lcom/htc/htcmailwidgets/Components;->getOSVersion(Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    .line 1032
    :cond_0
    :goto_0
    return-object v3

    .line 999
    :cond_1
    const-string v4, "|"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1000
    .local v1, pos:I
    const/4 v0, 0x0

    .line 1001
    .local v0, index:I
    const/4 v2, 0x0

    .line 1003
    .local v2, text:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1005
    packed-switch v0, :pswitch_data_0

    .line 1022
    :cond_3
    :goto_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1023
    move-object p0, v2

    .line 1024
    add-int/lit8 v0, v0, 0x1

    .line 1026
    const-string v4, "|"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1027
    if-gtz v1, :cond_2

    .line 1029
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1030
    iget-object v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v5, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->spanX_:I

    iget v6, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->spanY_:I

    invoke-static {p0}, Lcom/htc/htcmailwidgets/Components;->getWidgetType(Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/htcmailwidgets/Components;->getWidgetStyle(Lcom/htc/htcmailwidgets/Components$OS_VERSION;IILcom/htc/htcmailwidgets/Components$WIDGET_STYLE;)I

    move-result v4

    iput v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    goto :goto_0

    .line 1007
    :pswitch_0
    const-string v4, "honeycomb"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1008
    sget-object v4, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    goto :goto_1

    .line 1009
    :cond_4
    const-string v4, "gingerbread"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1010
    sget-object v4, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    goto :goto_1

    .line 1011
    :cond_5
    const-string v4, "ics"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1012
    sget-object v4, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    goto :goto_1

    .line 1015
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->spanX_:I

    goto :goto_1

    .line 1018
    :pswitch_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->spanY_:I

    goto :goto_1

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
