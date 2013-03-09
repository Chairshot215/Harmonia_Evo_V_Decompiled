.class public Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
.super Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewEntry"
.end annotation


# static fields
.field public static final EXISTED:I = 0x1

.field public static final KIND_ACCOUNT_TYPE_AND_NAME:I = 0xc

.field public static final KIND_COMPANY:I = 0x7

.field public static final KIND_EMAIL:I = 0xe

.field public static final KIND_EVENT:I = 0x2

.field public static final KIND_FIND_ADDRESS:I = 0x3

.field public static final KIND_GROUP:I = 0x5

.field public static final KIND_IM:I = 0x4

.field public static final KIND_NAME:I = 0xb

.field public static final KIND_NOTES:I = 0x6

.field public static final KIND_ORGANIZATION:I = 0x8

.field public static final KIND_PHONE:I = 0xd

.field public static final KIND_PHOTO:I = 0xa

.field public static final KIND_POSTAL:I = 0xf

.field public static final KIND_WEBSITE:I = 0x9

.field public static final NON_EXISTED:I = -0x1

.field static final VIEW_TYPE_ACCOUNT_TYPE_AND_NAME:I = 0x3

.field static final VIEW_TYPE_COMMUNICATION:I = 0x1

.field static final VIEW_TYPE_INFORMATION:I = 0x2

.field static final VIEW_TYPE_PHOTO:I = 0x4


# instance fields
.field public data:Ljava/lang/Object;

.field public enabled:Z

.field public entryIndex:I

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

    .line 773
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 797
    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    .line 798
    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    .line 799
    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text3:Ljava/lang/String;

    .line 800
    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text4:Ljava/lang/String;

    .line 801
    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->leftIndicatorText:Ljava/lang/String;

    .line 802
    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->uri:Landroid/net/Uri;

    .line 803
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    .line 804
    iput v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    .line 805
    iput v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->leftIconId:I

    .line 806
    iput v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->indicatorId:I

    .line 807
    iput v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->rightIconId:I

    .line 809
    iput-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->enabled:Z

    .line 810
    iput v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->type:I

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isPrimary:Z

    .line 815
    iput-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    return-void
.end method
