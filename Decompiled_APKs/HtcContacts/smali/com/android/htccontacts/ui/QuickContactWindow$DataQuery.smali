.class interface abstract Lcom/android/htccontacts/ui/QuickContactWindow$DataQuery;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DataQuery"
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final CONTACT_PRESENCE:I = 0x4

.field public static final DISPLAY_NAME:I = 0x3

.field public static final IS_PRIMARY:I = 0xd

.field public static final IS_SUPER_PRIMARY:I = 0xe

.field public static final MIMETYPE:I = 0xc

.field public static final PRESENCE:I = 0xa

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final RES_PACKAGE:I = 0xb

.field public static final STARRED:I = 0x2

.field public static final STATUS:I = 0x5

.field public static final STATUS_ICON:I = 0x7

.field public static final STATUS_LABEL:I = 0x8

.field public static final STATUS_RES_PACKAGE:I = 0x6

.field public static final STATUS_TIMESTAMP:I = 0x9

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2228
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status_res_package"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status_label"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
