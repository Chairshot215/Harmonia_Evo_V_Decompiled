.class public Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
.super Ljava/lang/Object;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcSendContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewEntry"
.end annotation


# static fields
.field public static final EXISTED:I = 0x1

.field public static final KIND_COMPANY:I = 0x7

.field public static final KIND_EVENT:I = 0x2

.field public static final KIND_FIND_ADDRESS:I = 0x3

.field public static final KIND_GROUP:I = 0x5

.field public static final KIND_IM:I = 0x4

.field public static final KIND_NAME:I = 0xb

.field public static final KIND_NOTES:I = 0x6

.field public static final KIND_ORGANIZATION:I = 0x8

.field public static final KIND_PHOTO:I = 0xa

.field public static final KIND_SEND_VIA:I = 0xc

.field public static final KIND_WEBSITE:I = 0x9

.field public static final NON_EXISTED:I = -0x1

.field static final VIEW_TYPE_COMMUNICATION:I = 0x1

.field static final VIEW_TYPE_INFORMATION:I = 0x2

.field static final VIEW_TYPE_PHOTO:I = 0x4

.field static final VIEW_TYPE_SEND_VIA:I = 0x3


# instance fields
.field public data:Ljava/lang/Object;

.field public enabled:Z

.field public id:J

.field public indicatorId:I

.field intent:Landroid/content/Intent;

.field public isChecked:Z

.field public isPrimary:Z

.field public kind:I

.field public leftIconId:I

.field public leftIndicatorText:Ljava/lang/String;

.field public mimetype:Ljava/lang/String;

.field public rightIconId:I

.field public text1:Ljava/lang/String;

.field public text2:Ljava/lang/String;

.field public text3:Ljava/lang/String;

.field public text4:Ljava/lang/String;

.field public type:I

.field public uri:Landroid/net/Uri;

.field view:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1076
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1097
    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1098
    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text3:Ljava/lang/String;

    .line 1099
    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text4:Ljava/lang/String;

    .line 1100
    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->leftIndicatorText:Ljava/lang/String;

    .line 1101
    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1103
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1104
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->leftIconId:I

    .line 1105
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->indicatorId:I

    .line 1106
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->rightIconId:I

    .line 1108
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->enabled:Z

    .line 1109
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->type:I

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isPrimary:Z

    .line 1114
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    return-void
.end method
