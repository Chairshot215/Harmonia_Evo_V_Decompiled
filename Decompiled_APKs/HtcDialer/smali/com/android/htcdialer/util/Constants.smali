.class public Lcom/android/htcdialer/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT_NAME_MY_CONTACT:Ljava/lang/String; = "HTC"

.field public static final ACCOUNT_TYPE_MY_CONTACT:Ljava/lang/String; = "DeviceOnly"

.field public static final ACTION_DELET_CONTACT:Ljava/lang/String; = "com.android.htccontacts.ACTION_DELETE_CONTACT"

.field public static final ACTION_GROUP_MEMBER_CANDIDATE:Ljava/lang/String; = "com.android.htccontacts.ACTION_GROUP_CANDIDATE"

.field public static final ACTION_PICK_FAVORITE_CANDIDATE:Ljava/lang/String; = "com.android.htccontacts.ACTION_PICK_FAVORITE_CANDIDATE"

.field public static final ACTION_PICK_JOINT_MEMBERS:Ljava/lang/String; = "com.android.htccontacts.ACTION_PICK_JOINT_MEMBERS"

.field public static final ACTION_PICK_MULTIPLE:Ljava/lang/String; = "com.android.htccontacts.ACTION_PICK_MULTIPLE"

.field public static final ACTION_PICK_PHOTO_ITEM:Ljava/lang/String; = "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

.field public static final ACTION_SELECT_DEFAULT_ACTION:Ljava/lang/String; = "com.android.htccontacts.ACTION_SELECT_DEFAULT_ACTION"

.field public static final ACTION_VIEW_RECENT_CALLS:Ljava/lang/String; = "com.android.phone.action.RECENT_CALLS"

.field public static final COMPESS_QUALITY:I = 0x50

.field public static final CONTACT_PHOTO_HEIGHT:I = 0xc8

.field public static final CONTACT_PHOTO_WIDTH:I = 0xc8

.field public static final EXTRA_OUT_SELECTED_ID:Ljava/lang/String; = "SELECTED_ID"

.field public static final MAIL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MESSAGES_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MIME_SMS_ADDRESS:Ljava/lang/String; = "vnd.android.cursor.item/sms-address"

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto"

.field public static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SOURCE_ID_MY_CONTACT:Ljava/lang/String; = "HTC_01"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "content://mail/allmessages_with_account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/util/Constants;->MAIL_CONTENT_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "content://mms-sms/contact/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/util/Constants;->MESSAGES_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSocialNetworkEnabled()Z
    .locals 2

    .prologue
    .line 85
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
