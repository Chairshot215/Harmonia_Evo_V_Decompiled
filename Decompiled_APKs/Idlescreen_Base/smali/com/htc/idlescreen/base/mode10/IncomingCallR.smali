.class public Lcom/htc/idlescreen/base/mode10/IncomingCallR;
.super Ljava/lang/Object;
.source "IncomingCallR.java"


# static fields
.field public static final CALL_M10:Ljava/lang/String; = "Port/base/Lockscreen_incomingcall.m10"

.field public static final CALL_M10_LAND:Ljava/lang/String; = "Land/base/Lockscreen_incomingcall.m10"

.field public static final CALL_MARK_NORMAL0:Ljava/lang/String; = "normal_0"

.field public static final CALL_MARK_NORMAL1:Ljava/lang/String; = "normal_1"

.field public static final CALL_MARK_SOCIAL0:Ljava/lang/String; = "social_0"

.field public static final CALL_MARK_SOCIAL1:Ljava/lang/String; = "social_1"

.field public static final CALL_RES_DRAG_ANSWER:[Ljava/lang/String; = null

.field public static final CALL_RES_DRAG_DECLINE:[Ljava/lang/String; = null

.field public static final CALL_RES_PHOTO:Ljava/lang/String; = "dynamicimage.incomingcallphoto"

.field public static final CALL_RES_TEXT_BIRTHDAY:Ljava/lang/String; = "textlabel.incomingcall_birthday"

.field public static final CALL_RES_TEXT_LOCATION:Ljava/lang/String; = "textlabel.incomingcall_city"

.field public static final CALL_RES_TEXT_NAME:Ljava/lang/String; = "textlabel.incomingcall_name"

.field public static final CALL_RES_TEXT_NUMBER:Ljava/lang/String; = "textlabel.incomingcall_number"

.field public static final CALL_RES_TEXT_SOCIAL:Ljava/lang/String; = "textlabel.incomingcall_social"

.field public static final CALL_RES_TEXT_TITLE:Ljava/lang/String; = "textlabel.incomingcall"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "decline"

    aput-object v1, v0, v3

    const-string v1, "t.btn_dismiss_positionY"

    aput-object v1, v0, v4

    const-string v1, "t.btn_dismiss_positionX"

    aput-object v1, v0, v5

    const-string v1, "t.btn_dismiss_Scale"

    aput-object v1, v0, v6

    const-string v1, "btn_dismiss_Opacity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hitbox.btn_dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.comp_btn_decline"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unlock_indicate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unlock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textcomp.incomingcall_decline"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.incomingcall_decline"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/idlescreen/base/mode10/IncomingCallR;->CALL_RES_DRAG_DECLINE:[Ljava/lang/String;

    .line 20
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "answer"

    aput-object v1, v0, v3

    const-string v1, "t.btn_answer_positionY"

    aput-object v1, v0, v4

    const-string v1, "t.btn_answer_positionX"

    aput-object v1, v0, v5

    const-string v1, "t.btn_answer_scale"

    aput-object v1, v0, v6

    const-string v1, "t.btn_answer_opacity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hitbox.btn_snooze"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.comp_btn_answer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unlock_indicate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unlock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textcomp.incomingcall_answer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.incomingcall_answer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/idlescreen/base/mode10/IncomingCallR;->CALL_RES_DRAG_ANSWER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
