.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$queryCmasSupportStatusAsync;,
        Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;,
        Lcom/android/mms/ui/MessageUtils$SkinUtil;,
        Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_ITEM:Ljava/lang/String; = "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

.field public static ATTACHMENT_COUNT:I = 0x0

.field public static ATTACHMENT_PREFIX:Ljava/lang/String; = null

.field private static final AVAILABLE_THREAD_ID_CONTENT_URI:Landroid/net/Uri; = null

.field private static final AVAILABLE_THREAD_ID_CONTENT_URI_V2:Landroid/net/Uri; = null

.field public static final CMAS_TYPE_EARTHQUAKE_ALERT:I = 0x64

.field public static final CONTACT_THUMBNAIL_SIZE:I = 0x32

.field private static final CREATE_THUMBNAIL_FILE:Ljava/lang/String; = "Create message thumbnail cache file: "

.field private static final DEBUG:Z = true

.field private static final FALSESTR:Ljava/lang/String; = "falseStr"

.field public static final GCF_MMS_OK:I = 0x0

.field public static final GCF_MMS_OVERSIZE:I = 0x1

.field public static final GCF_MMS_UNSUPPORTED_TYPE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final HAS_REMOVABLE_STORAGE_SLOT:Z = false

.field private static final HEX_DIGITS:[C = null

.field public static final HTC_DEBUG:Z = false

.field private static final ID:Ljava/lang/String; = "_id"

.field private static ILLEGAL_CHARACTERS:[Ljava/lang/CharSequence; = null

.field public static final INTENT_KEY_HTCTHREAD_ID:Ljava/lang/String; = "htcThread_id"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final KEYVALUE:Ljava/lang/String; = "keyvalue"

.field private static final KEY_CMAS:Ljava/lang/String; = "CMASsupport"

.field private static final KEY_INTERNATIONAL:Ljava/lang/String; = "international"

.field private static final KEY_IS_OUTCALL:Ljava/lang/String; = "mo"

.field private static final LOAD_THUMBNAIL:Ljava/lang/String; = "loadThumbnailBitmap: "

.field public static final LOCAL_LOGV:Z = true

.field private static final LOCATION_AUTHORITY:Ljava/lang/String; = "com.htc.china.calllocation"

.field private static final LOCATION_URI:Landroid/net/Uri; = null

.field public static final MAX_CC_DISPLAY_NUM:I = 0x2

.field private static final MESSAGE_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_MESSAGE_COUNT_SELECTION:Ljava/lang/String; = "htc_category=0 AND msg_box!=3 AND (m_type=132 OR m_type=130 OR m_type=128)"

.field private static final MSGGENERAL_PROJECTION:[Ljava/lang/String; = null

.field private static final MSG_PROVIDER_URI:Landroid/net/Uri; = null

.field public static final READ_THREAD:I = 0x1

.field public static final SHOW_ME_SUBJECT:Ljava/lang/String; = "messages"

.field private static final SMS_MESSAGE_COUNT_SELECTION:Ljava/lang/String; = "type!=3 AND htc_category=0"

.field private static final TAG:Ljava/lang/String; = "MessageUtils"

.field private static final TAG_ULOG:Ljava/lang/String; = "ULog"

.field private static final THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final THUMBNAIL_FILE_EXIST:Ljava/lang/String; = "Message thumbnail cache file exist: "

.field public static final TOAST_DOWNLOAD_LATER:I = 0x2

.field public static final TOAST_MSG_QUEUED:I = 0x1

.field public static final TOAST_NONE:I = -0x1

.field private static final TRUESTR:Ljava/lang/String; = "trueStr"

.field private static final UX_LOG_COLLECTION_TIME:Ljava/lang/String; = "pref_key_ux_log_collection_time"

.field public static final VCARD_BEGIN_TAG:Ljava/lang/String; = "BEGIN:VCARD"

.field public static final VCARD_END_TAG:Ljava/lang/String; = "END:VCARD"

.field private static mDisplayHeight:Ljava/lang/Integer;

.field private static mDisplayWidth:Ljava/lang/Integer;

.field private static mSendMsgCountTime:J

.field public static mUserPresent:Z

.field private static mWorkingQueryHandler:Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;

.field private static mbSupportCMAS:Z

.field private static final sCoreContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocalNumber:Ljava/lang/String;

.field static s_nOneDayMillis:I

.field private static sbSIESupportCmasSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 299
    sput v2, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    .line 300
    const-string v0, "Attachment_"

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_PREFIX:Ljava/lang/String;

    .line 307
    sput-boolean v3, Lcom/android/mms/ui/MessageUtils;->mUserPresent:Z

    .line 311
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/ui/MessageUtils;->mSendMsgCountTime:J

    .line 313
    new-instance v0, Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mWorkingQueryHandler:Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;

    .line 315
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "COUNT(_id)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 322
    const-string v0, "content://htcmsggeneral/general"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->MSG_PROVIDER_URI:Landroid/net/Uri;

    .line 326
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "keyvalue"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->MSGGENERAL_PROJECTION:[Ljava/lang/String;

    .line 330
    sput-boolean v2, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    .line 332
    sput-boolean v2, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    .line 335
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils;->HAS_REMOVABLE_STORAGE_SLOT:Z

    .line 351
    const-string v0, "content://mms-sms-v2/available-threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->AVAILABLE_THREAD_ID_CONTENT_URI_V2:Landroid/net/Uri;

    .line 353
    const-string v0, "content://mms-sms/available-threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->AVAILABLE_THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 2802
    const v0, 0x5265c00

    sput v0, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    .line 4106
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, " "

    aput-object v1, v0, v2

    const-string v1, "\""

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, "["

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\\"

    aput-object v2, v0, v1

    const-string v1, ".."

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->ILLEGAL_CHARACTERS:[Ljava/lang/CharSequence;

    .line 4204
    new-array v0, v6, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->HEX_DIGITS:[C

    .line 5653
    const-string v0, "content://com.htc.china.calllocation/calllocation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->LOCATION_URI:Landroid/net/Uri;

    .line 5985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    .line 5987
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5988
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "text/x-vCalendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5989
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "text/x-vCard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5990
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "text/x-vcalendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5991
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5992
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5993
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5994
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5995
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5996
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5997
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/AMR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5998
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5999
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/midi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6000
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/MID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6001
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/MIDI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6002
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "video/h263"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6003
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6004
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "application/smil"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6005
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6006
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6007
    return-void

    .line 4204
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    return-void
.end method

.method public static MyTaskCollectIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;
    .locals 18
    .parameter "context"
    .parameter "thread_id"
    .parameter "Msg_id"
    .parameter "msgtype"
    .parameter "snippet"
    .parameter "Date"
    .parameter "Category"

    .prologue
    .line 5553
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.htc.task.ACTION_CREATE_TASK"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5556
    .local v10, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0903bd

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5558
    .local v15, title:Ljava/lang/String;
    const-string v8, "com.android.mms"

    .line 5560
    .local v8, importer:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090010

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5561
    .local v3, added_fieldName:Ljava/lang/String;
    move-object/from16 v2, p6

    .line 5563
    .local v2, added_content:Ljava/lang/String;
    const-string v11, "android.intent.action.VIEW"

    .line 5564
    .local v11, intentAction:Ljava/lang/String;
    const/4 v5, 0x0

    .line 5565
    .local v5, builder:Landroid/net/Uri$Builder;
    const-string v16, "sms"

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 5567
    invoke-static/range {p6 .. p6}, Lcom/android/mms/ui/MessageUtils;->hasSmsVcardBody(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 5568
    const/4 v14, 0x0

    .line 5569
    .local v14, struct:Lcom/android/vcard/VCardEntry;
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v9

    .line 5570
    .local v9, ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    if-eqz v9, :cond_0

    .line 5571
    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getSMSVCardEntry(J)Lcom/android/vcard/VCardEntry;

    move-result-object v14

    .line 5572
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5573
    .local v13, strbuilder:Ljava/lang/StringBuilder;
    invoke-static {v14, v13}, Lcom/android/mms/ui/MessageUtils;->parseVcardInfo(Lcom/android/vcard/VCardEntry;Ljava/lang/StringBuilder;)V

    .line 5574
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5577
    .end local v9           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    .end local v13           #strbuilder:Ljava/lang/StringBuilder;
    .end local v14           #struct:Lcom/android/vcard/VCardEntry;
    :cond_0
    sget-object v16, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 5585
    :goto_0
    const-string v16, "inbox"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5586
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5587
    const-string v16, "MyTaskUri"

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5588
    const-string v16, "MyTaskDate"

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5589
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 5590
    const-string v16, "category"

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5592
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 5594
    .local v12, intentData:Landroid/net/Uri;
    const-string v16, "com.htc.task.TASK_TITLE"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5595
    const-string v16, "com.htc.task.IMPORTER"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5598
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 5599
    .local v6, data:Landroid/os/Bundle;
    const-string v16, "com.htc.task.ADDED_TITLE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5600
    const-string v16, "com.htc.task.ADDED_BODY"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    const-string v16, "com.htc.task.ADDED_PINTENT_ACTION"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5602
    const-string v16, "com.htc.task.ADDED_PINTENT_DATA"

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5605
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5606
    .local v4, allData:Landroid/os/Bundle;
    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5607
    const-string v16, "com.htc.task.ADDED_FIELDS_BUNDLE"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5613
    .end local v2           #added_content:Ljava/lang/String;
    .end local v3           #added_fieldName:Ljava/lang/String;
    .end local v4           #allData:Landroid/os/Bundle;
    .end local v5           #builder:Landroid/net/Uri$Builder;
    .end local v6           #data:Landroid/os/Bundle;
    .end local v8           #importer:Ljava/lang/String;
    .end local v11           #intentAction:Ljava/lang/String;
    .end local v12           #intentData:Landroid/net/Uri;
    .end local v15           #title:Ljava/lang/String;
    :goto_1
    return-object v10

    .line 5581
    .restart local v2       #added_content:Ljava/lang/String;
    .restart local v3       #added_fieldName:Ljava/lang/String;
    .restart local v5       #builder:Landroid/net/Uri$Builder;
    .restart local v8       #importer:Ljava/lang/String;
    .restart local v11       #intentAction:Ljava/lang/String;
    .restart local v15       #title:Ljava/lang/String;
    :cond_2
    const-wide/16 v16, 0x3e8

    div-long p7, p7, v16

    .line 5582
    sget-object v16, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 5610
    .end local v2           #added_content:Ljava/lang/String;
    .end local v3           #added_fieldName:Ljava/lang/String;
    .end local v5           #builder:Landroid/net/Uri$Builder;
    .end local v8           #importer:Ljava/lang/String;
    .end local v11           #intentAction:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 5611
    .local v7, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 266
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;[BLandroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 266
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->importVcardWithoutCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->MSG_PROVIDER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->MSGGENERAL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 266
    sput-boolean p0, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    return p0
.end method

.method public static addCMASCursor(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/app/Activity;Lcom/android/mms/ui/ConversationListBaseAdapter;)Ljava/util/ArrayList;
    .locals 19
    .parameter "cmas_c"
    .parameter "current_c"
    .parameter "activity"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Landroid/app/Activity;",
            "Lcom/android/mms/ui/ConversationListBaseAdapter;",
            ")",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4519
    const/4 v11, -0x1

    .line 4520
    .local v11, id_pos:I
    const/4 v13, -0x1

    .line 4521
    .local v13, recipient_addr_pos:I
    const/4 v4, -0x1

    .line 4522
    .local v4, cmas_body_pos:I
    const/16 v16, -0x1

    .line 4523
    .local v16, snippet_pos:I
    const/4 v9, -0x1

    .line 4524
    .local v9, date_pos:I
    const/4 v6, -0x1

    .line 4525
    .local v6, cmas_date_pos:I
    const/4 v3, -0x1

    .line 4526
    .local v3, cmas_addres_pos:I
    const/4 v12, -0x1

    .line 4527
    .local v12, latest_date_pos:I
    const/4 v8, -0x1

    .line 4529
    .local v8, ctype_pos:I
    if-eqz p1, :cond_19

    .line 4530
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    .line 4531
    .local v7, columns:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 4532
    aget-object v17, v7, v10

    const-string v18, "snippet"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4533
    move/from16 v16, v10

    .line 4531
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4534
    :cond_1
    aget-object v17, v7, v10

    const-string v18, "date"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4535
    move v9, v10

    goto :goto_1

    .line 4536
    :cond_2
    aget-object v17, v7, v10

    const-string v18, "latest_date"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 4537
    move v12, v10

    goto :goto_1

    .line 4538
    :cond_3
    aget-object v17, v7, v10

    const-string v18, "recipient_address"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 4539
    move v13, v10

    goto :goto_1

    .line 4541
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4542
    .local v2, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_b

    .line 4543
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4545
    :cond_5
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Object;

    .line 4547
    .local v15, row:[Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->isResumed()Z

    move-result v17

    if-nez v17, :cond_7

    .line 4549
    const-string v17, "MessageUtils"

    const-string v18, "addCMASCursor() inturrupted"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 4551
    const/4 v2, 0x0

    .line 4623
    .end local v2           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v7           #columns:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #row:[Ljava/lang/Object;
    :cond_6
    :goto_2
    return-object v2

    .line 4556
    .restart local v2       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .restart local v7       #columns:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v15       #row:[Ljava/lang/Object;
    :cond_7
    const/4 v10, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_a

    .line 4558
    if-eq v10, v9, :cond_8

    if-ne v10, v12, :cond_9

    .line 4560
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v10

    .line 4556
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 4564
    :cond_9
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v10

    goto :goto_4

    .line 4568
    :cond_a
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4569
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_5

    .line 4572
    .end local v15           #row:[Ljava/lang/Object;
    :cond_b
    if-eqz p0, :cond_6

    .line 4573
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Object;

    .line 4575
    .restart local v15       #row:[Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    .line 4576
    .local v5, cmas_columns:[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_11

    .line 4577
    aget-object v17, v5, v10

    const-string v18, "_id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 4578
    move v11, v10

    .line 4576
    :cond_c
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 4579
    :cond_d
    aget-object v17, v5, v10

    const-string v18, "body"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 4580
    move v4, v10

    goto :goto_6

    .line 4581
    :cond_e
    aget-object v17, v5, v10

    const-string v18, "date"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 4582
    move v6, v10

    goto :goto_6

    .line 4583
    :cond_f
    aget-object v17, v5, v10

    const-string v18, "address"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 4584
    move v3, v10

    goto :goto_6

    .line 4585
    :cond_10
    aget-object v17, v5, v10

    const-string v18, "c_type"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 4586
    move v8, v10

    goto :goto_6

    .line 4588
    :cond_11
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_6

    .line 4590
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4591
    const/4 v10, 0x0

    :goto_7
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_18

    .line 4593
    if-ne v10, v4, :cond_13

    .line 4595
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v14

    .line 4596
    .local v14, resId:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 4597
    const-string v17, "0"

    aput-object v17, v15, v4

    .line 4591
    .end local v14           #resId:I
    :cond_12
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 4599
    :cond_13
    if-eq v10, v11, :cond_14

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_15

    .line 4600
    :cond_14
    const/16 v17, -0x3e8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v10

    goto :goto_8

    .line 4601
    :cond_15
    if-ne v10, v3, :cond_16

    .line 4603
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09030d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v13

    .line 4604
    const-string v17, "0"

    aput-object v17, v15, v3

    goto :goto_8

    .line 4606
    :cond_16
    if-ne v10, v6, :cond_17

    .line 4608
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v9

    .line 4609
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v12

    goto :goto_8

    .line 4611
    :cond_17
    if-eq v10, v9, :cond_12

    move/from16 v0, v16

    if-eq v10, v0, :cond_12

    if-eq v10, v12, :cond_12

    .line 4613
    const-string v17, "0"

    aput-object v17, v15, v10

    goto :goto_8

    .line 4617
    :cond_18
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4623
    .end local v2           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v5           #cmas_columns:[Ljava/lang/String;
    .end local v7           #columns:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #row:[Ljava/lang/Object;
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public static addQueryLimit(I)I
    .locals 1
    .parameter "limit"

    .prologue
    .line 5245
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 5246
    add-int/lit16 p0, p0, 0x1f4

    .line 5248
    :cond_0
    return p0
.end method

.method private static appendDetailMsgTimestamp(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "details"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 5947
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 5948
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5949
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5951
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5952
    const-string v0, "MMMdd, yy hh:mm aa"

    invoke-static {v0, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5958
    :cond_0
    :goto_0
    return-void

    .line 5955
    :cond_1
    invoke-static {p0, p3, p4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringFullEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static broadcastCMASSupportStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "bSupportstr"

    .prologue
    const/4 v2, 0x1

    .line 5812
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.action.CMAS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5814
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put extra liststr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5815
    const-string v1, "cmas_support"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5816
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5819
    const-string v1, "trueStr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    .line 5820
    sput-boolean v2, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    .line 5822
    return-void

    .line 5819
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkDirAvailable(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 3203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3204
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3205
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3207
    :cond_0
    return-void
.end method

.method public static checkFileExist(Ljava/io/File;)I
    .locals 4
    .parameter "file"

    .prologue
    .line 2249
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2250
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has existed already!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    const/4 v1, 0x0

    .line 2257
    :goto_0
    return v1

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2255
    const/4 v1, 0x1

    goto :goto_0

    .line 2257
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static clearTempParts(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/9223372036854775807/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1534
    return-void
.end method

.method public static final cloneCursorByPosition(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "sCursor"

    .prologue
    .line 4784
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 4785
    .local v0, pos:I
    invoke-static {p0, v0, v0}, Lcom/android/mms/ui/MessageUtils;->cloneCursorByPosition(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static final cloneCursorByPosition(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 13
    .parameter "sCursor"
    .parameter "from"
    .parameter "end"

    .prologue
    const/4 v6, 0x0

    .line 4747
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 4780
    :cond_0
    :goto_0
    return-object v6

    .line 4750
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 4752
    .local v7, time:J
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 4754
    .local v4, pos:I
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 4755
    .local v0, MaxCount:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_0

    .line 4759
    if-lt p2, v0, :cond_2

    .line 4760
    add-int/lit8 p2, v0, -0x1

    .line 4763
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 4764
    .local v1, columns:[Ljava/lang/String;
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-direct {v6, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 4766
    .local v6, tCursor:Landroid/database/MatrixCursor;
    array-length v9, v1

    new-array v5, v9, [Ljava/lang/Object;

    .line 4769
    .local v5, row:[Ljava/lang/Object;
    move v3, p1

    .local v3, index:I
    :goto_1
    if-gt v3, p2, :cond_4

    .line 4770
    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4771
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v9, v1

    if-ge v2, v9, :cond_3

    .line 4772
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    .line 4771
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4773
    :cond_3
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 4769
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4777
    .end local v2           #i:I
    :cond_4
    const-string v9, "MessageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate cursor time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public static cloneThreadListCursor(Landroid/database/Cursor;Lcom/android/mms/ui/ConversationListBaseActivity;Lcom/android/mms/ui/ConversationListBaseAdapter;)Ljava/util/ArrayList;
    .locals 24
    .parameter "cursor"
    .parameter "activity"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/mms/ui/ConversationListBaseActivity;",
            "Lcom/android/mms/ui/ConversationListBaseAdapter;",
            ")",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4630
    const/4 v10, 0x0

    .line 4631
    .local v10, mc:Landroid/database/MatrixCursor;
    const/16 v19, -0x1

    .line 4632
    .local v19, thread_id_pos:I
    const/4 v12, -0x1

    .line 4633
    .local v12, recipient_addr_pos:I
    const/16 v16, -0x1

    .line 4634
    .local v16, snippet_pos:I
    const/4 v15, -0x1

    .line 4635
    .local v15, snippet_charset_pos:I
    const/4 v4, -0x1

    .line 4637
    .local v4, date_pos:I
    if-eqz p0, :cond_11

    .line 4638
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 4639
    .local v3, columns:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    .line 4640
    aget-object v20, v3, v7

    const-string v21, "_id"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4641
    move/from16 v19, v7

    .line 4639
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4642
    :cond_1
    aget-object v20, v3, v7

    const-string v21, "recipient_address"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 4643
    move v12, v7

    goto :goto_1

    .line 4644
    :cond_2
    aget-object v20, v3, v7

    const-string v21, "snippet"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 4645
    move/from16 v16, v7

    goto :goto_1

    .line 4646
    :cond_3
    aget-object v20, v3, v7

    const-string v21, "snippet_cs"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 4647
    move v15, v7

    goto :goto_1

    .line 4648
    :cond_4
    aget-object v20, v3, v7

    const-string v21, "date"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 4649
    move v4, v7

    goto :goto_1

    .line 4652
    :cond_5
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-lez v20, :cond_11

    .line 4653
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4654
    .local v2, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 4655
    .local v11, pos:I
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4657
    :cond_6
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/Object;

    .line 4659
    .local v13, row:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->isResumed()Z

    move-result v20

    if-nez v20, :cond_7

    .line 4661
    const-string v20, "MessageUtils"

    const-string v21, "cloneThreadListCursor() inturrupted"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 4663
    const/4 v2, 0x0

    .line 4729
    .end local v2           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v3           #columns:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v11           #pos:I
    .end local v13           #row:[Ljava/lang/Object;
    :goto_2
    return-object v2

    .line 4667
    .restart local v2       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v11       #pos:I
    .restart local v13       #row:[Ljava/lang/Object;
    :cond_7
    const-wide/16 v8, 0x0

    .line 4668
    .local v8, latestUnreadDate:J
    const/4 v7, 0x0

    :goto_3
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_9

    .line 4670
    if-ne v7, v4, :cond_8

    .line 4672
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v13, v7

    .line 4673
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4668
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4677
    :cond_8
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v13, v7

    goto :goto_4

    .line 4682
    :cond_9
    const/4 v14, 0x0

    .line 4683
    .local v14, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    if-lez v12, :cond_a

    .line 4686
    aget-object v20, v13, v19

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 4687
    .local v18, threadID:Ljava/lang/Long;
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/android/mms/util/DraftCache;->getSnippet(J)Lcom/android/mms/util/DraftCache$DraftSnippet;

    move-result-object v14

    .line 4691
    .end local v18           #threadID:Ljava/lang/Long;
    :cond_a
    const-wide/16 v5, 0x0

    .line 4692
    .local v5, draftTime:J
    if-eqz v14, :cond_b

    .line 4693
    const-string v20, "mms"

    iget-object v0, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 4694
    iget-wide v0, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v5, v20, v22

    .line 4700
    :cond_b
    :goto_5
    if-eqz v14, :cond_e

    cmp-long v20, v8, v5

    if-gez v20, :cond_e

    .line 4702
    iget-object v0, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 4703
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0902d4

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 4704
    .local v17, subject:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4705
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4706
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4707
    if-lez v15, :cond_c

    .line 4708
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v13, v15

    .line 4709
    :cond_c
    if-lez v16, :cond_d

    .line 4710
    aput-object v17, v13, v16

    .line 4711
    :cond_d
    if-lez v4, :cond_e

    .line 4712
    const-string v20, "mms"

    iget-object v0, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 4715
    iget-wide v0, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v13, v4

    .line 4723
    .end local v17           #subject:Ljava/lang/String;
    :cond_e
    :goto_6
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4724
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_6

    goto/16 :goto_2

    .line 4696
    :cond_f
    iget-wide v5, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    goto/16 :goto_5

    .line 4718
    .restart local v17       #subject:Ljava/lang/String;
    :cond_10
    iget-wide v0, v14, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v13, v4

    goto :goto_6

    .line 4729
    .end local v2           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v3           #columns:[Ljava/lang/String;
    .end local v5           #draftTime:J
    .end local v7           #i:I
    .end local v8           #latestUnreadDate:J
    .end local v11           #pos:I
    .end local v13           #row:[Ljava/lang/Object;
    .end local v14           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .end local v17           #subject:Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public static closeCursorInBackground(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 4504
    invoke-static {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 4505
    return-void
.end method

.method public static concatEncodedStringValueArray([Lcom/google/android/mms/pdu/EncodedStringValue;[Lcom/google/android/mms/pdu/EncodedStringValue;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .parameter "A"
    .parameter "B"

    .prologue
    const/4 v3, 0x0

    .line 6075
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 6076
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 6077
    .local v0, ret:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6078
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6083
    .end local v0           #ret:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v0

    .line 6080
    :cond_0
    if-eqz p0, :cond_1

    move-object v0, p0

    .line 6081
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 6083
    goto :goto_0
.end method

.method public static concatSubjectText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "subject"
    .parameter "text"

    .prologue
    .line 6064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6065
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6066
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6067
    .local v1, subs:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6070
    .end local v1           #subs:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6071
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "context"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 1862
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1863
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1864
    const v2, 0x7f0900ef

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1865
    const v2, 0x7f0900f0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1866
    const v2, 0x20c015f

    invoke-virtual {v0, v2, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1867
    const v2, 0x20c0164

    invoke-virtual {v0, v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1868
    invoke-virtual {v0, p3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1870
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1871
    .local v1, dlg:Landroid/app/Dialog;
    instance-of v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v2, :cond_0

    .line 1872
    check-cast p0, Lcom/android/mms/ui/ComposeMessageActivity;

    .end local p0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1874
    :cond_0
    return-void
.end method

.method public static confirmStorageFullDialog(Landroid/content/Context;Z)V
    .locals 13
    .parameter "context"
    .parameter "isLowStorage"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4031
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4032
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_mms_max_size"

    const-string v8, "3"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 4033
    .local v3, msgSizeLimit:I
    const-string v7, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The max MMS is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    div-int/lit16 v3, v3, 0x400

    .line 4035
    const-wide/high16 v7, 0x4004

    int-to-double v9, v3

    mul-double/2addr v7, v9

    double-to-int v6, v7

    .line 4036
    .local v6, storageLimit:I
    if-nez p1, :cond_0

    .line 4037
    const/16 v6, 0x64

    .line 4038
    :cond_0
    const-string v7, "%dKB"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4039
    .local v5, sStorageLimit:Ljava/lang/String;
    const v7, 0x7f090246

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4041
    .local v2, mString:Ljava/lang/String;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0200d1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f090245

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x20c0163

    new-instance v9, Lcom/android/mms/ui/MessageUtils$17;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/MessageUtils$17;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x20c0164

    new-instance v9, Lcom/android/mms/ui/MessageUtils$16;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/MessageUtils$16;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/mms/ui/MessageUtils$15;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessageUtils$15;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 4099
    .local v0, d:Lcom/htc/widget/HtcAlertDialog;
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4103
    :goto_0
    return-void

    .line 4100
    :catch_0
    move-exception v1

    .line 4101
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "oldCid"

    .prologue
    .line 3823
    move-object v0, p0

    .line 3824
    .local v0, newCid:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "cid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid:"

    const-string v3, "<"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3826
    :cond_0
    return-object v0
.end method

.method public static copyPart(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;ZZ)Z
    .locals 28
    .parameter "mContext"
    .parameter "part"
    .parameter "isShowToast"
    .parameter "replace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/StorageFullException;
        }
    .end annotation

    .prologue
    .line 2367
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getAvailableDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 2368
    .local v7, dirPath:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 2369
    const/16 v25, 0x0

    .line 2545
    :cond_0
    :goto_0
    return v25

    .line 2372
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v24

    .line 2374
    .local v24, uri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 2375
    .local v17, input:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 2377
    .local v14, fout:Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 2380
    .local v13, fin:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 2381
    .local v19, mContentResolver:Landroid/content/ContentResolver;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 2382
    const-string v25, "MessageUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "copyPart:uri> "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/io/FileInputStream;

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 2385
    move-object/from16 v0, v17

    check-cast v0, Ljava/io/FileInputStream;

    move-object v13, v0

    .line 2389
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MessageUtils;->getPartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v11

    .line 2394
    .local v11, fileName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    .line 2395
    .local v5, byteType:[B
    if-nez v5, :cond_4

    .line 2396
    const-string v25, "MessageUtils"

    const-string v26, "cannot copy due to miss content type."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    .line 2397
    const/16 v25, 0x0

    .line 2524
    if-eqz v17, :cond_3

    .line 2527
    if-eqz v13, :cond_2

    .line 2528
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 2530
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2536
    :cond_3
    :goto_1
    if-eqz v14, :cond_0

    .line 2538
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2539
    :catch_0
    move-exception v8

    .line 2541
    .local v8, e:Ljava/io/IOException;
    const-string v26, "MessageUtils"

    const-string v27, "IOException caught while closing stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2531
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 2533
    .restart local v8       #e:Ljava/io/IOException;
    const-string v26, "MessageUtils"

    const-string v27, "IOException caught while closing stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2399
    .end local v8           #e:Ljava/io/IOException;
    :cond_4
    :try_start_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 2400
    .local v6, contentType:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 2411
    const-string v25, "MessageUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fileName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/.cache"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2417
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->checkDirAvailable(Ljava/lang/String;)V

    .line 2420
    new-instance v12, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2424
    .local v12, filepath:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 2425
    const/16 v21, 0x7

    .line 2431
    .local v21, savePostiion:I
    :goto_2
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 2433
    .end local v14           #fout:Ljava/io/FileOutputStream;
    .local v15, fout:Ljava/io/FileOutputStream;
    const/16 v25, 0x1f40

    :try_start_4
    move/from16 v0, v25

    new-array v4, v0, [B

    .line 2434
    .local v4, buffer:[B
    const/16 v22, 0x0

    .local v22, size:I
    :goto_3
    invoke-virtual {v13, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v22

    const/16 v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 2435
    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v15, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 2517
    .end local v4           #buffer:[B
    .end local v12           #filepath:Ljava/io/File;
    .end local v21           #savePostiion:I
    .end local v22           #size:I
    :catch_2
    move-exception v8

    move-object v14, v15

    .line 2519
    .end local v5           #byteType:[B
    .end local v6           #contentType:Ljava/lang/String;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v15           #fout:Ljava/io/FileOutputStream;
    .end local v19           #mContentResolver:Landroid/content/ContentResolver;
    .restart local v8       #e:Ljava/io/IOException;
    .restart local v14       #fout:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    const-string v25, "MessageUtils"

    const-string v26, "IOException caught while opening or reading stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2520
    const v25, 0x7f090148

    const v26, 0x7f090150

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2524
    if-eqz v17, :cond_6

    .line 2527
    if-eqz v13, :cond_5

    .line 2528
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 2530
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2536
    :cond_6
    :goto_5
    if-eqz v14, :cond_7

    .line 2538
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 2545
    .end local v8           #e:Ljava/io/IOException;
    :cond_7
    :goto_6
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 2427
    .restart local v5       #byteType:[B
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v11       #fileName:Ljava/lang/String;
    .restart local v12       #filepath:Ljava/io/File;
    .restart local v19       #mContentResolver:Landroid/content/ContentResolver;
    :cond_8
    const/16 v21, 0x0

    .restart local v21       #savePostiion:I
    goto :goto_2

    .line 2439
    .end local v14           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #buffer:[B
    .restart local v15       #fout:Ljava/io/FileOutputStream;
    .restart local v22       #size:I
    :cond_9
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 2440
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->forceSync(Ljava/io/File;)V

    .line 2445
    const-string v25, "application/vnd.oma.drm.message"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 2446
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    const-string v26, "com.android.provider.drm.intent.action.ACTION_INSTALL_SINGLE_FILE"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "path"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "uri"

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "mimetype"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "rightsOption"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "destination"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 2453
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v18           #intent:Landroid/content/Intent;
    :cond_a
    move-object v14, v15

    .line 2513
    .end local v12           #filepath:Ljava/io/File;
    .end local v15           #fout:Ljava/io/FileOutputStream;
    .end local v21           #savePostiion:I
    .restart local v14       #fout:Ljava/io/FileOutputStream;
    :goto_7
    if-eqz p2, :cond_b

    .line 2514
    const v25, 0x7f090148

    const v26, 0x7f09014d

    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 2515
    :cond_b
    const/16 v25, 0x1

    .line 2524
    if-eqz v17, :cond_d

    .line 2527
    if-eqz v13, :cond_c

    .line 2528
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 2530
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 2536
    :cond_d
    :goto_8
    if-eqz v14, :cond_0

    .line 2538
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    .line 2539
    :catch_3
    move-exception v8

    .line 2541
    .restart local v8       #e:Ljava/io/IOException;
    const-string v26, "MessageUtils"

    const-string v27, "IOException caught while closing stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2465
    .end local v4           #buffer:[B
    .end local v8           #e:Ljava/io/IOException;
    .end local v22           #size:I
    :cond_e
    if-eqz p3, :cond_13

    .line 2466
    :try_start_c
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    .local v10, file:Ljava/io/File;
    :goto_9
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    .line 2489
    .local v20, parentFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v25

    if-nez v25, :cond_f

    .line 2490
    const-string v25, "MessageUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[MMS] copyPart: mkdirs for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " failed!"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :cond_f
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 2496
    .end local v14           #fout:Ljava/io/FileOutputStream;
    .restart local v15       #fout:Ljava/io/FileOutputStream;
    const/16 v25, 0x1f40

    :try_start_d
    move/from16 v0, v25

    new-array v4, v0, [B

    .line 2497
    .restart local v4       #buffer:[B
    const/16 v22, 0x0

    .restart local v22       #size:I
    :goto_a
    invoke-virtual {v13, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v22

    const/16 v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    .line 2498
    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v15, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_a

    .line 2524
    .end local v4           #buffer:[B
    .end local v10           #file:Ljava/io/File;
    .end local v20           #parentFile:Ljava/io/File;
    .end local v22           #size:I
    :catchall_0
    move-exception v25

    move-object v14, v15

    .end local v5           #byteType:[B
    .end local v6           #contentType:Ljava/lang/String;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v15           #fout:Ljava/io/FileOutputStream;
    .end local v19           #mContentResolver:Landroid/content/ContentResolver;
    .restart local v14       #fout:Ljava/io/FileOutputStream;
    :goto_b
    if-eqz v17, :cond_11

    .line 2527
    if-eqz v13, :cond_10

    .line 2528
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 2530
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 2536
    :cond_11
    :goto_c
    if-eqz v14, :cond_12

    .line 2538
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 2542
    :cond_12
    :goto_d
    throw v25

    .line 2470
    .restart local v5       #byteType:[B
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v11       #fileName:Ljava/lang/String;
    .restart local v19       #mContentResolver:Landroid/content/ContentResolver;
    :cond_13
    :try_start_10
    const-string v25, "."

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .local v16, index:I
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 2471
    new-instance v23, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 2472
    .local v23, type:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2480
    .end local v23           #type:Ljava/lang/String;
    .local v9, extension:Ljava/lang/String;
    :goto_e
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2482
    .local v3, base:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lcom/android/mms/ui/MessageUtils;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_9

    .line 2475
    .end local v3           #base:Ljava/lang/StringBuilder;
    .end local v9           #extension:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    :cond_14
    add-int/lit8 v25, v16, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2477
    .restart local v9       #extension:Ljava/lang/String;
    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    move-result-object v11

    goto :goto_e

    .line 2502
    .end local v9           #extension:Ljava/lang/String;
    .end local v14           #fout:Ljava/io/FileOutputStream;
    .end local v16           #index:I
    .restart local v4       #buffer:[B
    .restart local v10       #file:Ljava/io/File;
    .restart local v15       #fout:Ljava/io/FileOutputStream;
    .restart local v20       #parentFile:Ljava/io/File;
    .restart local v22       #size:I
    :cond_15
    :try_start_11
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 2503
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->forceSync(Ljava/io/File;)V

    .line 2508
    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    move-object v14, v15

    .end local v15           #fout:Ljava/io/FileOutputStream;
    .restart local v14       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 2531
    .end local v10           #file:Ljava/io/File;
    .end local v20           #parentFile:Ljava/io/File;
    :catch_4
    move-exception v8

    .line 2533
    .restart local v8       #e:Ljava/io/IOException;
    const-string v26, "MessageUtils"

    const-string v27, "IOException caught while closing stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 2524
    .end local v4           #buffer:[B
    .end local v5           #byteType:[B
    .end local v6           #contentType:Ljava/lang/String;
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v22           #size:I
    :cond_16
    if-eqz v17, :cond_18

    .line 2527
    if-eqz v13, :cond_17

    .line 2528
    :try_start_12
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 2530
    :cond_17
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 2536
    :cond_18
    :goto_f
    if-eqz v14, :cond_7

    .line 2538
    :try_start_13
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_6

    .line 2539
    :catch_5
    move-exception v8

    .line 2541
    .restart local v8       #e:Ljava/io/IOException;
    const-string v25, "MessageUtils"

    const-string v26, "IOException caught while closing stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2531
    .end local v8           #e:Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 2533
    .restart local v8       #e:Ljava/io/IOException;
    const-string v25, "MessageUtils"

    const-string v26, "IOException caught while closing stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2531
    .end local v19           #mContentResolver:Landroid/content/ContentResolver;
    :catch_7
    move-exception v8

    .line 2533
    const-string v25, "MessageUtils"

    const-string v26, "IOException caught while closing stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 2539
    :catch_8
    move-exception v8

    .line 2541
    const-string v25, "MessageUtils"

    const-string v26, "IOException caught while closing stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2531
    .end local v8           #e:Ljava/io/IOException;
    :catch_9
    move-exception v8

    .line 2533
    .restart local v8       #e:Ljava/io/IOException;
    const-string v26, "MessageUtils"

    const-string v27, "IOException caught while closing stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 2539
    .end local v8           #e:Ljava/io/IOException;
    :catch_a
    move-exception v8

    .line 2541
    .restart local v8       #e:Ljava/io/IOException;
    const-string v26, "MessageUtils"

    const-string v27, "IOException caught while closing stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 2524
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v25

    goto/16 :goto_b

    .line 2517
    :catch_b
    move-exception v8

    goto/16 :goto_4
.end method

.method public static createAddContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .parameter "address"
    .parameter "isPhoneNum"

    .prologue
    .line 2670
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2674
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2676
    if-eqz p1, :cond_0

    .line 2677
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    :goto_0
    return-object v0

    .line 2679
    :cond_0
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createAddToNewContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .parameter "address"
    .parameter "isPhoneNum"

    .prologue
    .line 2652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2653
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2655
    if-eqz p1, :cond_0

    .line 2656
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2657
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2662
    :goto_0
    return-object v0

    .line 2659
    :cond_0
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2660
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createGetMoreView()Landroid/view/View;
    .locals 4

    .prologue
    .line 5240
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5241
    .local v0, footer:Landroid/view/View;
    return-object v0
.end method

.method public static createSmsMessageSenderIntent(Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/content/Intent;
    .locals 5
    .parameter "dest"
    .parameter "body"
    .parameter "threadId"
    .parameter "realTid"
    .parameter "msgId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5484
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dest"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 5485
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5486
    const-string v1, "threadId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5487
    const-string v1, "real_threadId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5488
    const-string v1, "msg_id"

    new-array v2, v4, [J

    aput-wide p6, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 5490
    return-object v0
.end method

.method public static detectGotoHome(Landroid/content/Context;Z)Z
    .locals 13
    .parameter "context"
    .parameter "stop"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4167
    const-string v8, "MessageUtils"

    const-string v11, "detectGotoHome"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 4169
    .local v4, myActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v4, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 4170
    .local v6, runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 4171
    .local v5, pMan:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4172
    .local v2, homeIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4173
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4175
    .local v1, homeApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 4176
    .local v7, runningTaskClassName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 4177
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4178
    if-eqz p1, :cond_0

    const-string v8, "com.android.mms"

    invoke-virtual {v4, v8}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 4179
    :cond_0
    const-string v8, "MessageUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "runningTaskClassName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", detectGotoHome = true"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 4201
    .end local v3           #i:I
    .end local v7           #runningTaskClassName:Ljava/lang/String;
    :goto_1
    return v8

    .line 4176
    .restart local v3       #i:I
    .restart local v7       #runningTaskClassName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4183
    .end local v3           #i:I
    .end local v7           #runningTaskClassName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4184
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v8, v10

    .line 4185
    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v3       #i:I
    .restart local v7       #runningTaskClassName:Ljava/lang/String;
    :cond_2
    move v8, v10

    .line 4201
    goto :goto_1
.end method

.method public static displayDialog(Landroid/content/Context;II)V
    .locals 1
    .parameter "mContext"
    .parameter "resTitle"
    .parameter "resID"

    .prologue
    .line 2602
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2603
    return-void
.end method

.method private static displayMobileNetworkUncheckWarning(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    .line 3982
    const/4 v2, 0x0

    .line 3983
    .local v2, title:I
    const/4 v0, 0x0

    .line 3984
    .local v0, content:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 3985
    const v2, 0x7f090374

    .line 3986
    const v0, 0x7f090375

    .line 3993
    :goto_0
    :try_start_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0163

    new-instance v5, Lcom/android/mms/ui/MessageUtils$14;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageUtils$14;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0164

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4018
    :cond_0
    :goto_1
    return-void

    .line 3987
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 3988
    const v2, 0x7f090376

    .line 3989
    const v0, 0x7f090377

    goto :goto_0

    .line 4014
    :catch_0
    move-exception v1

    .line 4015
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static displayNetworkUnavailableWarning(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3950
    :try_start_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c0162

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090169

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0163

    new-instance v3, Lcom/android/mms/ui/MessageUtils$13;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageUtils$13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0164

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3964
    :goto_0
    return-void

    .line 3960
    :catch_0
    move-exception v0

    .line 3961
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "sCursor"

    .prologue
    .line 4735
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 4736
    :cond_0
    const/4 v0, 0x0

    .line 4737
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->cloneCursorByPosition(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    .line 4117
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 4156
    :goto_0
    return-object v3

    .line 4119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 4120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4121
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4122
    .local v1, nameArray:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 4123
    aget-char v2, v1, v0

    .line 4125
    .local v2, nameChar:C
    sparse-switch v2, :sswitch_data_0

    .line 4152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4122
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4142
    :sswitch_0
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4145
    :sswitch_1
    add-int/lit8 v5, v0, 0x1

    array-length v6, v1

    if-ge v5, v6, :cond_1

    add-int/lit8 v5, v0, 0x1

    aget-char v5, v1, v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    .line 4146
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4148
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4155
    .end local v2           #nameChar:C
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4156
    .local v3, reName:Ljava/lang/String;
    goto :goto_0

    .line 4125
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2e -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static executeRunnable(Ljava/lang/Runnable;J)V
    .locals 6
    .parameter "runnable"
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 5049
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 5050
    .local v3, mainThread:Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 5052
    .local v1, bInturrupted:Z
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/MessageUtils$18;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/MessageUtils$18;-><init>(Ljava/lang/Runnable;Ljava/lang/Thread;)V

    const-string v5, "executeRunnableThread"

    invoke-direct {v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5058
    .local v0, _thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5061
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5066
    :goto_0
    if-nez v1, :cond_0

    .line 5067
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 5062
    :catch_0
    move-exception v2

    .line 5063
    .local v2, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    goto :goto_0

    .line 5069
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1891
    if-eqz p1, :cond_0

    .line 1892
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1894
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 1878
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1881
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1882
    const-string v1, ""

    .line 1886
    .end local v1           #rawBytes:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1883
    .restart local v1       #rawBytes:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 1886
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 14
    .parameter "context"
    .parameter "recipients"

    .prologue
    const/4 v3, 0x0

    .line 994
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .local v7, addressBuf:Ljava/lang/StringBuilder;
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 996
    .local v13, recipientIds:[Ljava/lang/String;
    move-object v8, v13

    .local v8, arr$:[Ljava/lang/String;
    array-length v11, v8

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v12, v8, v10

    .line 997
    .local v12, recipientId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/canonical-address/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 999
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1001
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1003
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    :cond_0
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 996
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0

    .line 1015
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #recipientId:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-object v3

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1
.end method

.method public static extractPurePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 2947
    if-nez p0, :cond_0

    .line 2948
    const/4 v4, 0x0

    .line 2961
    :goto_0
    return-object v4

    .line 2951
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2952
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2954
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2955
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2957
    .local v1, character:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2954
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2961
    .end local v1           #character:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1899
    array-length v2, p0

    .line 1900
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1902
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1903
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1905
    :cond_0
    return-object v0
.end method

.method static forceSync(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 2560
    const-string v0, "MessageUtils"

    const-string v1, "forceSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageUtils$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageUtils$12;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2597
    return-void
.end method

.method public static formatTimeStampCmasString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 19
    .parameter "ctxRes"
    .parameter "nMillis"

    .prologue
    .line 4852
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 4853
    .local v18, timestamp:Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 4854
    const/4 v10, 0x1

    .line 4859
    .local v10, IsFullDateTime:Z
    const/4 v15, 0x0

    .line 4860
    .local v15, nWeekDay:I
    const-wide/16 v13, 0x0

    .line 4861
    .local v13, nMilliToday:J
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 4862
    .local v17, timeToday:Landroid/text/format/Time;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    .line 4864
    .local v11, bIs24H:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 4865
    move-object/from16 v0, v17

    iget v15, v0, Landroid/text/format/Time;->weekDay:I

    .line 4866
    move-object/from16 v0, v17

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    .line 4867
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 4870
    cmp-long v4, p1, v13

    if-ltz v4, :cond_1

    sget v4, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    int-to-long v4, v4

    add-long/2addr v4, v13

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 4871
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v11}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v16

    .line 4873
    .local v16, strTime:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isENLocale(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4874
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 4897
    .end local v16           #strTime:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v16

    .line 4880
    :cond_1
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 4881
    .local v3, timeShift:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 4882
    iget v4, v3, Landroid/text/format/Time;->second:I

    iget v5, v3, Landroid/text/format/Time;->minute:I

    iget v6, v3, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 4884
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v11}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v16

    .line 4885
    .restart local v16       #strTime:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isENLocale(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4886
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 4889
    :cond_2
    sget v4, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    int-to-long v4, v4

    add-long/2addr v4, v13

    cmp-long v4, p1, v4

    if-gez v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sget v6, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-gez v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sget v6, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    mul-int/2addr v6, v15

    int-to-long v6, v6

    sub-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-ltz v4, :cond_4

    .line 4893
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v11}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 4896
    :cond_4
    const-string v12, "dd/MM/yyyy"

    .line 4897
    .local v12, cFormat:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-static {v12, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0
.end method

.method public static formatTimeStampDetailString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 2777
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 2784
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampStringEx(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "ctxRes"
    .parameter "nMillis"

    .prologue
    .line 2807
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampStringEx(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 19
    .parameter "ctxRes"
    .parameter "nMillis"
    .parameter "IsFullDateTime"

    .prologue
    .line 2811
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 2812
    .local v18, timestamp:Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2817
    move-object/from16 v0, v18

    iget v4, v0, Landroid/text/format/Time;->year:I

    const/16 v5, 0x7b2

    if-ne v4, v5, :cond_1

    const-string v15, ""

    .line 2889
    :cond_0
    :goto_0
    return-object v15

    .line 2820
    :cond_1
    const/4 v14, 0x0

    .line 2821
    .local v14, nWeekDay:I
    const-wide/16 v12, 0x0

    .line 2822
    .local v12, nMilliToday:J
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 2823
    .local v17, timeToday:Landroid/text/format/Time;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    .line 2825
    .local v10, bIs24H:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2826
    move-object/from16 v0, v17

    iget v14, v0, Landroid/text/format/Time;->weekDay:I

    .line 2827
    move-object/from16 v0, v17

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    .line 2828
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 2830
    cmp-long v4, p1, v12

    if-ltz v4, :cond_2

    sget v4, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    int-to-long v4, v4

    add-long/2addr v4, v12

    cmp-long v4, p1, v4

    if-gez v4, :cond_2

    .line 2831
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v10}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v15

    .line 2833
    .local v15, strTime:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isENLocale(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2834
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 2840
    .end local v15           #strTime:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 2841
    .local v3, timeShift:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2842
    iget v4, v3, Landroid/text/format/Time;->second:I

    iget v5, v3, Landroid/text/format/Time;->minute:I

    iget v6, v3, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 2844
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v10}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v15

    .line 2845
    .restart local v15       #strTime:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isENLocale(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2846
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 2849
    :cond_3
    sget v4, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    int-to-long v4, v4

    add-long/2addr v4, v12

    cmp-long v4, p1, v4

    if-gez v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sget v6, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-gez v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sget v6, Lcom/android/mms/ui/MessageUtils;->s_nOneDayMillis:I

    mul-int/2addr v6, v14

    int-to-long v6, v6

    sub-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-ltz v4, :cond_6

    .line 2852
    :cond_4
    if-eqz p3, :cond_5

    .line 2853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v10}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 2855
    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v10}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 2859
    :cond_6
    if-eqz p3, :cond_8

    .line 2861
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2863
    .local v11, cFormat:Ljava/lang/CharSequence;
    if-nez v11, :cond_7

    .line 2864
    const-string v15, ""

    goto/16 :goto_0

    .line 2866
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-static {v11, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 2869
    .end local v11           #cFormat:Ljava/lang/CharSequence;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x4000

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_f

    .line 2870
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2871
    .restart local v11       #cFormat:Ljava/lang/CharSequence;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_a

    .line 2872
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2873
    .local v16, t:Ljava/lang/String;
    const-string v4, "/yyyy"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2874
    const-string v4, "/yyyy"

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2883
    :cond_9
    :goto_1
    move-object/from16 v11, v16

    .line 2885
    .end local v16           #t:Ljava/lang/String;
    :cond_a
    move-wide/from16 v0, p1

    invoke-static {v11, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 2875
    .restart local v16       #t:Ljava/lang/String;
    :cond_b
    const-string v4, "yyyy "

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2876
    const-string v4, "yyyy "

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 2877
    :cond_c
    const-string v4, "yyyy/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2878
    const-string v4, "yyyy/"

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 2879
    :cond_d
    const-string v4, ", yyyy"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2880
    const-string v4, ", yyyy"

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 2881
    :cond_e
    const-string v4, " yyyy"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2882
    const-string v4, " yyyy"

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 2888
    .end local v11           #cFormat:Ljava/lang/CharSequence;
    .end local v16           #t:Ljava/lang/String;
    :cond_f
    const-string v11, "MM/dd/yy"

    .line 2889
    .restart local v11       #cFormat:Ljava/lang/CharSequence;
    move-wide/from16 v0, p1

    invoke-static {v11, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0
.end method

.method public static formatTimeStampStringFullEx(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "ctxRes"
    .parameter "nMillis"

    .prologue
    .line 2902
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2903
    .local v10, timeToday:Landroid/text/format/Time;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    .line 2905
    .local v7, bIs24H:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2906
    iget v1, v10, Landroid/text/format/Time;->monthDay:I

    iget v2, v10, Landroid/text/format/Time;->month:I

    iget v3, v10, Landroid/text/format/Time;->year:I

    invoke-virtual {v10, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 2909
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2910
    .local v0, timeShift:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 2911
    iget v1, v0, Landroid/text/format/Time;->second:I

    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v10, Landroid/text/format/Time;->monthDay:I

    iget v5, v10, Landroid/text/format/Time;->month:I

    iget v6, v10, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 2913
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {p0, v1, v2, v7}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v9

    .line 2914
    .local v9, strTime:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isENLocale(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2915
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 2918
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2920
    .local v8, cFormat:Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAddressByHtcThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "htcthread_id"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1050
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "recipient_address"

    aput-object v0, v3, v1

    .line 1052
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1054
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1060
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1064
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1066
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1070
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1074
    :cond_0
    :goto_1
    return-object v5

    .line 1057
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1070
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 1175
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdStringFromThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllMessagesUnreadCount(Landroid/content/Context;)[I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3562
    sget-object v1, Lcom/android/mms/util/QueryURI;->GET_ALL_UNREAD_COUNT_URI:Landroid/net/Uri;

    .line 3565
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/util/QueryURI;->ALL_MSG_UNREAD_COUNT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3569
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 3571
    .local v7, counts:[I
    if-eqz v6, :cond_1

    .line 3572
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3573
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v7, v8

    .line 3574
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v7, v9

    .line 3576
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3578
    :cond_1
    aget v0, v7, v8

    if-gez v0, :cond_2

    aput v8, v7, v8

    .line 3579
    :cond_2
    aget v0, v7, v9

    if-gez v0, :cond_3

    aput v8, v7, v9

    .line 3580
    :cond_3
    return-object v7
.end method

.method public static getAllowTextMessagingStatus(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4833
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportExchangePolicyStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4834
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4835
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v1

    .line 4836
    .local v1, status:I
    if-ne v1, v2, :cond_1

    .line 4837
    const-string v3, "MessageUtils"

    const-string v4, "Text messaging allow status = allow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4838
    invoke-static {v2}, Lcom/android/mms/MmsApp;->easAllowSms(Z)V

    .line 4846
    .end local v0           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v1           #status:I
    :cond_0
    :goto_0
    return v2

    .line 4841
    .restart local v0       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v1       #status:I
    :cond_1
    const-string v2, "MessageUtils"

    const-string v4, "Text messaging allow status = disable, stop using MMS app!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    invoke-static {v3}, Lcom/android/mms/MmsApp;->easAllowSms(Z)V

    move v2, v3

    .line 4843
    goto :goto_0
.end method

.method public static getAppLable()I
    .locals 1

    .prologue
    .line 4510
    const v0, 0x7f090010

    .line 4513
    .local v0, resId:I
    return v0
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 3259
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3260
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3261
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3262
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3263
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3264
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 3265
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3266
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3267
    if-eqz v1, :cond_0

    .line 3269
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3270
    const/4 v1, 0x0

    .line 3272
    :cond_0
    if-eqz v0, :cond_1

    .line 3274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3275
    const/4 v0, 0x0

    .line 3277
    :cond_1
    return-object v2
.end method

.method public static getAttachmentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 3799
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->hasDoubleByteChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3800
    sget v1, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    .line 3801
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3802
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 3803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3807
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 3805
    .restart local p0
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAvailableDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 22
    .parameter "context"

    .prologue
    .line 3015
    const-string v18, "MessageUtils"

    const-string v19, "getAvailableDirPath"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v12

    .line 3022
    .local v12, result:I
    and-int/lit8 v18, v12, 0x2

    if-eqz v18, :cond_0

    const/4 v8, 0x1

    .line 3023
    .local v8, ph_store:Z
    :goto_0
    and-int/lit8 v18, v12, 0x1

    if-eqz v18, :cond_1

    const/4 v13, 0x1

    .line 3024
    .local v13, sd_store:Z
    :goto_1
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v7

    .line 3028
    .local v7, ph_sd_store:Z
    if-nez v8, :cond_2

    if-nez v13, :cond_2

    if-nez v7, :cond_2

    .line 3030
    const-string v18, "MessageUtils"

    const-string v19, "all storage isn\'t available."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    const v18, 0x7f0901e3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 3033
    const/4 v3, 0x0

    .line 3198
    :goto_2
    return-object v3

    .line 3022
    .end local v7           #ph_sd_store:Z
    .end local v8           #ph_store:Z
    .end local v13           #sd_store:Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 3023
    .restart local v8       #ph_store:Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 3036
    .restart local v7       #ph_sd_store:Z
    .restart local v13       #sd_store:Z
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 3037
    .local v17, sp:Landroid/content/SharedPreferences;
    const-string v18, "pref_key_attachment_storage_setting"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3041
    .local v5, index:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3044
    .local v6, option:I
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 3048
    :goto_3
    const-string v18, "MessageUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "selected storage: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    if-nez v8, :cond_3

    if-nez v7, :cond_3

    const/4 v6, 0x1

    .line 3051
    :cond_3
    if-nez v13, :cond_4

    const/4 v6, 0x0

    .line 3053
    :cond_4
    const-string v18, "MessageUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "change option?: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    const/4 v9, 0x0

    .line 3056
    .local v9, pri:Ljava/lang/String;
    const/4 v14, 0x0

    .line 3057
    .local v14, sec:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3058
    .local v10, priPath:Ljava/lang/String;
    const/4 v15, 0x0

    .line 3061
    .local v15, secPath:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 3098
    :cond_5
    :goto_4
    const-string v18, "MessageUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pri state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    const-string v18, "MessageUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pri path: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v11, 0x0

    .line 3104
    .local v11, priValid:Z
    const/16 v16, 0x0

    .line 3105
    .local v16, secValid:Z
    if-eqz v9, :cond_6

    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 3106
    const/4 v11, 0x1

    .line 3108
    :cond_6
    if-eqz v14, :cond_7

    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3109
    const/16 v16, 0x1

    .line 3112
    :cond_7
    if-nez v11, :cond_a

    if-nez v16, :cond_a

    .line 3115
    const-string v18, "MessageUtils"

    const-string v19, "can not get either mounted media"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const v18, 0x7f0901e3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 3118
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 3045
    .end local v9           #pri:Ljava/lang/String;
    .end local v10           #priPath:Ljava/lang/String;
    .end local v11           #priValid:Z
    .end local v14           #sec:Ljava/lang/String;
    .end local v15           #secPath:Ljava/lang/String;
    .end local v16           #secValid:Z
    :catch_0
    move-exception v4

    .line 3046
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v18, "MessageUtils"

    const-string v19, "can not get real default value of storage setting. "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3063
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #pri:Ljava/lang/String;
    .restart local v10       #priPath:Ljava/lang/String;
    .restart local v14       #sec:Ljava/lang/String;
    .restart local v15       #secPath:Ljava/lang/String;
    :pswitch_0
    if-eqz v7, :cond_8

    .line 3064
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 3065
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3066
    if-eqz v13, :cond_5

    .line 3067
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v14

    .line 3068
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 3071
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v9

    .line 3072
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3074
    if-eqz v13, :cond_5

    .line 3075
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 3076
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 3081
    :pswitch_1
    if-eqz v7, :cond_9

    .line 3082
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v9

    .line 3083
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3084
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 3085
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 3088
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 3089
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3091
    if-eqz v8, :cond_5

    .line 3092
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v14

    .line 3093
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 3121
    .restart local v11       #priValid:Z
    .restart local v16       #secValid:Z
    :cond_a
    const/4 v3, 0x0

    .line 3122
    .local v3, dirPath:Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 3123
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isLowStorage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 3124
    if-eqz v16, :cond_d

    .line 3125
    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isLowStorage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3126
    const-string v18, "MessageUtils"

    const-string v19, "both storages are full. "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_b

    .line 3129
    const v18, 0x7f090247

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f090248

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    :goto_5
    new-instance v18, Lcom/android/mms/StorageFullException;

    invoke-direct/range {v18 .. v18}, Lcom/android/mms/StorageFullException;-><init>()V

    throw v18

    .line 3134
    :cond_b
    const v18, 0x7f0901e9

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 3141
    :cond_c
    move-object v3, v15

    .line 3185
    :goto_6
    if-nez v3, :cond_13

    .line 3186
    const-string v18, "MessageUtils"

    const-string v19, "should not arrive here: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 3145
    :cond_d
    const-string v18, "MessageUtils"

    const-string v19, "second not valid. "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_e

    .line 3148
    const v18, 0x7f090247

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f090248

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    :goto_7
    new-instance v18, Lcom/android/mms/StorageFullException;

    invoke-direct/range {v18 .. v18}, Lcom/android/mms/StorageFullException;-><init>()V

    throw v18

    .line 3153
    :cond_e
    const v18, 0x7f0901e9

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 3162
    :cond_f
    move-object v3, v10

    goto :goto_6

    .line 3165
    :cond_10
    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isLowStorage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 3166
    const-string v18, "MessageUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sec low storage: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_11

    .line 3172
    const v18, 0x7f090247

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f090248

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    :goto_8
    new-instance v18, Lcom/android/mms/StorageFullException;

    invoke-direct/range {v18 .. v18}, Lcom/android/mms/StorageFullException;-><init>()V

    throw v18

    .line 3177
    :cond_11
    const v18, 0x7f0901e3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 3183
    :cond_12
    move-object v3, v15

    goto/16 :goto_6

    .line 3189
    :cond_13
    const-string v18, "sdcard"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 3190
    sget-object v18, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3194
    :cond_14
    :goto_9
    const-string v18, "MessageUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "get dir path: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->checkDirAvailable(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3191
    :cond_15
    const-string v18, "/ext_sd"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 3192
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 3061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAvailableThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3308
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->AVAILABLE_THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 3311
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3312
    .local v9, recipient:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3313
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3316
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 3319
    .end local v9           #recipient:Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3324
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3327
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableThreadId cursor cnt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    if-eqz v7, :cond_3

    .line 3332
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3333
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3339
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_1
    return-wide v0

    .line 3336
    :cond_2
    const-wide/16 v0, 0x0

    .line 3339
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3343
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAvailableThreadId_V2(Landroid/content/Context;Ljava/util/Set;)J
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3349
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->AVAILABLE_THREAD_ID_CONTENT_URI_V2:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 3352
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3353
    .local v9, recipient:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3354
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3357
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 3360
    .end local v9           #recipient:Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3367
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3369
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 3371
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3372
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3378
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_1
    return-wide v0

    .line 3375
    :cond_2
    const-wide/16 v0, 0x0

    .line 3378
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3382
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBcc(Landroid/content/Context;Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "msgCursor"

    .prologue
    .line 595
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 596
    .local v1, id:J
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 597
    .local v4, uri:Landroid/net/Uri;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/mms/pdu/PduPersister;->getCachePdu(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 599
    .local v3, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_1

    .line 600
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    const/16 v7, 0x81

    invoke-virtual {v6, v4, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadAddresses(Landroid/net/Uri;I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 602
    .local v5, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 603
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, bccs:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 608
    .end local v0           #bccs:Ljava/lang/String;
    .end local v5           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v6

    .line 606
    .restart local v5       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 608
    .end local v5           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getPdu(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getBcc(Lcom/google/android/mms/pdu/GenericPdu;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getBcc(Lcom/google/android/mms/pdu/GenericPdu;)[Ljava/lang/String;
    .locals 4
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    .line 580
    if-nez p0, :cond_1

    .line 591
    .end local p0
    .local v1, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    :goto_0
    return-object v2

    .line 581
    .end local v1           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    .line 583
    .restart local v1       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    instance-of v3, p0, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v3, :cond_2

    .line 584
    check-cast p0, Lcom/google/android/mms/pdu/SendReq;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 587
    :cond_2
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 588
    invoke-static {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, bccs:Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCBChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 5792
    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5794
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_cellbroadcast_channel_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5795
    .local v1, tmpstr:Ljava/lang/String;
    return-object v1
.end method

.method public static getCBChannelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 5802
    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5804
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_cellbroadcast_channelname_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5805
    .local v1, tmpstr:Ljava/lang/String;
    return-object v1
.end method

.method public static getCID(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "uri"
    .parameter "src"

    .prologue
    .line 3813
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3814
    .local v1, path:Ljava/lang/String;
    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3816
    .local v0, cid:Ljava/lang/String;
    const-string v2, "Pochuan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    return-object v0
.end method

.method public static getCc(Landroid/content/Context;Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "msgCursor"

    .prologue
    .line 562
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 563
    .local v1, id:J
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 564
    .local v4, uri:Landroid/net/Uri;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/mms/pdu/PduPersister;->getCachePdu(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 566
    .local v3, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_1

    .line 567
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    const/16 v7, 0x82

    invoke-virtual {v6, v4, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadAddresses(Landroid/net/Uri;I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 569
    .local v5, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 570
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, ccs:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 575
    .end local v0           #ccs:Ljava/lang/String;
    .end local v5           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v6

    .line 573
    .restart local v5       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 575
    .end local v5           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getPdu(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getCc(Lcom/google/android/mms/pdu/GenericPdu;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getCc(Lcom/google/android/mms/pdu/GenericPdu;)[Ljava/lang/String;
    .locals 4
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    .line 545
    if-nez p0, :cond_1

    .line 558
    .end local p0
    .local v1, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    :goto_0
    return-object v2

    .line 546
    .end local v1           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    .line 548
    .restart local v1       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    instance-of v3, p0, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v3, :cond_3

    .line 549
    check-cast p0, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 554
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 555
    invoke-static {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, ccs:Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 550
    .end local v0           #ccs:Ljava/lang/String;
    .restart local p0
    :cond_3
    instance-of v3, p0, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v3, :cond_2

    .line 551
    check-cast p0, Lcom/google/android/mms/pdu/SendReq;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    goto :goto_1
.end method

.method private static getCcPreViewList([Lcom/google/android/mms/pdu/EncodedStringValue;I)Ljava/lang/String;
    .locals 5
    .parameter "addr"
    .parameter "end"

    .prologue
    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v3, sb:Ljava/lang/StringBuilder;
    add-int/lit8 v1, p1, -0x1

    .line 616
    .local v1, maxIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 617
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    if-ge v0, v1, :cond_0

    .line 619
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_1
    array-length v4, p0

    sub-int v2, v4, p1

    .line 624
    .local v2, remaindNum:I
    if-lez v2, :cond_2

    .line 625
    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmSrc"
    .parameter "nSize"

    .prologue
    const/4 v6, 0x0

    .line 3216
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3217
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3218
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 3219
    .local v5, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3220
    .local v4, nSrcH:I
    if-eq v5, v4, :cond_0

    if-nez p0, :cond_1

    .line 3222
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3238
    :goto_0
    return-object v1

    .line 3226
    :cond_1
    if-le v5, v4, :cond_2

    const/4 v0, 0x1

    .line 3227
    .local v0, bSrcLandscape:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 3229
    sub-int v7, v5, v4

    div-int/lit8 v3, v7, 0x2

    .line 3230
    .local v3, nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v4

    invoke-direct {v7, v3, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .end local v0           #bSrcLandscape:Z
    .end local v3           #nOffset:I
    :cond_2
    move v0, v6

    .line 3226
    goto :goto_1

    .line 3234
    .restart local v0       #bSrcLandscape:Z
    :cond_3
    sub-int v7, v4, v5

    div-int/lit8 v3, v7, 0x2

    .line 3235
    .restart local v3       #nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v5

    invoke-direct {v7, v6, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bmSrc"

    .prologue
    .line 3245
    const/4 v1, 0x0

    .line 3246
    .local v1, size:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isWVGADevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3247
    const/16 v1, 0x48

    .line 3252
    :goto_0
    move v0, v1

    .line 3254
    .local v0, nSize:I
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 3248
    .end local v0           #nSize:I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isQVGADevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3249
    const/16 v1, 0x28

    goto :goto_0

    .line 3251
    :cond_1
    const/16 v1, 0x30

    goto :goto_0
.end method

.method public static getCmasPreferenceKey(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 4938
    const/4 v0, 0x0

    .line 4939
    .local v0, key:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 4963
    :goto_0
    return-object v0

    .line 4942
    :sswitch_0
    const-string v0, "pref_cmas_alerts_presidential_alert_key"

    .line 4943
    goto :goto_0

    .line 4946
    :sswitch_1
    const-string v0, "pref_cmas_alerts_extreme_alert_key"

    .line 4947
    goto :goto_0

    .line 4950
    :sswitch_2
    const-string v0, "pref_cmas_alerts_severe_alert_key"

    .line 4951
    goto :goto_0

    .line 4954
    :sswitch_3
    const-string v0, "pref_cmas_alerts_amber_alert_key"

    .line 4955
    goto :goto_0

    .line 4958
    :sswitch_4
    const-string v0, "pref_cmas_alerts_test_alert_key"

    .line 4959
    goto :goto_0

    .line 4939
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_3
        0x1004 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getCmasSupportStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5862
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mms.customizationBySIM"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5866
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "Do_Customize"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5884
    :goto_0
    return-void

    .line 5869
    :cond_0
    const-string v2, "MSG_General_CMAS_Support"

    const-string v3, "not_define"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5870
    .local v1, stmp:Ljava/lang/String;
    const-string v2, "MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mms init CMAS in preference is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5872
    const-string v2, "trueStr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5873
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    .line 5874
    const-string v2, "MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mms init bySIM preference, CMAS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5876
    :cond_1
    const-string v2, "falseStr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5877
    sput-boolean v5, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    .line 5878
    const-string v2, "MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mms init bySIM preference, CMAS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5883
    :cond_2
    new-instance v2, Lcom/android/mms/ui/MessageUtils$queryCmasSupportStatusAsync;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$queryCmasSupportStatusAsync;-><init>()V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageUtils$queryCmasSupportStatusAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public static getCmasTitleResId(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 4905
    const/4 v0, 0x0

    .line 4906
    .local v0, resId:I
    sparse-switch p0, :sswitch_data_0

    .line 4928
    :goto_0
    invoke-static {v0}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v1

    return v1

    .line 4908
    :sswitch_0
    const v0, 0x7f090312

    .line 4909
    goto :goto_0

    .line 4911
    :sswitch_1
    const v0, 0x7f090313

    .line 4912
    goto :goto_0

    .line 4914
    :sswitch_2
    const v0, 0x7f090314

    .line 4915
    goto :goto_0

    .line 4917
    :sswitch_3
    const v0, 0x7f090315

    .line 4918
    goto :goto_0

    .line 4920
    :sswitch_4
    const v0, 0x7f09030e

    .line 4921
    goto :goto_0

    .line 4923
    :sswitch_5
    const v0, 0x7f090007

    .line 4924
    goto :goto_0

    .line 4906
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getContactAddressesCount(Landroid/content/Context;J)I
    .locals 12
    .parameter "context"
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 3422
    const/4 v6, 0x0

    .line 3424
    .local v6, count:I
    const-wide/16 v10, 0x0

    cmp-long v1, p1, v10

    if-gez v1, :cond_0

    move v1, v6

    .line 3450
    :goto_0
    return v1

    .line 3425
    :cond_0
    const-wide/32 v10, 0x5f5e100

    cmp-long v1, p1, v10

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 3427
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3428
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.contacts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/contacts/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/simpledata"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3431
    .local v9, uriSb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mimetype"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mimetype"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3437
    .local v8, sel:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "COUNT(mimetype) as count"

    aput-object v3, v2, v5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3439
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 3441
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3442
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3443
    const-string v1, "Jerry1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3446
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v6

    .line 3450
    goto/16 :goto_0

    .line 3446
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getContactAddressesSet(Landroid/content/Context;J)Ljava/util/HashSet;
    .locals 16
    .parameter "context"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3455
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContactAddressesSet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_1

    const/4 v13, 0x0

    .line 3497
    :cond_0
    :goto_0
    return-object v13

    .line 3458
    :cond_1
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 3460
    .local v13, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3461
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/simpledata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3464
    .local v15, uriSb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mimetype"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3470
    .local v14, sel:Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3473
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3474
    const-string v3, "mimetype"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 3476
    .local v11, idxMimetype:I
    const-string v3, "data1"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 3479
    .local v10, idxData:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3481
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3482
    .local v12, mimetype:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3483
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3484
    .local v9, data:Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3485
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3493
    .end local v9           #data:Ljava/lang/String;
    .end local v12           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v3

    .line 3486
    .restart local v12       #mimetype:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3487
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3488
    .restart local v9       #data:Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3489
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3493
    .end local v9           #data:Ljava/lang/String;
    .end local v12           #mimetype:Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method public static getContactIdFromThreadID(Landroid/content/Context;JJ)J
    .locals 9
    .parameter "context"
    .parameter "threadId"
    .parameter "htcthreadId"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 4305
    const-string v0, "content://mms-sms-v2/get-contactID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4306
    .local v1, threadIdUri:Landroid/net/Uri;
    cmp-long v0, p3, v6

    if-lez v0, :cond_2

    .line 4307
    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4308
    const-string v0, "htcthreadID"

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4312
    :goto_0
    const-wide/16 v6, 0x0

    .line 4313
    .local v6, c_id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4314
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 4316
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4317
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 4320
    :cond_0
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 4324
    .end local v6           #c_id:J
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    return-wide v6

    .line 4309
    :cond_2
    cmp-long v0, p1, v6

    if-lez v0, :cond_1

    .line 4310
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 4320
    .restart local v6       #c_id:J
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getContactInfoFromEmailAddr(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .parameter "context"
    .parameter "address"

    .prologue
    .line 2703
    const-wide/16 v12, 0x0

    .line 2704
    .local v12, personID:J
    const/4 v9, 0x0

    .line 2706
    .local v9, bundle:Landroid/os/Bundle;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2709
    .local v2, contactEmailLookupUri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "contact_id"

    aput-object v1, v3, v0

    .line 2714
    .local v3, sProjection:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2717
    .local v10, cCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2725
    const-string v8, ""

    .line 2726
    .local v8, _Name:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 2727
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2728
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query result cursor count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2731
    const-string v0, "contact_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2733
    .local v7, _Id:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    .line 2735
    const-string v0, "display_name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2737
    new-instance v9, Landroid/os/Bundle;

    .end local v9           #bundle:Landroid/os/Bundle;
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2738
    .restart local v9       #bundle:Landroid/os/Bundle;
    const-string v0, "personId"

    invoke-virtual {v9, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2739
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2740
    const-string v0, "name"

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    .end local v7           #_Id:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_1
    move-object v0, v9

    .line 2756
    .end local v8           #_Name:Ljava/lang/String;
    :goto_2
    return-object v0

    .line 2719
    :catch_0
    move-exception v11

    .line 2720
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2721
    const/4 v0, 0x0

    goto :goto_2

    .line 2742
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #_Id:Ljava/lang/String;
    .restart local v8       #_Name:Ljava/lang/String;
    :cond_1
    const-string v0, "name"

    invoke-virtual {v9, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2750
    .end local v7           #_Id:Ljava/lang/String;
    :cond_2
    const-string v0, "MessageUtils"

    const-string v1, "Query result cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getContactThreadAddresses(Landroid/content/Context;JZ)Ljava/util/HashSet;
    .locals 10
    .parameter "context"
    .parameter "contactId"
    .parameter "isAllProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3389
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 3391
    .local v6, addressList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3392
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://mms-sms-v2/get-contactThreadPhone/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3394
    .local v9, uriSb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 3395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://allmessages/get-contactThreadPhone/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3399
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3402
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 3403
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3404
    .local v7, count:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3407
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3412
    :cond_1
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 3416
    .end local v7           #count:I
    :cond_2
    return-object v6
.end method

.method public static getContactThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/16 v0, 0x32

    .line 2933
    invoke-static {p0, p1, v0, v0}, Landroid/provider/HtcUnionContact$ContactUtils;->getCenterCropImage(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getContentTypeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "mediaName"

    .prologue
    .line 4471
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4472
    .local v0, ext:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 4473
    .local v1, map:Landroid/webkit/MimeTypeMap;
    const-string v2, ""

    .line 4474
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4475
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4479
    :cond_0
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---------------check MIME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    return-object v2
.end method

.method private static getDataConnectionAvailable(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 3881
    const/4 v4, 0x0

    .line 3882
    .local v4, serviceState:I
    const/4 v0, 0x2

    .line 3883
    .local v0, callState:I
    const/4 v3, 0x0

    .line 3885
    .local v3, networkType:I
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 3886
    .local v5, telService:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I

    move-result v4

    .line 3888
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3889
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 3890
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3895
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v5           #telService:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    if-eq v3, v6, :cond_1

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1

    :cond_0
    :goto_1
    return v6

    .line 3892
    :catch_0
    move-exception v1

    .line 3893
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "MessageUtils"

    const-string v8, "Unable to get service state"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3895
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getDateString(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "millis"
    .parameter "format"

    .prologue
    .line 3789
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3790
    const-string p2, "MM/dd/yy, h:mm:ssaa"

    .line 3792
    :cond_0
    invoke-static {p2, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "millis"

    .prologue
    .line 3779
    const-string v0, "EE, MMM d"

    .line 3780
    .local v0, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultPrefSignature(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "ForceCustomize"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0900aa

    .line 4441
    const/4 v1, 0x0

    .line 4442
    .local v1, locale:Ljava/lang/String;
    const/4 v0, 0x0

    .line 4443
    .local v0, Signature:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4444
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms.customizationSignature"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4446
    .local v2, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 4447
    const-string v4, ""

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4449
    :cond_0
    if-eqz p1, :cond_3

    .line 4450
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 4465
    .end local v0           #Signature:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 4453
    .restart local v0       #Signature:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4455
    :cond_3
    const-string v4, "com.android.mms.customizationBySIM"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4457
    .local v3, sp2:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSIEUseSignature()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    const-string v4, "MSG_Use_Signature"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4459
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 4462
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4465
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDigitsAndFirstPlusOnlyPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 2973
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 2986
    :goto_0
    return-object v4

    .line 2974
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2975
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2976
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 2977
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2978
    .local v1, ch:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    if-nez v2, :cond_1

    .line 2979
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2982
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2976
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2986
    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 4822
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4823
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4827
    :goto_0
    return v1

    .line 4825
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4826
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayHeight:Ljava/lang/Integer;

    .line 4827
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 4813
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4814
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4818
    :goto_0
    return v1

    .line 4816
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4817
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayWidth:Ljava/lang/Integer;

    .line 4818
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mDisplayWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getEncodePartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 9
    .parameter "part"

    .prologue
    .line 2263
    const/4 v1, 0x0

    .line 2264
    .local v1, decodedData:[B
    if-eqz p0, :cond_1

    .line 2265
    const/4 v4, 0x0

    .line 2266
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    .line 2267
    .local v0, bName:[B
    if-eqz v0, :cond_0

    .line 2268
    new-instance v4, Ljava/lang/String;

    .end local v4           #name:Ljava/lang/String;
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 2269
    .restart local v4       #name:Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "=?utf-8?b?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "?="

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "=?utf-8?b??="

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2272
    :try_start_0
    const-string v7, "=?utf-8?b?"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 2273
    .local v6, start:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x2

    .line 2274
    .local v3, end:I
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2275
    .local v5, pure:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2285
    .end local v0           #bName:[B
    .end local v3           #end:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #pure:Ljava/lang/String;
    .end local v6           #start:I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2286
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 2288
    :goto_1
    return-object v7

    .line 2277
    .restart local v0       #bName:[B
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2279
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2288
    .end local v0           #bName:[B
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    const/4 v0, 0x0

    .line 2924
    if-nez p0, :cond_1

    .line 2929
    :cond_0
    :goto_0
    return-object v0

    .line 2925
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2926
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 2927
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2929
    .local v0, ext:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getGsmCmasChannelList(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 4969
    const/4 v8, 0x5

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 4976
    .local v2, cls:[I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 4977
    .local v7, sp:Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    .line 4978
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_2

    .line 4979
    aget v8, v2, v4

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->getCmasPreferenceKey(I)Ljava/lang/String;

    move-result-object v5

    .line 4980
    .local v5, key:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4981
    .local v3, enable:Z
    if-eqz v3, :cond_0

    .line 4982
    aget v8, v2, v4

    invoke-static {v8}, Lcom/android/internal/telephony/CmasMessage;->getGsmCmasChannelListStr(I)Ljava/lang/String;

    move-result-object v1

    .line 4983
    .local v1, chs:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 4984
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4978
    .end local v1           #chs:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4986
    .restart local v1       #chs:Ljava/lang/String;
    :cond_1
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4990
    .end local v1           #chs:Ljava/lang/String;
    .end local v3           #enable:Z
    .end local v5           #key:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .line 4991
    .local v0, chList:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4992
    :cond_3
    const-string v8, "MessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chList> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4993
    return-object v0

    .line 4969
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getHtcThreadIdByThreadId(Landroid/content/Context;J)J
    .locals 11
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 3501
    const-wide/16 v7, 0x0

    .line 3502
    .local v7, htcThreadId:J
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    move-wide v9, v7

    .line 3518
    .end local v7           #htcThreadId:J
    .local v9, htcThreadId:J
    :goto_0
    return-wide v9

    .line 3505
    .end local v9           #htcThreadId:J
    .restart local v7       #htcThreadId:J
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://allmessages/htcthreadId/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3506
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3507
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3509
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3510
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 3513
    :cond_1
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    :cond_2
    move-wide v9, v7

    .line 3518
    .end local v7           #htcThreadId:J
    .restart local v9       #htcThreadId:J
    goto :goto_0

    .line 3513
    .end local v9           #htcThreadId:J
    .restart local v7       #htcThreadId:J
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getLauchDialerWithPhoneIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "number"
    .parameter "name"

    .prologue
    .line 2686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2687
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2688
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2691
    const-string v1, "clearText"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2694
    if-eqz p1, :cond_0

    const-string v1, "Name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2695
    :cond_0
    return-object v0
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1679
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1680
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1682
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocation(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "address"
    .parameter "isMo"

    .prologue
    .line 5698
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5699
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/android/mms/ui/MessageUtils;->queryCallLocation(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 5702
    .local v0, city:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 5705
    .end local v0           #city:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "address"
    .parameter "isMo"

    .prologue
    .line 5686
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_0

    .line 5687
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5688
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/android/mms/ui/MessageUtils;->queryCallLocation(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 5690
    .local v0, city:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5695
    .end local v0           #city:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMMSCallbackNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 5540
    const/4 v2, 0x0

    .line 5541
    .local v2, retstr:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5542
    .local v1, pref:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 5543
    const-string v3, "pref_key_set_callback"

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5544
    .local v0, callback:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 5545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5548
    .end local v0           #callback:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getMMSLimit()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5430
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms.customizationBySIM"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5432
    .local v3, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 5433
    .local v0, Str:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5435
    .local v1, mbHasCustomize:Z
    if-eqz v3, :cond_0

    .line 5436
    const-string v4, "Do_Customize"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5438
    :cond_0
    if-nez v1, :cond_5

    .line 5439
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x98

    if-eq v4, v5, :cond_1

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa9

    if-eq v4, v5, :cond_1

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x59

    if-eq v4, v5, :cond_1

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x78

    if-ne v4, v5, :cond_2

    .line 5443
    :cond_1
    const v2, 0x7f060011

    .line 5451
    .local v2, mms_size_array_id:I
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 5458
    .end local v2           #mms_size_array_id:I
    :goto_1
    return-object v0

    .line 5444
    :cond_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_3

    .line 5445
    const v2, 0x7f060013

    .restart local v2       #mms_size_array_id:I
    goto :goto_0

    .line 5446
    .end local v2           #mms_size_array_id:I
    :cond_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_4

    .line 5447
    const v2, 0x7f060012

    .restart local v2       #mms_size_array_id:I
    goto :goto_0

    .line 5449
    .end local v2           #mms_size_array_id:I
    :cond_4
    const v2, 0x7f060010

    .restart local v2       #mms_size_array_id:I
    goto :goto_0

    .line 5453
    .end local v2           #mms_size_array_id:I
    :cond_5
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    .line 5454
    const-string v4, "MMS_Msg_Size1"

    const-string v5, "100k"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 5455
    const/4 v4, 0x1

    const-string v5, "MMS_Msg_Size2"

    const-string v6, "200k"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 5456
    const/4 v4, 0x2

    const-string v5, "MMS_Msg_Size3"

    const-string v6, "300k"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    goto :goto_1
.end method

.method public static getMainPhoneNumberFromContactId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 5961
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v1

    .line 5964
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND mimetype = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND is_primary = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5967
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5969
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 5970
    const-string v7, ""

    .line 5982
    :goto_0
    return-object v7

    .line 5973
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v8, :cond_1

    .line 5974
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 5978
    .local v7, number:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5979
    const/4 v6, 0x0

    goto :goto_0

    .line 5978
    .end local v7           #number:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5979
    const/4 v6, 0x0

    .line 5982
    const-string v7, ""

    goto :goto_0

    .line 5978
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5979
    const/4 v6, 0x0

    throw v0
.end method

.method public static getMakeCallDirectlyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 2640
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2646
    :cond_0
    :goto_0
    return-object v0

    .line 2642
    :cond_1
    const-string v2, "tel"

    invoke-static {v2, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2643
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2644
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2645
    if-eqz p2, :cond_0

    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getMessageClassId([B)I
    .locals 2
    .parameter "MessageClass"

    .prologue
    .line 5412
    if-eqz p0, :cond_3

    .line 5413
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 5414
    .local v0, MessageClassString:Ljava/lang/String;
    const-string v1, "personal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5415
    const v1, 0x7f0900c6

    .line 5423
    .end local v0           #MessageClassString:Ljava/lang/String;
    :goto_0
    return v1

    .line 5416
    .restart local v0       #MessageClassString:Ljava/lang/String;
    :cond_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5417
    const v1, 0x7f0900c7

    goto :goto_0

    .line 5418
    :cond_1
    const-string v1, "advertisement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5419
    const v1, 0x7f0900c8

    goto :goto_0

    .line 5420
    :cond_2
    const-string v1, "informational"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5421
    const v1, 0x7f0900c9

    goto :goto_0

    .line 5423
    .end local v0           #MessageClassString:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMessageCountOfThreads(Ljava/util/ArrayList;)I
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 4255
    const/4 v8, 0x0

    .line 4257
    .local v8, count:I
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4259
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4260
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 4263
    .local v7, builder:Landroid/net/Uri$Builder;
    :goto_0
    const-string v1, "simple"

    const-string v3, "true"

    invoke-virtual {v7, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4264
    const-string v1, "formal"

    const-string v3, "true"

    invoke-virtual {v7, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4265
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 4266
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    .line 4268
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4271
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 4272
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 4273
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4275
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 4276
    .local v11, id:J
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 4277
    .local v13, msgCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 4278
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    cmp-long v1, v3, v11

    if-nez v1, :cond_5

    .line 4279
    add-int/2addr v8, v13

    .line 4283
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4285
    .end local v10           #i:I
    .end local v11           #id:J
    .end local v13           #msgCount:I
    :cond_2
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 4290
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v7           #builder:Landroid/net/Uri$Builder;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    return v8

    .line 4262
    :cond_4
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .restart local v7       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 4277
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #i:I
    .restart local v11       #id:J
    .restart local v13       #msgCount:I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IJLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "msgId"
    .parameter "MsgType"

    .prologue
    .line 358
    const/4 v6, 0x0

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IJLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IJLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "msgId"
    .parameter "MsgType"
    .parameter "isGroupSms"
    .parameter "groupSmsAddress"

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    const/4 v7, 0x0

    .line 385
    :goto_0
    return-object v7

    .line 366
    :cond_0
    const-string v7, ""

    .line 367
    .local v7, str:Ljava/lang/String;
    const-string v0, "mms"

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 369
    .local v8, type:I
    packed-switch v8, :pswitch_data_0

    .line 378
    :pswitch_0
    const-string v0, "MessageUtils"

    const-string v1, "No details could be retrieved."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :pswitch_1
    invoke-static {p0, p1, p3, p4, p5}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    goto :goto_0

    .line 375
    :pswitch_2
    invoke-static/range {p0 .. p5}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 376
    goto :goto_0

    .end local v8           #type:I
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-object v4, p5

    move v5, p6

    move-object/from16 v6, p7

    .line 383
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;JLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IJLjava/lang/String;)Ljava/lang/String;
    .locals 35
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "msgId"
    .parameter "MsgType"

    .prologue
    .line 656
    const/16 v30, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 657
    .local v27, type:I
    const/16 v30, 0x82

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 658
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 861
    :goto_0
    return-object v30

    .line 661
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .local v11, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 664
    .local v21, res:Landroid/content/res/Resources;
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 665
    .local v14, id:J
    sget-object v30, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 669
    .local v28, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .local v19, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v30, 0x7f0900b5

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const v30, 0x7f0900b7

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v30, v19

    .line 682
    check-cast v30, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v23

    .line 683
    .local v23, strFrom:Ljava/lang/String;
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    const v30, 0x7f0900b9

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 688
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v7

    .line 689
    .local v7, cache:Lcom/android/mms/util/ContactNameCache;
    if-eqz v7, :cond_3

    .line 690
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :goto_1
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .end local v7           #cache:Lcom/android/mms/util/ContactNameCache;
    .end local v23           #strFrom:Ljava/lang/String;
    :cond_1
    :goto_2
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    const v30, 0x7f0900ba

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 707
    .local v26, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_6

    .line 709
    move-object/from16 v0, v26

    array-length v5, v0

    .line 710
    .local v5, ToCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v5, :cond_7

    .line 713
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v7

    .line 714
    .restart local v7       #cache:Lcom/android/mms/util/ContactNameCache;
    if-eqz v7, :cond_5

    .line 715
    aget-object v30, v26, v13

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :goto_4
    aget-object v30, v26, v13

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    add-int/lit8 v30, v13, 0x1

    move/from16 v0, v30

    if-ge v0, v5, :cond_2

    .line 723
    const-string v30, ";"

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 671
    .end local v5           #ToCount:I
    .end local v7           #cache:Lcom/android/mms/util/ContactNameCache;
    .end local v13           #i:I
    .end local v19           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v26           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v12

    .line 672
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v30, "MessageUtils"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed to load the message: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0900b3

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 693
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    .restart local v7       #cache:Lcom/android/mms/util/ContactNameCache;
    .restart local v19       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v23       #strFrom:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 698
    .end local v7           #cache:Lcom/android/mms/util/ContactNameCache;
    :cond_4
    const v30, 0x7f09006b

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 718
    .end local v23           #strFrom:Ljava/lang/String;
    .restart local v5       #ToCount:I
    .restart local v7       #cache:Lcom/android/mms/util/ContactNameCache;
    .restart local v13       #i:I
    .restart local v26       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    aget-object v30, v26, v13

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 728
    .end local v5           #ToCount:I
    .end local v7           #cache:Lcom/android/mms/util/ContactNameCache;
    .end local v13           #i:I
    :cond_6
    const-string v30, "MessageUtils"

    const-string v31, "recipient list is empty!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Lcom/android/mms/ui/MessageUtils;->setCcDetailMsg(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;Ljava/lang/StringBuilder;)V

    .line 738
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v30, v0

    if-eqz v30, :cond_8

    move-object/from16 v30, v19

    .line 739
    check-cast v30, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    .line 740
    .local v29, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v29, :cond_8

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_8

    .line 741
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    const v30, 0x7f0900bb

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .end local v29           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    const/16 v30, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 751
    .local v20, msgBox:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v30

    if-eqz v30, :cond_9

    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 754
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowingMTMmsbyDeviceTime()Z

    move-result v30

    if-nez v30, :cond_9

    .line 755
    const-string v30, "date2"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 756
    .local v9, date2:J
    const v30, 0x7f0900bd

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 759
    .local v17, label:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v11, v1, v9, v10}, Lcom/android/mms/ui/MessageUtils;->appendDetailMsgTimestamp(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 765
    .end local v9           #date2:J
    .end local v17           #label:Ljava/lang/String;
    :cond_9
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    const/16 v30, 0x3

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 767
    const v30, 0x7f0900be

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :goto_5
    sget-short v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v31, 0xa8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    .line 793
    const-string v30, "MMMdd, yy hh:mm aa"

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v31

    const-wide/16 v33, 0x3e8

    mul-long v31, v31, v33

    invoke-static/range {v30 .. v32}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :goto_6
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->setQueryInfo(Landroid/content/Context;J)V

    .line 802
    invoke-static/range {p5 .. p5}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 803
    .local v16, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_b

    .line 804
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/mms/ui/DeliveryReportItem;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 805
    .local v22, status:Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/mms/ui/DeliveryReportItem;

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    .line 807
    .local v8, date:Ljava/lang/String;
    if-eqz v22, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_a

    const/16 v30, 0x84

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 808
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_b

    .line 811
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const v31, 0x7f09016e

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .end local v8           #date:Ljava/lang/String;
    .end local v22           #status:Ljava/lang/String;
    :cond_b
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    const v30, 0x7f0900bf

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 822
    .local v25, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_c

    .line 823
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v24

    .line 825
    .local v24, subStr:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v30

    add-int p2, p2, v30

    .line 826
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .end local v24           #subStr:Ljava/lang/String;
    :cond_c
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    const v30, 0x7f0900c1

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const/4 v6, 0x0

    .line 838
    .local v6, _msgClass:[B
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v30, v0

    if-eqz v30, :cond_14

    .line 839
    check-cast v19, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v19           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageClass()[B

    move-result-object v6

    .line 844
    :cond_d
    :goto_7
    if-eqz v6, :cond_e

    .line 845
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    const v30, 0x7f0900c5

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getMessageClassId([B)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_e
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    const v30, 0x7f0900c0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    move/from16 v0, p2

    div-int/lit16 v0, v0, 0x400

    move/from16 v30, v0

    if-nez v30, :cond_15

    const/16 v18, 0x1

    .line 857
    .local v18, mSize:I
    :goto_8
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    const-string v30, " KB"

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 768
    .end local v6           #_msgClass:[B
    .end local v16           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v18           #mSize:I
    .end local v25           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v19       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_f
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 771
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v30

    if-eqz v30, :cond_11

    .line 772
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowingMTMmsbyDeviceTime()Z

    move-result v30

    if-eqz v30, :cond_10

    .line 775
    const v30, 0x7f0900bd

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 785
    .restart local v17       #label:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 778
    .end local v17           #label:Ljava/lang/String;
    :cond_10
    const v30, 0x7f0900bc

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #label:Ljava/lang/String;
    goto :goto_9

    .line 783
    .end local v17           #label:Ljava/lang/String;
    :cond_11
    const v30, 0x7f0900bd

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #label:Ljava/lang/String;
    goto :goto_9

    .line 787
    .end local v17           #label:Ljava/lang/String;
    :cond_12
    const v30, 0x7f0900bc

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 795
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringFullEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 840
    .restart local v6       #_msgClass:[B
    .restart local v16       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .restart local v25       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v30, v0

    if-eqz v30, :cond_d

    .line 841
    check-cast v19, Lcom/google/android/mms/pdu/SendReq;

    .end local v19           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v6

    goto/16 :goto_7

    .line 856
    :cond_15
    move/from16 v0, p2

    div-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    goto/16 :goto_8
.end method

.method public static getNGMGroupHelpDialog(Landroid/content/Context;I)Lcom/htc/widget/HtcAlertDialog;
    .locals 5
    .parameter "context"
    .parameter "titleId"

    .prologue
    const/4 v4, 0x0

    .line 5506
    const v2, 0x7f030027

    invoke-static {p0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5507
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0e0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5508
    .local v0, dialog_content:Landroid/widget/TextView;
    const v2, 0x7f090087

    if-eq p1, v2, :cond_0

    const v2, 0x7f090088

    if-eq p1, v2, :cond_0

    const v2, 0x7f090089

    if-ne p1, v2, :cond_2

    .line 5511
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09008b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09008c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09008d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09008e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5515
    const v2, 0x7f09008f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5530
    :cond_1
    :goto_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c015f

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2

    .line 5518
    :cond_2
    const v2, 0x7f090091

    if-ne p1, v2, :cond_1

    .line 5519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090092

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25cf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090093

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25cf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090094

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25cf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090095

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090096

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090097

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090098

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5527
    const v2, 0x7f090099

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;JLjava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "context"
    .parameter "cursor"
    .parameter "msgId"
    .parameter "MsgType"

    .prologue
    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v4, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 393
    .local v13, res:Landroid/content/res/Resources;
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 394
    .local v7, id:J
    sget-object v17, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 398
    .local v16, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v12

    check-cast v12, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .local v12, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v17, 0x7f0900b5

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const v17, 0x7f0900b8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, from:Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    const v17, 0x7f0900b9

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .end local v6           #from:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    const v17, 0x7f090028

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringFullEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->setQueryInfo(Landroid/content/Context;J)V

    .line 426
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 427
    .local v9, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 428
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/ui/DeliveryReportItem;

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    .line 429
    .local v14, status:Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/ui/DeliveryReportItem;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    .line 430
    .local v3, date:Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 431
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 433
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09016e

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .end local v3           #date:Ljava/lang/String;
    .end local v14           #status:Ljava/lang/String;
    :cond_1
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    const v17, 0x7f0900bf

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    .line 443
    .local v15, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_2

    .line 444
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_2
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    const v17, 0x7f0900c5

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->getMessageClassId([B)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    const v17, 0x7f0900c0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v17

    const-wide/16 v19, 0x400

    div-long v17, v17, v19

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_4

    const-wide/16 v10, 0x1

    .line 460
    .local v10, mSize:J
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const v17, 0x7f090029

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v9           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v10           #mSize:J
    .end local v12           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v15           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_2
    return-object v17

    .line 400
    :catch_0
    move-exception v5

    .line 401
    .local v5, e:Lcom/google/android/mms/MmsException;
    const-string v17, "MessageUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to load the message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0900b3

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 413
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #from:Ljava/lang/String;
    .restart local v12       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_3
    const v17, 0x7f09006b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 459
    .end local v6           #from:Ljava/lang/String;
    .restart local v9       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .restart local v15       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v17

    const-wide/16 v19, 0x400

    div-long v10, v17, v19

    goto :goto_1
.end method

.method public static getOpenContactCardIntent(JZ)Landroid/content/Intent;
    .locals 5
    .parameter "personId"
    .parameter "isSim"

    .prologue
    .line 2762
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2764
    .local v1, prefix:Landroid/net/Uri;
    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2765
    .local v2, uri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 2766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.anddroid.contacts.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2769
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2770
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getPartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 10
    .parameter "part"

    .prologue
    .line 2296
    const/4 v1, 0x0

    .line 2297
    .local v1, fileName:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getEncodePartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v1

    .line 2298
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 2359
    .end local v1           #fileName:Ljava/lang/String;
    .local v2, fileName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2301
    .end local v2           #fileName:Ljava/lang/String;
    .restart local v1       #fileName:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 2302
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    .line 2304
    .local v5, location:[B
    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidFileName([B)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2305
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    .line 2306
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidFileName([B)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2307
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 2309
    if-eqz v5, :cond_3

    .line 2310
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 2312
    .local v0, cl:Ljava/lang/String;
    const-string v7, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2314
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2315
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2316
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2320
    .end local v0           #cl:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v5, :cond_4

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidFileName([B)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2321
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    .line 2322
    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidFileName([B)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2324
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2325
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2340
    :cond_6
    :goto_1
    const-string v7, "cid:"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2341
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2342
    .local v4, len:I
    const/4 v3, 0x4

    .line 2343
    .local v3, firstIndex:I
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_7

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3e

    if-ne v7, v8, :cond_7

    .line 2345
    add-int/lit8 v3, v3, 0x1

    .line 2346
    add-int/lit8 v4, v4, -0x1

    .line 2348
    :cond_7
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2349
    const-string v7, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateLocation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    .end local v3           #firstIndex:I
    .end local v4           #len:I
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v1, :cond_9

    const-string v7, "$"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2355
    const-string v7, "$"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_9
    move-object v2, v1

    .line 2359
    .end local v1           #fileName:Ljava/lang/String;
    .restart local v2       #fileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 2329
    .end local v2           #fileName:Ljava/lang/String;
    .restart local v1       #fileName:Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/String;

    .end local v1           #fileName:Ljava/lang/String;
    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v1       #fileName:Ljava/lang/String;
    goto :goto_1

    .line 2332
    :cond_b
    new-instance v1, Ljava/lang/String;

    .end local v1           #fileName:Ljava/lang/String;
    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v1       #fileName:Ljava/lang/String;
    goto :goto_1

    .line 2335
    :cond_c
    new-instance v1, Ljava/lang/String;

    .end local v1           #fileName:Ljava/lang/String;
    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v1       #fileName:Ljava/lang/String;
    goto :goto_1

    .line 2338
    :cond_d
    new-instance v1, Ljava/lang/String;

    .end local v1           #fileName:Ljava/lang/String;
    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v1       #fileName:Ljava/lang/String;
    goto :goto_1
.end method

.method public static declared-synchronized getPartName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 3602
    const-class v11, Lcom/android/mms/ui/MessageUtils;

    monitor-enter v11

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 3603
    .local v9, mPath:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 3604
    .local v8, mMsgID:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3607
    .local v10, partName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/part/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id, _data"

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3610
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3611
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3612
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3613
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3614
    if-eqz v10, :cond_0

    .line 3615
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 3617
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3620
    :cond_1
    monitor-exit v11

    return-object v10

    .line 3602
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #mMsgID:Ljava/lang/String;
    .end local v9           #mPath:Ljava/lang/String;
    .end local v10           #partName:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static getPdu(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 7
    .parameter "context"
    .parameter "msgCursor"

    .prologue
    .line 485
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 486
    .local v1, id:J
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 489
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 492
    :goto_0
    return-object v4

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load genericPdu: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getPersistedMobileDataEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 3976
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public static getPlaytimeFormatString(J)Ljava/lang/String;
    .locals 8
    .parameter "ptime"

    .prologue
    const-wide/16 v6, 0x3c

    .line 3584
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3585
    .local v1, df:Ljava/text/DecimalFormat;
    div-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 3586
    .local v2, min:Ljava/lang/String;
    rem-long v4, p0, v6

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 3587
    .local v3, sec:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3588
    .local v0, _time:Ljava/lang/String;
    return-object v0
.end method

.method public static getPrefSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 4419
    const/4 v1, 0x0

    .line 4420
    .local v1, retstr:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4421
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v4, "pref_key_signature_enabled"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4422
    const-string v4, "pref_key_signature_text_by_user"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4423
    .local v3, signature_modified:Z
    const/4 v2, 0x0

    .line 4424
    .local v2, signatureText:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 4425
    const-string v4, "pref_key_signature_text"

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->getDefaultPrefSignature(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4430
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 4431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4434
    .end local v2           #signatureText:Ljava/lang/String;
    .end local v3           #signature_modified:Z
    :cond_0
    return-object v1

    .line 4428
    .restart local v2       #signatureText:Ljava/lang/String;
    .restart local v3       #signature_modified:Z
    :cond_1
    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->getDefaultPrefSignature(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "address"
    .parameter "bSmsOrMms"

    .prologue
    const/4 v4, 0x0

    .line 5215
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5216
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_forward_sender_info"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5218
    .local v0, bIsNeedForwardSender:Z
    if-eqz v0, :cond_0

    .line 5221
    const v2, 0x7f090355

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5232
    :goto_0
    return-object v2

    .line 5226
    :cond_0
    if-eqz p2, :cond_1

    .line 5228
    const-string v2, ""

    goto :goto_0

    .line 5232
    :cond_1
    const v2, 0x7f090054

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 961
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 962
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 969
    :pswitch_0
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 964
    :pswitch_1
    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 966
    :pswitch_2
    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getQueryLimit(I)Ljava/lang/String;
    .locals 2
    .parameter "limit"

    .prologue
    .line 5252
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gez p0, :cond_1

    .line 5253
    :cond_0
    const-string v0, ""

    .line 5255
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getReadReportRecipientMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .parameter "context"
    .parameter "threadIdList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1753
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-object v5

    .line 1755
    :cond_1
    const-string v4, "m_type = 132 AND read = 0 AND rr = 128"

    .line 1759
    .local v4, selection:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1760
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in (SELECT thread_id FROM contacts WHERE contact_id in (%s))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1765
    .local v10, str:Ljava/lang/String;
    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v6

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1773
    .end local v10           #str:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReadReport: selection> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "m_id"

    aput-object v0, v3, v12

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1779
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1780
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get read report conut> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/4 v8, 0x0

    .line 1784
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 1792
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1767
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1769
    .restart local v10       #str:Ljava/lang/String;
    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v6

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1786
    .end local v10           #str:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    .local v9, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1787
    if-nez v9, :cond_5

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1788
    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    :try_start_2
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1789
    .local v11, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v11}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v8

    .line 1790
    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 1792
    .end local v11           #uri:Landroid/net/Uri;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    .line 1794
    goto/16 :goto_0

    .line 1792
    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move-object v8, v9

    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    :cond_6
    move-object v9, v8

    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public static getRecipientIdStringFromHtcThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "htcthread_id"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1028
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    .line 1030
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1031
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1032
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1035
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1036
    .local v9, ids:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1038
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1042
    .end local v9           #ids:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1045
    :cond_0
    :goto_0
    return-object v9

    .line 1042
    .restart local v9       #ids:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRecipientIdStringFromThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1149
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    .line 1151
    .local v3, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1152
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1153
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1156
    :goto_0
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1160
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1161
    .local v9, ids:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1163
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1167
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1170
    :cond_1
    return-object v9

    .line 1155
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #ids:Ljava/lang/String;
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    goto :goto_0

    .line 1167
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #ids:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "recipientIds"

    .prologue
    .line 983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 985
    .local v0, addressBuf:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 989
    .end local v0           #addressBuf:Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSdCardStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 5927
    sget-boolean v0, Lcom/android/mms/ui/MessageUtils;->HAS_REMOVABLE_STORAGE_SLOT:Z

    if-eqz v0, :cond_0

    .line 5928
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 5930
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSendMMSAttachmentTypeLog(Lcom/google/android/mms/pdu/PduBody;)Ljava/lang/String;
    .locals 25
    .parameter "body"

    .prologue
    .line 5323
    const-string v12, "None"

    .line 5325
    .local v12, none:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 5326
    const-string v18, "None"

    .line 5406
    :goto_0
    return-object v18

    .line 5328
    :cond_0
    const-string v17, "Picture"

    .line 5329
    .local v17, picture:Ljava/lang/String;
    const-string v19, "Video"

    .line 5330
    .local v19, video:Ljava/lang/String;
    const-string v5, "Audio"

    .line 5331
    .local v5, audio:Ljava/lang/String;
    const-string v3, "App_recommendation"

    .line 5332
    .local v3, app_recommendation:Ljava/lang/String;
    const-string v11, "Location"

    .line 5333
    .local v11, location:Ljava/lang/String;
    const-string v6, "Contact"

    .line 5334
    .local v6, contact:Ljava/lang/String;
    const-string v4, "Appointment"

    .line 5335
    .local v4, appointment:Ljava/lang/String;
    const-string v13, "Others"

    .line 5337
    .local v13, others:Ljava/lang/String;
    const-string v18, ""

    .line 5338
    .local v18, type_list:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 5339
    .local v16, partNum:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_c

    .line 5340
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 5341
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    .line 5342
    .local v8, ctBytes:[B
    if-nez v8, :cond_2

    .line 5343
    const-string v22, "MessageUtils"

    const-string v23, "Content-Type of the part may not be null."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5346
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 5347
    .local v7, contentType:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 5350
    :try_start_0
    new-instance v21, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v22

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v7, v1, v2}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 5351
    .local v21, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 5361
    .end local v21           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_3
    :goto_3
    const-string v22, "ULog"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "contentType:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5363
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 5364
    const-string v22, "text/x-vCard"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 5365
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLocationMessage()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 5366
    new-instance v20, Lcom/android/mms/location/VCardPlace;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v22

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/location/VCardPlace;-><init>(Landroid/content/Context;[B)V

    .line 5368
    .local v20, vp:Lcom/android/mms/location/VCardPlace;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/location/VCardPlace;->getPlace()Lcom/android/mms/location/Place;

    move-result-object v14

    .line 5370
    .local v14, p:Lcom/android/mms/location/Place;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/android/mms/location/Place;->getMapName()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_5

    .line 5371
    :cond_4
    const-string v22, "Contact"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5372
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Contact"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5352
    .end local v14           #p:Lcom/android/mms/location/Place;
    .end local v20           #vp:Lcom/android/mms/location/VCardPlace;
    :catch_0
    move-exception v9

    .line 5354
    .local v9, e:Landroid/drm/mobile1/DrmException;
    invoke-virtual {v9}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto :goto_3

    .line 5355
    .end local v9           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v9

    .line 5357
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 5373
    .end local v9           #e:Ljava/io/IOException;
    .restart local v14       #p:Lcom/android/mms/location/Place;
    .restart local v20       #vp:Lcom/android/mms/location/VCardPlace;
    :cond_5
    const-string v22, "Location"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5374
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Location"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5376
    .end local v14           #p:Lcom/android/mms/location/Place;
    .end local v20           #vp:Lcom/android/mms/location/VCardPlace;
    :cond_6
    const-string v22, "Contact"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5377
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Contact"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5378
    :cond_7
    const-string v22, "text/x-vCalendar"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v22, "Appointment"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5379
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Appointment"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5381
    :cond_8
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 5382
    const-string v22, "Picture"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5383
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Picture"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5385
    :cond_9
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 5386
    const-string v22, "Video"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5387
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Video"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5389
    :cond_a
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 5390
    const-string v22, "Audio"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5391
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Audio"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5393
    :cond_b
    const-string v22, "application/smil"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5394
    const-string v22, "Others"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 5395
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Others"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 5400
    .end local v7           #contentType:Ljava/lang/String;
    .end local v8           #ctBytes:[B
    .end local v15           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_c
    const-string v22, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 5401
    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 5405
    :cond_d
    :goto_4
    const-string v22, "ULog"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "attachment_type:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5402
    :cond_e
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 5403
    const-string v18, "None"

    goto :goto_4
.end method

.method public static getShowMeIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 5497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5498
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.showme"

    const-string v3, "com.htc.showme.ui.Search"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5499
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5500
    return-object v0
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;JLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "msgId"
    .parameter "MsgType"
    .parameter "isGroupSms"
    .parameter "groupSmsAddressList"

    .prologue
    .line 865
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v7, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 869
    .local v10, res:Landroid/content/res/Resources;
    const v13, 0x7f0900b5

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    const v13, 0x7f0900b6

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    const/4 v13, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 875
    .local v11, smsType:I
    const/16 v13, 0xa

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    invoke-static {v11}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 877
    const v13, 0x7f0900ba

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :goto_0
    if-eqz p5, :cond_4

    .line 882
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    .line 894
    invoke-static {}, Lcom/android/mms/MmsApp;->isUseDeviceTime()Z

    move-result v13

    if-nez v13, :cond_0

    .line 895
    const-string v13, "date2"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 896
    .local v5, date2:J
    const v13, 0x7f0900bd

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 897
    .local v9, label:Ljava/lang/String;
    invoke-static {p0, v7, v9, v5, v6}, Lcom/android/mms/ui/MessageUtils;->appendDetailMsgTimestamp(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 903
    .end local v5           #date2:J
    .end local v9           #label:Ljava/lang/String;
    :cond_0
    const/16 v13, 0xa

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    const/4 v13, 0x3

    if-ne v11, v13, :cond_5

    .line 905
    const v13, 0x7f0900be

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :goto_2
    const/4 v13, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 932
    .local v2, date:J
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xa8

    if-ne v13, v14, :cond_9

    .line 933
    const-string v13, "MMMdd, yy hh:mm aa"

    invoke-static {v13, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :goto_3
    if-nez p5, :cond_2

    .line 941
    move-wide/from16 v0, p2

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setQueryInfo(Landroid/content/Context;J)V

    .line 942
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 943
    .local v8, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 944
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v12, v13, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    .line 945
    .local v12, status:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v4, v13, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    .line 947
    .local v4, date1:Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    invoke-static {v11}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 948
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 951
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f09016e

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .end local v4           #date1:Ljava/lang/String;
    .end local v8           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v12           #status:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 879
    .end local v2           #date:J
    :cond_3
    const v13, 0x7f0900b9

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 884
    :cond_4
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 906
    :cond_5
    const/4 v13, 0x1

    if-ne v11, v13, :cond_8

    .line 909
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 910
    invoke-static {}, Lcom/android/mms/MmsApp;->isUseDeviceTime()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 913
    const v13, 0x7f0900bd

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 923
    .restart local v9       #label:Ljava/lang/String;
    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 916
    .end local v9           #label:Ljava/lang/String;
    :cond_6
    const v13, 0x7f0900bc

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #label:Ljava/lang/String;
    goto :goto_4

    .line 921
    .end local v9           #label:Ljava/lang/String;
    :cond_7
    const v13, 0x7f0900bd

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #label:Ljava/lang/String;
    goto :goto_4

    .line 925
    .end local v9           #label:Ljava/lang/String;
    :cond_8
    const v13, 0x7f0900bc

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 935
    .restart local v2       #date:J
    :cond_9
    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringFullEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static getThreadIdByAddressesSet(Landroid/content/Context;Ljava/util/Set;)J
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 3524
    .local p1, addresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 3525
    .local v0, threadId:J
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 3531
    .end local v0           #threadId:J
    .local v2, threadId:J
    :goto_0
    return-wide v2

    .line 3527
    .end local v2           #threadId:J
    .restart local v0       #threadId:J
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3528
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getAvailableThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    .line 3529
    const-string v4, "MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-wide v2, v0

    .line 3531
    .end local v0           #threadId:J
    .restart local v2       #threadId:J
    goto :goto_0
.end method

.method public static getThreadIdByContactId(Landroid/content/Context;J)J
    .locals 6
    .parameter "context"
    .parameter "contactId"

    .prologue
    const-wide/16 v1, 0x0

    .line 3535
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getThreadIdByContactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 3544
    :cond_0
    :goto_0
    return-wide v1

    .line 3537
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getContactAddressesSet(Landroid/content/Context;J)Ljava/util/HashSet;

    move-result-object v0

    .line 3539
    .local v0, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    .line 3540
    .local v1, threadId:J
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3541
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getAvailableThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    .line 3542
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "threadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getThreadTypeByHtcThreadId(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "htcThreadId"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1085
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v3, v1

    .line 1087
    .local v3, projection:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    .line 1088
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "htcthreads._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, where:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    sget-object v2, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1094
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1097
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1098
    .local v8, type:I
    if-eqz v7, :cond_2

    .line 1100
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1104
    :cond_1
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1108
    :cond_2
    return v8

    .line 1104
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getThreadTypeByThreadId(Landroid/content/Context;J)I
    .locals 10
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1117
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v3, v1

    .line 1119
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1120
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1123
    :cond_0
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1127
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1128
    .local v9, type:I
    if-eqz v8, :cond_2

    .line 1130
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1134
    :cond_1
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1138
    :cond_2
    return v9

    .line 1134
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getTo(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 18
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 498
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 499
    .local v5, id:J
    sget-object v15, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 504
    .local v14, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 505
    .local v9, number:Ljava/lang/String;
    :try_start_0
    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v16, 0xa9

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 506
    const-string v15, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 507
    .local v11, tm:Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 508
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 512
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    const-string v13, ""

    .line 513
    .local v13, toList:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    .line 514
    .local v10, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    instance-of v15, v10, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-nez v15, :cond_2

    .line 515
    const/4 v13, 0x0

    .line 539
    .end local v10           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v13           #toList:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v13

    .line 517
    .restart local v10       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v13       #toList:Ljava/lang/String;
    :cond_2
    move-object v0, v10

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v8, v0

    .line 518
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 520
    .local v12, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v12, :cond_3

    .line 521
    const/4 v13, 0x0

    goto :goto_0

    .line 523
    :cond_3
    move-object v1, v12

    .local v1, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_6

    aget-object v3, v1, v4

    .line 524
    .local v3, es:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v9}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 525
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 526
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 523
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 530
    .end local v3           #es:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    if-eqz v13, :cond_7

    .line 531
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_1

    .line 532
    const/4 v15, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto :goto_0

    .line 536
    :cond_7
    const/4 v13, 0x0

    goto :goto_0

    .line 537
    .end local v1           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v10           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v12           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #toList:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 538
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v15, "MessageUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to load the message: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private static getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "base"
    .parameter "extension"

    .prologue
    .line 2549
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2551
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2552
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2551
    .restart local v0       #file:Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2554
    :cond_0
    return-object v0
.end method

.method public static getVcardByteArray(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)[B
    .locals 7
    .parameter "mContext"
    .parameter "part"

    .prologue
    .line 2161
    const/4 v3, 0x0

    .line 2163
    .local v3, mvCard:[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v4

    if-nez v4, :cond_2

    .line 2164
    const/4 v1, 0x0

    .line 2166
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2167
    .local v2, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 2168
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v3, v4, [B

    .line 2169
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 2176
    if-eqz v1, :cond_0

    .line 2178
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2188
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v3

    .line 2179
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #mContentResolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 2180
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MessageUtils"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2170
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v0

    .line 2171
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "MessageUtils"

    const-string v5, "Failed to load part data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2176
    if-eqz v1, :cond_0

    .line 2178
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2179
    :catch_2
    move-exception v0

    .line 2180
    const-string v4, "MessageUtils"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2172
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2173
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v4, "MessageUtils"

    const-string v5, "Failed to allocate mvCard memory"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2176
    if-eqz v1, :cond_0

    .line 2178
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 2179
    :catch_4
    move-exception v0

    .line 2180
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MessageUtils"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2176
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 2178
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2181
    :cond_1
    :goto_1
    throw v4

    .line 2179
    :catch_5
    move-exception v0

    .line 2180
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MessageUtils"

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2185
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #is:Ljava/io/InputStream;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    goto :goto_0
.end method

.method public static getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "videoUri"
    .parameter "context"

    .prologue
    .line 1909
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "videoUri"
    .parameter "context"
    .parameter "partName"

    .prologue
    .line 1916
    if-nez p0, :cond_1

    .line 1917
    const-string v4, "MessageUtils"

    const-string v8, "getVideoThumbnail: uri is null, return"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/4 v13, 0x0

    .line 2009
    :cond_0
    :goto_0
    return-object v13

    .line 1920
    :cond_1
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVideoThumbnail> video uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "content://mms"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 1923
    .local v12, bMmsParts:Z
    if-eqz v12, :cond_2

    .line 1925
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->loadThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1926
    .local v13, bmp:Landroid/graphics/Bitmap;
    if-nez v13, :cond_0

    .line 1931
    .end local v13           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    const/16 v17, 0x0

    .line 1932
    .local v17, fd:Ljava/io/FileDescriptor;
    const/16 v18, 0x0

    .line 1935
    .local v18, fis:Ljava/io/FileInputStream;
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "content://media"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1937
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1938
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p0

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1940
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_4

    .line 1942
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1943
    const-string v4, "_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1944
    .local v22, path:Ljava/lang/String;
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1945
    .end local v18           #fis:Ljava/io/FileInputStream;
    .local v19, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-result-object v7

    .end local v17           #fd:Ljava/io/FileDescriptor;
    .local v7, fd:Ljava/io/FileDescriptor;
    move-object/from16 v18, v19

    .line 1950
    .end local v19           #fis:Ljava/io/FileInputStream;
    .end local v22           #path:Ljava/lang/String;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1985
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v14           #c:Landroid/database/Cursor;
    :goto_2
    if-eqz v7, :cond_3

    if-nez v18, :cond_7

    .line 1986
    :cond_3
    const-string v4, "MessageUtils"

    const-string v8, "cannot get file stream...."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1947
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v16

    .line 1948
    .local v16, ex:Ljava/lang/Exception;
    :goto_3
    :try_start_2
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Nothing found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1950
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-object/from16 v7, v17

    .line 1951
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    goto :goto_2

    .line 1950
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v16           #ex:Ljava/lang/Exception;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v4

    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1953
    :cond_4
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v14           #c:Landroid/database/Cursor;
    :goto_5
    move-object/from16 v7, v17

    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    goto :goto_2

    .line 1956
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "content://mms"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1957
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1962
    .restart local v5       #cr:Landroid/content/ContentResolver;
    :try_start_3
    const-string v4, "r"

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 1963
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    :try_start_4
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_9

    .end local v18           #fis:Ljava/io/FileInputStream;
    .restart local v19       #fis:Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .line 1970
    .end local v19           #fis:Ljava/io/FileInputStream;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1964
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :catch_1
    move-exception v15

    move-object/from16 v7, v17

    .line 1965
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    .local v15, e:Ljava/io/FileNotFoundException;
    :goto_6
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1966
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v15           #e:Ljava/io/FileNotFoundException;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :catch_2
    move-exception v21

    move-object/from16 v7, v17

    .line 1967
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    .local v21, ne:Ljava/lang/NullPointerException;
    :goto_7
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fd is null: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1968
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v21           #ne:Ljava/lang/NullPointerException;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :catch_3
    move-exception v23

    move-object/from16 v7, v17

    .line 1969
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    .local v23, se:Ljava/lang/SecurityException;
    :goto_8
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file has security problem: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1976
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v23           #se:Ljava/lang/SecurityException;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :cond_6
    :try_start_5
    new-instance v19, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1977
    .end local v18           #fis:Ljava/io/FileInputStream;
    .restart local v19       #fis:Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v7

    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    move-object/from16 v18, v19

    .line 1982
    .end local v19           #fis:Ljava/io/FileInputStream;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 1978
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :catch_4
    move-exception v15

    .line 1979
    .restart local v15       #e:Ljava/io/FileNotFoundException;
    :goto_9
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v17

    .line 1982
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    goto/16 :goto_2

    .line 1980
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v15           #e:Ljava/io/FileNotFoundException;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    :catch_5
    move-exception v20

    .line 1981
    .local v20, ioe:Ljava/io/IOException;
    :goto_a
    const-string v4, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "io exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1990
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .end local v20           #ioe:Ljava/io/IOException;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    :cond_7
    const/16 v24, 0x0

    .line 1991
    .local v24, thumbnail:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1994
    .local v6, mmr:Landroid/media/MediaMetadataRetriever;
    const-wide/16 v8, 0x0

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->available()I

    move-result v4

    int-to-long v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1995
    const-wide/16 v8, -0x1

    invoke-virtual {v6, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1997
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 2001
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2004
    :goto_b
    if-eqz v12, :cond_8

    .line 2006
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->saveThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v13, v24

    .line 2009
    goto/16 :goto_0

    .line 1998
    :catch_6
    move-exception v16

    .line 1999
    .restart local v16       #ex:Ljava/lang/Exception;
    :try_start_8
    const-string v4, "MessageUtils"

    const-string v8, "Unexpected Exception at capture Video thmubnail:"

    move-object/from16 v0, v16

    invoke-static {v4, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2001
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_b

    .end local v16           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4

    .line 1980
    .end local v6           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v18           #fis:Ljava/io/FileInputStream;
    .end local v24           #thumbnail:Landroid/graphics/Bitmap;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    .restart local v19       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v20

    move-object/from16 v18, v19

    .end local v19           #fis:Ljava/io/FileInputStream;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .line 1978
    .end local v18           #fis:Ljava/io/FileInputStream;
    .restart local v19       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v15

    move-object/from16 v18, v19

    .end local v19           #fis:Ljava/io/FileInputStream;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 1968
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    :catch_9
    move-exception v23

    goto/16 :goto_8

    .line 1966
    :catch_a
    move-exception v21

    goto/16 :goto_7

    .line 1964
    :catch_b
    move-exception v15

    goto/16 :goto_6

    .line 1950
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v18           #fis:Ljava/io/FileInputStream;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #fd:Ljava/io/FileDescriptor;
    .restart local v19       #fis:Ljava/io/FileInputStream;
    .restart local v22       #path:Ljava/lang/String;
    :catchall_2
    move-exception v4

    move-object/from16 v18, v19

    .end local v19           #fis:Ljava/io/FileInputStream;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 1947
    .end local v18           #fis:Ljava/io/FileInputStream;
    .restart local v19       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v16

    move-object/from16 v18, v19

    .end local v19           #fis:Ljava/io/FileInputStream;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v22           #path:Ljava/lang/String;
    :cond_9
    move-object/from16 v7, v17

    .end local v17           #fd:Ljava/io/FileDescriptor;
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    goto/16 :goto_1
.end method

.method public static getViewMyContactCardIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 3549
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/provider/ContactsContract$Contacts$MyContactCard;->getViewOrEditIntent(Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v0

    .line 3552
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method private static getWiFiAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 3848
    const/16 v3, 0x94

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xaf

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3852
    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3853
    .local v0, ConnMgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 3854
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3855
    .local v1, wifi:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3860
    .end local v0           #ConnMgr:Landroid/net/ConnectivityManager;
    .end local v1           #wifi:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getWiMaxAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 3864
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xaf

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v2, :cond_1

    .line 3869
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3870
    .local v0, ConnMgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 3871
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3872
    .local v1, wimax:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3873
    const/4 v2, 0x1

    .line 3877
    .end local v0           #ConnMgr:Landroid/net/ConnectivityManager;
    .end local v1           #wimax:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static handleReadReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "threadIdList"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 1803
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1804
    if-eqz p3, :cond_0

    .line 1805
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1812
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getReadReportRecipientMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1813
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 1814
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1818
    :cond_2
    invoke-static {p0, v0, p2, p3}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static handleReadReport(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter "status"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1828
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;-><init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V

    .line 1832
    .local v2, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/mms/ui/MessageUtils$6;

    invoke-direct {v1, p3}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/lang/Runnable;)V

    .line 1840
    .local v1, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/mms/ui/MessageUtils$7;

    invoke-direct {v0, p3}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/lang/Runnable;)V

    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    move-object v3, p0

    .line 1849
    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1857
    return-void
.end method

.method public static hasDoubleByteChar(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 3838
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3839
    const/4 v0, 0x1

    .line 3841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasInitCmasSupportStatus()Z
    .locals 1

    .prologue
    .line 5826
    sget-boolean v0, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    return v0
.end method

.method public static hasSmilPart(Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 3
    .parameter "retrieveConf"

    .prologue
    .line 5464
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5465
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5466
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 5467
    .local v1, parttype:Ljava/lang/String;
    const-string v2, "application/smil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5468
    const/4 v2, 0x1

    .line 5472
    .end local v0           #i:I
    .end local v1           #parttype:Ljava/lang/String;
    :goto_1
    return v2

    .line 5465
    .restart local v0       #i:I
    .restart local v1       #parttype:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5472
    .end local v0           #i:I
    .end local v1           #parttype:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static hasSmsVcardBody(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 2020
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return v0

    .line 2021
    :cond_1
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "END:VCARD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2022
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasStorageCard()Z
    .locals 2

    .prologue
    .line 1643
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1644
    .local v0, storageState:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1645
    const/4 v1, 0x1

    .line 1647
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static haveEmailContact(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "cr"
    .parameter "emailAddress"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 2615
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2624
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2626
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2627
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2628
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2633
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v5, v8

    .line 2636
    .end local v8           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 2633
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static havePhoneContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 2608
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2611
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "hexString"

    .prologue
    .line 4241
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 4250
    :cond_0
    return-object v0

    .line 4242
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4243
    .local v2, length:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 4245
    .local v0, buffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4246
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 4245
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static importVcard(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 3
    .parameter "mContext"
    .parameter "part"

    .prologue
    .line 2148
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getVcardByteArray(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)[B

    move-result-object v0

    .line 2149
    .local v0, vcard:[B
    if-eqz v0, :cond_0

    .line 2150
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->importVcard(Landroid/content/Context;[B)V

    .line 2157
    :goto_0
    return-void

    .line 2152
    :cond_0
    const v1, 0x7f090152

    const v2, 0x7f090153

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static importVcard(Landroid/content/Context;[B)V
    .locals 2
    .parameter "mContext"
    .parameter "mvCard"

    .prologue
    const/4 v1, 0x0

    .line 2133
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->transferEncoding([B)[B

    move-result-object p1

    .line 2135
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCheckExistedContactBeforeImportVcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/MessageUtils;->importVcardWithCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V

    .line 2141
    :goto_0
    return-void

    .line 2138
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/MessageUtils;->importVcardWithoutCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V

    goto :goto_0
.end method

.method private static importVcardWithCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V
    .locals 2
    .parameter "mContext"
    .parameter "mvCard"
    .parameter "account"

    .prologue
    .line 2047
    new-instance v0, Lcom/android/mms/ui/MessageUtils$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Landroid/content/Context;[BLandroid/accounts/Account;)V

    .line 2054
    .local v0, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/mms/ui/MessageUtils$10;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/mms/ui/MessageUtils$10;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;[BLandroid/accounts/Account;)V

    invoke-static {p0, v1, p1, p2}, Lcom/android/mms/ui/VCardUtils;->binaryVCardToStructure(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    .line 2104
    return-void
.end method

.method private static importVcardWithoutCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V
    .locals 1
    .parameter "mContext"
    .parameter "mvCard"
    .parameter "account"

    .prologue
    .line 2107
    new-instance v0, Lcom/android/mms/ui/MessageUtils$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageUtils$11;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, p1, p2}, Lcom/android/mms/ui/VCardUtils;->binaryVCardToDatabase(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    .line 2125
    return-void
.end method

.method public static initCmasChannelForNewRadioTechlogy(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 5011
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v12, 0x2

    if-ne v9, v12, :cond_4

    .line 5012
    sget-object v9, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v6, v9, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    .line 5013
    .local v6, servNum:I
    if-lez v6, :cond_3

    .line 5014
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    .line 5015
    .local v7, sm:Landroid/telephony/SmsManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 5018
    .local v8, sp:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 5019
    sget-object v9, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v9, v9, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    aget v5, v9, v2

    .line 5021
    .local v5, servId:I
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getCmasPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    .line 5022
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 5023
    invoke-interface {v8, v3, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5024
    .local v0, enable:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 5025
    .local v1, enableCmd:I
    :goto_1
    invoke-virtual {v7, v1, v5}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    move-result v4

    .line 5026
    .local v4, result:I
    const-string v9, "MessageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setBCSMS> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5027
    if-lez v4, :cond_0

    .line 5029
    sget-object v9, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v12, v9, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    if-eqz v0, :cond_2

    move v9, v10

    :goto_2
    aput v9, v12, v2

    .line 5018
    .end local v0           #enable:Z
    .end local v1           #enableCmd:I
    .end local v4           #result:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5024
    .restart local v0       #enable:Z
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .restart local v1       #enableCmd:I
    .restart local v4       #result:I
    :cond_2
    move v9, v11

    .line 5029
    goto :goto_2

    .line 5037
    .end local v0           #enable:Z
    .end local v1           #enableCmd:I
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #result:I
    .end local v5           #servId:I
    .end local v7           #sm:Landroid/telephony/SmsManager;
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {v10}, Lcom/android/mms/MmsApp;->syncCmasServiceTable(Z)V

    .line 5044
    .end local v6           #servNum:I
    :goto_3
    return-void

    .line 5042
    :cond_4
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/mms/ui/MessageUtils;->sendGsmCmasCommands(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static initCmasSupportStatus(Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter "cusSp"

    .prologue
    const/4 v3, 0x1

    .line 5837
    sget-boolean v1, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    if-nez v1, :cond_0

    .line 5838
    if-eqz p0, :cond_0

    .line 5839
    const-string v1, "MSG_General_CMAS_Support"

    const-string v2, "not_define"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5842
    .local v0, stmp:Ljava/lang/String;
    const-string v1, "trueStr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5843
    sput-boolean v3, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    .line 5844
    sput-boolean v3, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    .line 5851
    .end local v0           #stmp:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v1, "Messaging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportCMAS(SIE)/init? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5852
    sget-boolean v1, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    return v1

    .line 5845
    .restart local v0       #stmp:Ljava/lang/String;
    :cond_1
    const-string v1, "falseStr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5846
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    .line 5847
    sput-boolean v3, Lcom/android/mms/ui/MessageUtils;->sbSIESupportCmasSet:Z

    goto :goto_0
.end method

.method protected static isENLocale(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctxRes"

    .prologue
    .line 2790
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2791
    .local v0, localeSystem:Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 2792
    const/4 v2, 0x0

    .line 2799
    :goto_0
    return v2

    .line 2795
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2797
    .local v1, strLanguage:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2799
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 6119
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 6120
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInCoreContentDomain(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)I
    .locals 10
    .parameter "context"
    .parameter "pb"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 6028
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 6029
    .local v3, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 6030
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 6032
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isInCoreContentDomain(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6033
    const-string v5, "MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restricted mode: Cannot attach "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6051
    .end local v0           #contentType:Ljava/lang/String;
    :goto_1
    return v4

    .line 6038
    .restart local v0       #contentType:Ljava/lang/String;
    :cond_0
    const-string v6, "image"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6040
    :try_start_0
    new-instance v6, Lcom/android/mms/model/ImageModel;

    invoke-virtual {p1, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6029
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6041
    :catch_0
    move-exception v1

    .line 6043
    .local v1, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1

    .line 6045
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    .line 6046
    .local v1, e:Lcom/android/mms/ResolutionException;
    const-string v4, "MessageUtils"

    const-string v6, "Restricted mode: Cannot attach oversized image"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 6047
    goto :goto_1

    .line 6051
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isInCoreContentDomain(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 6013
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sCoreContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6014
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restricted mode: Cannot attach "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6015
    const/4 v0, 0x0

    .line 6017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIrregularAddress(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v0, 0x1

    .line 3699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3708
    :cond_0
    :goto_0
    return v0

    .line 3700
    :cond_1
    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3701
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3702
    const-string v1, "*@PRIVATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*@DELIVERY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*@UNKNOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3708
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 1686
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLowStorage(Ljava/lang/String;)Z
    .locals 10
    .parameter "dirpath"

    .prologue
    const/4 v5, 0x1

    .line 2995
    if-nez p0, :cond_1

    .line 3009
    :cond_0
    :goto_0
    return v5

    .line 2996
    :cond_1
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3003
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 3004
    .local v0, availableBlocks:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v3, v6

    .line 3006
    .local v3, totalBlocks:J
    long-to-double v6, v3

    const-wide v8, 0x3fa999999999999aL

    mul-double/2addr v6, v8

    long-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-gtz v6, :cond_0

    .line 3009
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkChecked(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 3968
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPersistedMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 3969
    .local v0, isEnable:Z
    if-nez v0, :cond_0

    .line 3970
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->displayMobileNetworkUncheckWarning(Landroid/content/Context;I)V

    .line 3972
    :cond_0
    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;IZ)Z
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "isNeedNetworkAvailable"

    .prologue
    const/4 v2, 0x1

    .line 3904
    if-eqz p2, :cond_4

    .line 3907
    const/4 v0, 0x0

    .line 3909
    .local v0, available:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3911
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getWiFiAvailable(Landroid/content/Context;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3913
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getWiMaxAvailable(Landroid/content/Context;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3916
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendPendingUnderNoNetwork()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3918
    if-nez v0, :cond_1

    .line 3920
    const/4 v1, 0x0

    .line 3922
    .local v1, str:Ljava/lang/String;
    if-ne p1, v2, :cond_2

    .line 3923
    const v3, 0x7f0900f2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3928
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 3929
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3945
    .end local v0           #available:Z
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    return v0

    .line 3924
    .restart local v0       #available:Z
    .restart local v1       #str:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 3925
    const v3, 0x7f0900fb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3936
    .end local v1           #str:Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_1

    .line 3937
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->displayNetworkUnavailableWarning(Landroid/content/Context;)V

    goto :goto_1

    .end local v0           #available:Z
    :cond_4
    move v0, v2

    .line 3945
    goto :goto_1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 3832
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3833
    .local v0, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isSmsVcard(Ljava/lang/String;)Z
    .locals 1
    .parameter "subject"

    .prologue
    .line 4296
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->hasSmsVcardBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .parameter "i"
    .parameter "c"

    .prologue
    .line 3595
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3596
    .local v0, best:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportCMAS()Z
    .locals 1

    .prologue
    .line 5922
    sget-boolean v0, Lcom/android/mms/ui/MessageUtils;->mbSupportCMAS:Z

    return v0
.end method

.method public static isValidFileName([B)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 4108
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 4109
    .local v0, filename:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->ILLEGAL_CHARACTERS:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4110
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->ILLEGAL_CHARACTERS:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4111
    const/4 v2, 0x0

    .line 4113
    :goto_1
    return v2

    .line 4109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4113
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static launchVcalendarPrompt(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V
    .locals 1
    .parameter "mContext"
    .parameter "part"
    .parameter "msgId"

    .prologue
    .line 2235
    if-nez p1, :cond_0

    .line 2239
    :goto_0
    return-void

    .line 2236
    :cond_0
    const/4 v0, 0x0

    .line 2237
    .local v0, mvCal:[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    .line 2238
    invoke-static {p0, v0, p2, p3}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;[BJ)V

    goto :goto_0
.end method

.method public static launchVcalendarPrompt(Landroid/content/Context;[BJ)V
    .locals 8
    .parameter "mContext"
    .parameter "mvCal"
    .parameter "msgId"

    .prologue
    .line 2194
    if-nez p1, :cond_0

    .line 2232
    :goto_0
    return-void

    .line 2196
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2197
    .local v3, strVCal:Ljava/lang/String;
    const-string v2, "text/x-vcalendar"

    .line 2198
    .local v2, mimetype:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v0, activityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2200
    const-string v5, "ics"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2202
    const-string v5, "MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_VIEW intent sent out IcsImportActivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    sget-object v5, Lcom/android/mms/ui/MixedAttachmentsActivity;->sCurrentActivity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 2205
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2206
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v5

    iput-wide p2, v5, Lcom/android/mms/util/VCardSaveIndicatorCache;->currentSaveVCalendar:J

    .line 2207
    :cond_1
    sget-object v5, Lcom/android/mms/ui/MixedAttachmentsActivity;->sCurrentActivity:Landroid/app/Activity;

    sget v6, Lcom/android/mms/ui/MixedAttachmentsActivity;->VCALENDAR_REQUEST_CODE:I

    invoke-virtual {v5, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2227
    .end local v0           #activityIntent:Landroid/content/Intent;
    .end local v2           #mimetype:Ljava/lang/String;
    .end local v3           #strVCal:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2228
    .local v4, ue:Ljava/io/UnsupportedEncodingException;
    const-string v5, "MessageUtils"

    const-string v6, "UnsupportedEncodingException: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2210
    .end local v4           #ue:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #activityIntent:Landroid/content/Intent;
    .restart local v2       #mimetype:Ljava/lang/String;
    .restart local v3       #strVCal:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/mms/ui/ComposeMessageActivity;->sCurrentActivity:Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 2211
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2212
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v5

    iput-wide p2, v5, Lcom/android/mms/util/VCardSaveIndicatorCache;->currentSaveVCalendar:J

    .line 2213
    :cond_3
    sget-object v5, Lcom/android/mms/ui/ComposeMessageActivity;->sCurrentActivity:Landroid/app/Activity;

    const/16 v6, 0x64

    invoke-virtual {v5, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2229
    .end local v0           #activityIntent:Landroid/content/Intent;
    .end local v2           #mimetype:Ljava/lang/String;
    .end local v3           #strVCal:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2230
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "MessageUtils"

    const-string v6, "no activity(IcsImportActivity) for handling ACTION_VIEW intent"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2215
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .restart local v0       #activityIntent:Landroid/content/Intent;
    .restart local v2       #mimetype:Ljava/lang/String;
    .restart local v3       #strVCal:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v5, Lcom/android/mms/ui/MessageViewActivity;->sCurrentActivity:Landroid/app/Activity;

    if-eqz v5, :cond_6

    .line 2217
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2218
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v5

    iput-wide p2, v5, Lcom/android/mms/util/VCardSaveIndicatorCache;->currentSaveVCalendar:J

    .line 2219
    :cond_5
    sget-object v5, Lcom/android/mms/ui/MessageViewActivity;->sCurrentActivity:Landroid/app/Activity;

    const/16 v6, 0x3d

    invoke-virtual {v5, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2223
    :cond_6
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2224
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public static declared-synchronized loadThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 3645
    const-class v1, Lcom/android/mms/ui/MessageUtils;

    monitor-enter v1

    :try_start_0
    const-string v0, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadThumbnailBitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->loadThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3645
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loadThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "partName"

    .prologue
    .line 3626
    const-class v4, Lcom/android/mms/ui/MessageUtils;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "content://mms/part"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 3628
    .local v0, bMmsParts:Z
    if-eqz v0, :cond_1

    .line 3630
    const-string v1, ""

    .line 3631
    .local v1, mSrc:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 3632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3635
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3636
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3637
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3640
    .end local v1           #mSrc:Ljava/lang/String;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    monitor-exit v4

    return-object v3

    .line 3634
    .restart local v1       #mSrc:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getPartName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 3640
    .end local v1           #mSrc:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3626
    .end local v0           #bMmsParts:Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static markAsRead(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v4, 0x1

    .line 1537
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markAsRead: thread id> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1539
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1540
    sget-object v6, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1541
    .local v6, baseUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    sget-object v6, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 1547
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1553
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 1557
    :cond_1
    return-void

    .line 1549
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "folder"
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5715
    if-nez p1, :cond_0

    .line 5744
    :goto_0
    return v9

    .line 5719
    :cond_0
    const/4 v7, 0x0

    .line 5720
    .local v7, markAsUnread:Z
    const/4 v6, 0x0

    .line 5721
    .local v6, markAsRead:Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 5735
    :goto_1
    :pswitch_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 5736
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5737
    if-eqz v7, :cond_2

    .line 5738
    const-string v0, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5742
    :cond_1
    :goto_2
    const-string v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5744
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_3

    move v0, v8

    :goto_3
    move v9, v0

    goto :goto_0

    .line 5729
    .end local v3           #values:Landroid/content/ContentValues;
    :pswitch_1
    const/4 v6, 0x1

    .line 5730
    goto :goto_1

    .line 5739
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v6, :cond_1

    .line 5740
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    move v0, v9

    .line 5744
    goto :goto_3

    .line 5721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 9
    .parameter "date"

    .prologue
    .line 3716
    const-string v6, "MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    const/4 v3, 0x0

    .line 3718
    .local v3, calendar:Ljava/util/Calendar;
    if-eqz p0, :cond_0

    .line 3721
    :try_start_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 3722
    .local v5, time:Landroid/text/format/Time;
    const-string v6, "-"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3723
    invoke-virtual {v5, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 3739
    :goto_0
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 3740
    .local v1, UTC:Ljava/util/TimeZone;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 3742
    .local v0, Current:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3745
    .local v2, cal:Ljava/util/Calendar;
    iget-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 3746
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3755
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3763
    move-object v3, v2

    .line 3769
    .end local v0           #Current:Ljava/util/TimeZone;
    .end local v1           #UTC:Ljava/util/TimeZone;
    .end local v2           #cal:Ljava/util/Calendar;
    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    :goto_2
    return-object v3

    .line 3726
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    invoke-virtual {v5, p0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3764
    .end local v5           #time:Landroid/text/format/Time;
    :catch_0
    move-exception v4

    .line 3766
    .local v4, e:Landroid/util/TimeFormatException;
    const-string v6, "MessageUtils"

    const-string v7, "parseDate"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3748
    .end local v4           #e:Landroid/util/TimeFormatException;
    .restart local v0       #Current:Ljava/util/TimeZone;
    .restart local v1       #UTC:Ljava/util/TimeZone;
    .restart local v2       #cal:Ljava/util/Calendar;
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_2
    :try_start_1
    iget-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v7, "UTC"

    if-ne v6, v7, :cond_3

    .line 3749
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 3752
    :cond_3
    iget-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static parseVcardInfo(Lcom/android/vcard/VCardEntry;Ljava/lang/StringBuilder;)V
    .locals 8
    .parameter "struct"
    .parameter "builder"

    .prologue
    const/16 v7, 0xa

    .line 5617
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5618
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5620
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v4

    .line 5621
    .local v4, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v4, :cond_2

    .line 5622
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 5623
    .local v0, data:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 5624
    .local v3, label:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 5625
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5627
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5628
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5629
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5631
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5635
    .end local v0           #data:Lcom/android/vcard/VCardEntry$PhoneData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #label:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    .line 5636
    .local v1, emailList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$EmailData;>;"
    if-eqz v1, :cond_4

    .line 5637
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    .line 5638
    .local v0, data:Lcom/android/vcard/VCardEntry$EmailData;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09025d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5640
    .restart local v3       #label:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5641
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 5642
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5644
    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5648
    .end local v0           #data:Lcom/android/vcard/VCardEntry$EmailData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #label:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5649
    return-void
.end method

.method public static queryCallLocation(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 10
    .parameter "cr"
    .parameter "strNumber"
    .parameter "mo"

    .prologue
    const/4 v2, 0x0

    .line 5660
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v9

    .line 5662
    .local v9, international:Z
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 5663
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "mo"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5664
    const-string v0, "international"

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5665
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 5673
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5674
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 5675
    .local v7, city:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5676
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5678
    :cond_0
    if-eqz v8, :cond_1

    .line 5679
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5681
    :cond_1
    return-object v7
.end method

.method public static recordSound(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "requestCode"

    .prologue
    const/4 v4, 0x0

    .line 1218
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 1221
    const/4 v1, 0x0

    .line 1223
    .local v1, name:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1224
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #name:Landroid/content/ComponentName;
    const-string v2, "com.htc.soundrecorder"

    const-string v3, "com.htc.soundrecorder.SoundRecorder"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .restart local v1       #name:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1226
    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1227
    const/4 v1, 0x0

    .line 1232
    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_2

    .line 1233
    const-string v2, "audio/qcelp"

    invoke-static {p0, p1, v2, v1, v4}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Z)V

    .line 1239
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return-void

    .line 1237
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #name:Landroid/content/ComponentName;
    :cond_2
    const-string v2, "audio/amr"

    invoke-static {p0, p1, v2, v1, v4}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Z)V

    goto :goto_0
.end method

.method public static recordSound(Landroid/content/Context;II)V
    .locals 9
    .parameter "context"
    .parameter "requestCode"
    .parameter "SlideSizeLimit"

    .prologue
    const/4 v7, 0x1

    .line 1264
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 1267
    const/4 v3, 0x0

    .line 1269
    .local v3, name:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1270
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    .end local v3           #name:Landroid/content/ComponentName;
    const-string v4, "com.htc.soundrecorder"

    const-string v5, "com.htc.soundrecorder.SoundRecorder"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .restart local v3       #name:Landroid/content/ComponentName;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1272
    invoke-static {v1, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1273
    const/4 v3, 0x0

    .line 1274
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1280
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    if-eqz v3, :cond_4

    .line 1281
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_3

    .line 1284
    const-string v4, "audio/qcelp"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    :goto_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1296
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v4

    sub-int v2, v4, p2

    .line 1297
    .local v2, msgSizeLimit:I
    if-lez v2, :cond_5

    .line 1298
    const-string v4, "RequestedFrom"

    const-string v5, "mms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    const-string v4, "maxfilesize"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    const-string v4, "android.provider.MediaStore.extra.MAX_BYTES"

    int-to-long v5, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1303
    const-string v4, "showfilesize"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1305
    if-eqz v3, :cond_1

    .line 1306
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1309
    :cond_1
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1317
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #msgSizeLimit:I
    .end local v3           #name:Landroid/content/ComponentName;
    :cond_2
    :goto_1
    return-void

    .line 1288
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #name:Landroid/content/ComponentName;
    .restart local p0
    :cond_3
    const-string v4, "audio/amr"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1291
    :cond_4
    const-string v4, "android.provider.MediaStore.RECORD_SOUND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1311
    .restart local v0       #cr:Lcom/android/mms/model/ContentRestriction;
    .restart local v2       #msgSizeLimit:I
    :cond_5
    const v4, 0x7f090051

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090052

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f0900ec

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static recordVideo(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x1

    .line 1242
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 1243
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1248
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v2

    .line 1249
    .local v2, msgSizeLimit:I
    const-string v3, "RequestedFrom"

    const-string v4, "mms"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const-string v3, "maxfilesize"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1251
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1253
    const-string v3, "showfilesize"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1254
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport3DContent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1255
    const-string v3, "no3d_contents"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1257
    :cond_0
    invoke-static {v1, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1258
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1260
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #msgSizeLimit:I
    :cond_1
    return-void
.end method

.method public static recordVideo(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "requestCode"
    .parameter "SlideSizeLimit"

    .prologue
    const/4 v6, 0x1

    .line 1320
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 1321
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1326
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v3

    sub-int v2, v3, p2

    .line 1327
    .local v2, msgSizeLimit:I
    if-lez v2, :cond_2

    .line 1328
    const-string v3, "RequestedFrom"

    const-string v4, "mms"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    const-string v3, "maxfilesize"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1330
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1333
    const-string v3, "showfilesize"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1335
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport3DContent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1336
    const-string v3, "no3d_contents"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1337
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1345
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #msgSizeLimit:I
    :cond_1
    :goto_0
    return-void

    .line 1339
    .restart local v0       #cr:Lcom/android/mms/model/ContentRestriction;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #msgSizeLimit:I
    .restart local p0
    :cond_2
    const v3, 0x7f090051

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090052

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0900ee

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final refineSQLSelectionKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "selection"

    .prologue
    .line 5262
    if-nez p0, :cond_0

    .line 5263
    const/4 v4, 0x0

    .line 5275
    :goto_0
    return-object v4

    .line 5266
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5267
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 5268
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 5269
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5270
    .local v1, c:C
    const/16 v4, 0x27

    if-ne v1, v4, :cond_1

    .line 5271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5273
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5275
    .end local v1           #c:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static saveBitmapAsPart(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1507
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1508
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getImageCompressQuality()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1511
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1513
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v3, "image/jpeg"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, contentId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1516
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1517
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1519
    if-eqz v1, :cond_0

    .line 1521
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1522
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized saveThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "bitmap"

    .prologue
    .line 3687
    const-class v0, Lcom/android/mms/ui/MessageUtils;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/android/mms/ui/MessageUtils;->saveThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3688
    monitor-exit v0

    return-void

    .line 3687
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized saveThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "bitmap"
    .parameter "partName"

    .prologue
    .line 3652
    const-class v8, Lcom/android/mms/ui/MessageUtils;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "content://mms/part"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3654
    .local v0, bMmsParts:Z
    if-eqz v0, :cond_0

    .line 3656
    const/4 v3, 0x0

    .line 3657
    .local v3, mPartName:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 3658
    move-object v3, p3

    .line 3662
    :goto_0
    if-nez v3, :cond_2

    .line 3684
    .end local v3           #mPartName:Ljava/lang/String;
    :cond_0
    :goto_1
    monitor-exit v8

    return-void

    .line 3660
    .restart local v3       #mPartName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getPartName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3664
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3667
    .local v4, mSrc:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3668
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3669
    const-string v7, "MessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create message thumbnail cache file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3670
    const/4 v5, 0x0

    .line 3672
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3673
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p2, v7, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3674
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3675
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 3676
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3652
    .end local v0           #bMmsParts:Z
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #mPartName:Ljava/lang/String;
    .end local v4           #mSrc:Ljava/lang/String;
    .end local v5           #os:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 3681
    .restart local v0       #bMmsParts:Z
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #mPartName:Ljava/lang/String;
    .restart local v4       #mSrc:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v7, "MessageUtils"

    const-string v9, "Message thumbnail cache file exist: "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 3675
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static selectAudio(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1192
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1193
    const-string v0, "audio/*"

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.music"

    const-string v3, "com.htc.music.MusicPicker"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Z)V

    .line 1196
    :cond_0
    return-void
.end method

.method public static selectFootprint(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.locationpicker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1362
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ShowMenuItems"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1363
    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v1, 0x47

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1365
    :cond_0
    return-void
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1356
    const-string v0, "image/*"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Z)V

    .line 1358
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Z)V
    .locals 8
    .parameter "context"
    .parameter "requestCode"
    .parameter "contentType"
    .parameter "component"
    .parameter "isAlbumPicker"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1377
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 1381
    if-eqz p4, :cond_4

    .line 1382
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    :goto_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1398
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v2

    .line 1399
    .local v2, msgSizeLimit:I
    const-string v3, "RequestedFrom"

    const-string v4, "mms"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    const-string v3, "maxfilesize"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1401
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1403
    const-string v3, "showfilesize"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1406
    const-string v3, "get_drm_sharable"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1407
    const-string v3, "showDrm"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1410
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportAudioOgg()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1411
    const-string v3, "showOgg"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    :cond_0
    if-eqz p3, :cond_1

    .line 1416
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1418
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport3DContent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1419
    const-string v3, "force_2d_result"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1420
    :cond_2
    invoke-static {v1, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1421
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1423
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #msgSizeLimit:I
    :cond_3
    return-void

    .line 1386
    .restart local p0
    :cond_4
    if-eqz p3, :cond_5

    .line 1387
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1391
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static selectNGMLocation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1438
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->showNGMLocationSelector(Landroid/content/Context;I)V

    .line 1441
    :cond_0
    return-void
.end method

.method public static selectPostalFromPeople(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1370
    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v1, 0x48

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1373
    :cond_0
    return-void
.end method

.method public static selectVCal(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1472
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1473
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_CALENDAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    const-string v2, "vCalendar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1477
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1478
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1479
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "MessageUtils"

    const-string v3, "catch exception, activity not Found: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static selectVCard(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1428
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1435
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1350
    const-string v0, "video/*"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;Z)V

    .line 1352
    return-void
.end method

.method public static sendGsmCmasCommands(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "chList"

    .prologue
    .line 4999
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendGsmCmasCommands> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5000
    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getGsmCmasChannelList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5001
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.action.CMAS_LIST_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5002
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cmas_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5003
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send cmas ch> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5005
    return-void
.end method

.method public static sendMMSReceiveLog(Z)V
    .locals 3
    .parameter "hasSubject"

    .prologue
    .line 5280
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 5281
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5282
    const-string v1, "message_receive"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5283
    const-string v1, "type"

    const-string v2, "MMS"

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5284
    if-eqz p0, :cond_0

    .line 5285
    const-string v1, "subject"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5288
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5289
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 5290
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 5291
    return-void

    .line 5287
    :cond_0
    const-string v1, "subject"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    goto :goto_0
.end method

.method public static sendMMSSentLog(ZLcom/google/android/mms/pdu/PduBody;I)V
    .locals 5
    .parameter "hasSubject"
    .parameter "body"
    .parameter "recipient"

    .prologue
    .line 5296
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 5297
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5298
    const-string v2, "message_send"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5299
    const-string v2, "type"

    const-string v3, "MMS"

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5300
    if-eqz p0, :cond_1

    .line 5301
    const-string v2, "subject"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5307
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5308
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getSendMMSAttachmentTypeLog(Lcom/google/android/mms/pdu/PduBody;)Ljava/lang/String;

    move-result-object v0

    .line 5309
    .local v0, type_list:Ljava/lang/String;
    const-string v2, "attachment_type"

    invoke-virtual {v1, v2, v0}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5310
    const-string v2, "ULog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipient_cnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5311
    const-string v2, "recipient_cnt"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5315
    .end local v0           #type_list:Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5316
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 5317
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 5318
    return-void

    .line 5304
    :cond_1
    const-string v2, "subject"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    goto :goto_0
.end method

.method public static sendMsgCountLog(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 5073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 5074
    .local v8, currentTime:Ljava/lang/Long;
    const/4 v13, 0x0

    .line 5075
    .local v13, sp:Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    .line 5077
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    sget-wide v0, Lcom/android/mms/ui/MessageUtils;->mSendMsgCountTime:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 5078
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 5079
    const-string v0, "pref_key_ux_log_collection_time"

    invoke-interface {v13, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/mms/ui/MessageUtils;->mSendMsgCountTime:J

    .line 5082
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v3, Lcom/android/mms/ui/MessageUtils;->mSendMsgCountTime:J

    sub-long v11, v0, v3

    .line 5083
    .local v11, period:J
    const-string v0, "ULog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    const-string v0, "ULog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastSendMsgCountTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Lcom/android/mms/ui/MessageUtils;->mSendMsgCountTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    const-string v0, "ULog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "period: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v11, v0

    if-ltz v0, :cond_2

    .line 5090
    if-nez v13, :cond_1

    .line 5091
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 5092
    :cond_1
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 5093
    const-string v0, "pref_key_ux_log_collection_time"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v10, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5094
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5098
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/android/mms/ui/MessageUtils;->mSendMsgCountTime:J

    .line 5100
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mWorkingQueryHandler:Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;

    const/16 v1, 0x4e24

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v5, "type!=3 AND htc_category=0"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5103
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mWorkingQueryHandler:Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;

    const/16 v1, 0x4e25

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v5, "htc_category=0 AND msg_box!=3 AND (m_type=132 OR m_type=130 OR m_type=128)"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils$WorkingQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5106
    :cond_2
    return-void

    .line 5095
    :catch_0
    move-exception v9

    .line 5096
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "ULog"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sendSMSReceiveLog()V
    .locals 4

    .prologue
    .line 5135
    const-string v1, "ULog"

    const-string v2, "SMS Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 5139
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "message_receive"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "SMS"

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5144
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 5146
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 5147
    return-void
.end method

.method public static sendSMSSentLog(I)V
    .locals 4
    .parameter "receipient"

    .prologue
    .line 5110
    const-string v1, "ULog"

    const-string v2, "SMS Send"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 5114
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "message_send"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "SMS"

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5120
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5121
    const-string v1, "ULog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipient_cnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    const-string v1, "recipient_cnt"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 5127
    :cond_0
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 5129
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 5130
    return-void
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 3
    .parameter "context"
    .parameter "iv"
    .parameter "nSrcID"

    .prologue
    .line 3281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3282
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 3284
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3285
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 3287
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/MessageUtils;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 3291
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "context"
    .parameter "iv"
    .parameter "bmSrc"

    .prologue
    .line 3294
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3295
    .local v0, bmCenterCropThumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013f

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3296
    .local v1, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3297
    if-eqz v0, :cond_0

    .line 3299
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3300
    const/4 v0, 0x0

    .line 3302
    :cond_0
    const/4 v1, 0x0

    .line 3303
    return-void
.end method

.method public static setCBsetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "customize_Chliststr"
    .parameter "customize_Chnameliststr"
    .parameter "customize_Chreadonlyliststr"
    .parameter "readonly_Chliststr"
    .parameter "readonly_Chnameliststr"

    .prologue
    .line 5756
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessagesCustomizeService send intent to phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessagesCustomizeService save channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5761
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 5762
    const-string v3, "com.android.mms.customizationBySIM"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5764
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5765
    .local v0, bysimeditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_cellbroadcast_channel_key"

    invoke-interface {v0, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5766
    const-string v3, "pref_cellbroadcast_channelname_key"

    invoke-interface {v0, v3, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5775
    .end local v0           #bysimeditor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.mms.action.CB_LIST_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5777
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put extra liststr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    const-string v3, "cb_list"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5779
    const-string v3, "cbname_list"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5780
    const-string v3, "cbreadonly_list"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5781
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5784
    invoke-static {}, Lcom/android/mms/MmsApp;->initSimOperatorData()V

    .line 5786
    return-void
.end method

.method private static setCcDetailMsg(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "context"
    .parameter "msg"
    .parameter "details"

    .prologue
    const/4 v3, 0x2

    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    instance-of v2, p1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_2

    .line 635
    check-cast p1, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 640
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 642
    array-length v2, v1

    if-le v2, v3, :cond_3

    .line 643
    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageUtils;->getCcPreViewList([Lcom/google/android/mms/pdu/EncodedStringValue;I)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, ccs:Ljava/lang/String;
    :goto_1
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    const v2, 0x7f0901c5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .end local v0           #ccs:Ljava/lang/String;
    :cond_1
    return-void

    .line 636
    .restart local p1
    :cond_2
    instance-of v2, p1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v2, :cond_0

    .line 637
    check-cast p1, Lcom/google/android/mms/pdu/SendReq;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    goto :goto_0

    .line 645
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ccs:Ljava/lang/String;
    goto :goto_1
.end method

.method public static setRoundedCorner(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 479
    return-void
.end method

.method public static showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "context"
    .parameter "title"
    .parameter "msg"
    .parameter "rConfirm"
    .parameter "rCancel"

    .prologue
    const v6, 0x20c0164

    .line 1594
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020148

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1599
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v3, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v3, p3}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Ljava/lang/Runnable;)V

    .line 1605
    .local v3, onConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;
    const v4, 0x7f09006e

    invoke-virtual {v0, v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1608
    if-eqz p4, :cond_0

    .line 1609
    new-instance v1, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Ljava/lang/Runnable;)V

    .line 1615
    .local v1, onCancelClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 1621
    .local v2, onCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-virtual {v0, v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1627
    .end local v1           #onCancelClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #onCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1628
    return-void

    .line 1624
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1632
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1639
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1490
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1494
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0200d1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1495
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1496
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1497
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1499
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1500
    .local v1, dlg:Landroid/app/Dialog;
    instance-of v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v2, :cond_0

    .line 1501
    check-cast p0, Lcom/android/mms/ui/ComposeMessageActivity;

    .end local p0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1503
    :cond_0
    return-void
.end method

.method private static showNGMLocationSelector(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1443
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1444
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0900e4

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1446
    const/4 v0, 0x0

    .line 1459
    .local v0, adapter:Lcom/android/mms/ui/LocationAttachAdapter;
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1460
    new-instance v0, Lcom/android/mms/ui/LocationAttachAdapter;

    .end local v0           #adapter:Lcom/android/mms/ui/LocationAttachAdapter;
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/mms/ui/LocationAttachAdapter;-><init>(Landroid/app/Activity;)V

    .line 1461
    .restart local v0       #adapter:Lcom/android/mms/ui/LocationAttachAdapter;
    new-instance v3, Lcom/android/mms/ui/MessageUtils$1OnSubDlgClickListener;

    invoke-direct {v3, v0}, Lcom/android/mms/ui/MessageUtils$1OnSubDlgClickListener;-><init>(Lcom/android/mms/ui/LocationAttachAdapter;)V

    invoke-virtual {v1, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1462
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 1463
    .local v2, dlg:Landroid/app/Dialog;
    instance-of v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v3, :cond_0

    .line 1464
    check-cast p0, Lcom/android/mms/ui/ComposeMessageActivity;

    .end local p0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1469
    .end local v2           #dlg:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method public static showReadReportDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "context"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 1699
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1700
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1701
    const v2, 0x7f0900ef

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1702
    const v2, 0x7f0900f0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1703
    const v2, 0x20c015f

    invoke-virtual {v0, v2, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1704
    const v2, 0x20c0164

    invoke-virtual {v0, v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1705
    invoke-virtual {v0, p3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1707
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1708
    .local v1, dlg:Landroid/app/Dialog;
    instance-of v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v2, :cond_0

    .line 1709
    check-cast p0, Lcom/android/mms/ui/ComposeMessageActivity;

    .end local p0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1711
    :cond_0
    return-void
.end method

.method public static showResizeConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "context"
    .parameter "resizeListener"
    .parameter "cancel"

    .prologue
    const v5, 0x20c0164

    .line 1562
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020148

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09004c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09004d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09006e

    invoke-virtual {v3, v4, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1568
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-nez p2, :cond_0

    .line 1569
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1589
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1590
    return-void

    .line 1572
    :cond_0
    new-instance v2, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v2, p2}, Lcom/android/mms/ui/MessageUtils$1;-><init>(Ljava/lang/Runnable;)V

    .line 1578
    .local v2, clickCancel:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/mms/ui/MessageUtils$2;

    invoke-direct {v1, p2}, Lcom/android/mms/ui/MessageUtils$2;-><init>(Ljava/lang/Runnable;)V

    .line 1584
    .local v1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-virtual {v0, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method public static showRoamingDownloadConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "okListener"
    .parameter "cancelListener"

    .prologue
    .line 1668
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c00e3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902ca

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0164

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1675
    return-void
.end method

.method public static showSaveDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "saveListener"
    .parameter "dontSaveListener"

    .prologue
    .line 1655
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0164

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1662
    return-void
.end method

.method public static takeCamera(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1199
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, intent:Landroid/content/Intent;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 1203
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.htc.snapbooth.action.LAUNCH_SNAPBOOTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "RequestedFrom"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport3DContent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1211
    const-string v1, "no3d_contents"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1212
    :cond_0
    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1215
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 1207
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local p0
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "RequestedFrom"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static toByte(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 4228
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 4230
    :goto_0
    return v0

    .line 4229
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 4230
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 4232
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8
    .parameter "array"

    .prologue
    .line 4213
    array-length v5, p0

    .line 4214
    .local v5, length:I
    mul-int/lit8 v6, v5, 0x2

    new-array v1, v6, [C

    .line 4216
    .local v1, buf:[C
    const/4 v2, 0x0

    .line 4217
    .local v2, bufIndex:I
    const/4 v4, 0x0

    .local v4, i:I
    move v3, v2

    .end local v2           #bufIndex:I
    .local v3, bufIndex:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 4219
    aget-byte v0, p0, v4

    .line 4220
    .local v0, b:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #bufIndex:I
    .restart local v2       #bufIndex:I
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 4221
    add-int/lit8 v3, v2, 0x1

    .end local v2           #bufIndex:I
    .restart local v3       #bufIndex:I
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->HEX_DIGITS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    .line 4217
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4224
    .end local v0           #b:B
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static transferEncoding([B)[B
    .locals 4
    .parameter "encodeData"

    .prologue
    .line 2029
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 2040
    :cond_0
    :goto_0
    return-object v1

    .line 2030
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 2031
    .local v2, strData:Ljava/lang/String;
    const-string v3, "BEGIN:VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2032
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 2033
    .local v1, decodedData:[B
    if-eqz v1, :cond_2

    .line 2034
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 2035
    .local v0, dStr:Ljava/lang/String;
    const-string v3, "BEGIN:VCARD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0           #dStr:Ljava/lang/String;
    .end local v1           #decodedData:[B
    :cond_2
    move-object v1, p0

    .line 2040
    goto :goto_0
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "addr"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 6099
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 6114
    .end local p0
    .local v3, octets:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6100
    .end local v3           #octets:[Ljava/lang/String;
    .restart local p0
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6101
    .restart local v3       #octets:[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v7, :cond_0

    .line 6102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6103
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 6104
    .local v4, result:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 6106
    :try_start_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v6, :cond_0

    .line 6107
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6111
    if-ge v2, v6, :cond_2

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6104
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6108
    :catch_0
    move-exception v1

    .line 6109
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 6113
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 6114
    goto :goto_0
.end method

.method public static updateMessageDate2(Landroid/content/Context;Landroid/net/Uri;J)I
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "time"

    .prologue
    const/4 v4, 0x0

    .line 5937
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 5938
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "date2"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5939
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
