.class public Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0xf

.field public static final ACCOUNT_TYPE:I = 0x10

.field public static final ACCOUNT_TYPE_AND_DATA_SET:I = 0x12

.field public static final ALT_DISPLAY_NAME:I = 0x4

.field public static final CHAT_CAPABILITY:I = 0x37

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0xd

.field public static final CONTACT_PRESENCE:I = 0x8

.field public static final CONTACT_STATUS:I = 0x9

.field public static final CONTACT_STATUS_LABEL:I = 0xc

.field public static final CONTACT_STATUS_RES_PACKAGE:I = 0xb

.field public static final CONTACT_STATUS_TIMESTAMP:I = 0xa

.field public static final CUSTOM_RINGTONE:I = 0x3f

.field public static final DATA1:I = 0x1d

.field public static final DATA10:I = 0x26

.field public static final DATA11:I = 0x27

.field public static final DATA12:I = 0x28

.field public static final DATA13:I = 0x29

.field public static final DATA14:I = 0x2a

.field public static final DATA15:I = 0x2b

.field public static final DATA2:I = 0x1e

.field public static final DATA3:I = 0x1f

.field public static final DATA4:I = 0x20

.field public static final DATA5:I = 0x21

.field public static final DATA6:I = 0x22

.field public static final DATA7:I = 0x23

.field public static final DATA8:I = 0x24

.field public static final DATA9:I = 0x25

.field public static final DATA_ID:I = 0x1c

.field public static final DATA_SET:I = 0x11

.field public static final DATA_SYNC1:I = 0x2c

.field public static final DATA_SYNC2:I = 0x2d

.field public static final DATA_SYNC3:I = 0x2e

.field public static final DATA_SYNC4:I = 0x2f

.field public static final DATA_VERSION:I = 0x30

.field public static final DELETED:I = 0x1a

.field public static final DIRTY:I = 0x13

.field public static final DISPLAY_NAME:I = 0x3

.field public static final DISPLAY_NAME_SOURCE:I = 0x1

.field public static final GROUP_SOURCE_ID:I = 0x35

.field public static final IS_PRIMARY:I = 0x31

.field public static final IS_SUPERPRIMARY:I = 0x32

.field public static final IS_USER_PROFILE:I = 0x40

.field public static final LOOKUP_KEY:I = 0x2

.field public static final MIMETYPE:I = 0x33

.field public static final NAME_RAW_CONTACT_ID:I = 0x0

.field public static final NAME_VERIFIED:I = 0x1b

.field public static final PHONETIC_NAME:I = 0x5

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x3d

.field public static final PRESENCE:I = 0x36

.field public static final RAW_CONTACT_ID:I = 0xe

.field public static final RES_PACKAGE:I = 0x34

.field public static final SEND_TO_VOICEMAIL:I = 0x3e

.field public static final SOURCE_ID:I = 0x15

.field public static final STARRED:I = 0x7

.field public static final STATUS:I = 0x38

.field public static final STATUS_ICON:I = 0x3a

.field public static final STATUS_LABEL:I = 0x3b

.field public static final STATUS_RES_PACKAGE:I = 0x39

.field public static final STATUS_TIMESTAMP:I = 0x3c

.field public static final SYNC1:I = 0x16

.field public static final SYNC2:I = 0x17

.field public static final SYNC3:I = 0x18

.field public static final SYNC4:I = 0x19

.field public static final VERSION:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5475
    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name_raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name_source"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_status_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_status_label"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "account_type_and_data_set"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sync4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "res_package"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "group_sourceid"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "status_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "status_label"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "status_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5474
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
