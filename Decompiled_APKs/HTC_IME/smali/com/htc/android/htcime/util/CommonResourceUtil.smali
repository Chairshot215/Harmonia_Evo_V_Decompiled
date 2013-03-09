.class public Lcom/htc/android/htcime/util/CommonResourceUtil;
.super Ljava/lang/Object;
.source "CommonResourceUtil.java"


# static fields
.field public static final drawable_btn_keyboard_key_trans_normal:I = 0x4

.field public static final drawable_btn_keyboard_key_trans_pressed:I = 0x6

.field public static final drawable_btn_keyboard_key_trans_selected:I = 0x5

.field public static final drawable_common_app_mail_body_inputfield:I = 0x1

.field public static final drawable_common_app_mail_body_inputfield_selected:I = 0x2

.field public static final drawable_common_delete:I = 0x9

.field public static final drawable_common_icon_add:I = 0x8

.field public static final drawable_edit_text:I = 0x3

.field public static final drawable_list_divider:I = 0x7

.field public static final style_Htc_InputMethod:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonControlResource(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 67
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 37
    :pswitch_0
    const v0, 0x2080014

    goto :goto_0

    .line 40
    :pswitch_1
    const v0, 0x208002b

    goto :goto_0

    .line 43
    :pswitch_2
    const v0, 0x20805bf

    goto :goto_0

    .line 46
    :pswitch_3
    const v0, 0x20800ed

    goto :goto_0

    .line 49
    :pswitch_4
    const v0, 0x20800ef

    goto :goto_0

    .line 52
    :pswitch_5
    const v0, 0x20800ee

    goto :goto_0

    .line 55
    :pswitch_6
    const v0, 0x2080156

    goto :goto_0

    .line 58
    :pswitch_7
    const v0, 0x2080158

    goto :goto_0

    .line 61
    :pswitch_8
    const v0, 0x208008c

    goto :goto_0

    .line 64
    :pswitch_9
    const v0, 0x203008d

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
