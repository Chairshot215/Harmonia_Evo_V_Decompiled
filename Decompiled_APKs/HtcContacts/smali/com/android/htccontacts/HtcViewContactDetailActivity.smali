.class public Lcom/android/htccontacts/HtcViewContactDetailActivity;
.super Lcom/android/htccontacts/HtcViewContactDetail;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;,
        Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;,
        Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;,
        Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;,
        Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;,
        Lcom/android/htccontacts/HtcViewContactDetailActivity$SendContactMethodOnClickListener;,
        Lcom/android/htccontacts/HtcViewContactDetailActivity$QueryIPDialHandler;,
        Lcom/android/htccontacts/HtcViewContactDetailActivity$StatusQuery;
    }
.end annotation


# static fields
.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final CONTEXT_MENU_ACTION:I = 0x3

.field private static final CONTEXT_MENU_ADD_SPEED_DIAL:I = 0x6

.field private static final CONTEXT_MENU_EDIT_MAIL:I = 0x2

.field private static final CONTEXT_MENU_EDIT_PHONE:I = 0x1

.field private static final CONTEXT_MENU_IP_DIAL:I = 0x8

.field private static final CONTEXT_MENU_SAVE_TO_SIM:I = 0x7

.field private static final CONTEXT_MENU_SEND_MESSAGE:I = 0x4

.field private static final CONTEXT_MENU_SET_DEFAULT:I = 0x5

.field private static final CONTEXT_MENU_VT_CALL:I = 0x9

.field private static final CompositeSendMsgMapKey_Number:Ljava/lang/String; = "number"

.field private static final CompositeSendMsgMapKey_Type:Ljava/lang/String; = "type"

.field private static final CompositeSendMsgMapKey_TypeLabel:Ljava/lang/String; = "type_label"

.field private static final DEBUG:Z = false

.field private static final DIALOG_EVENT:I = 0xea60

.field private static final DIALOG_PROGRESS:I = 0x1010

.field private static final DIALOG_SEND_TO_VOICEMAIL:I = 0x1000

.field private static final DIALOG_VIP:I = 0x1001

.field public static final IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field private static final IP_DIAL_QUERY_TOKEN:I = 0x7da

.field private static final MENU_ADD_SPEED_DIAL:I = 0x7

.field private static final MENU_DELETE:I = 0x3

.field private static final MENU_LINK:I = 0x4

.field private static final MENU_PRINT:I = 0x9

.field private static final MENU_SAVE_TO_SIM:I = 0x6

.field private static final MENU_SENDCONTACT_BY_MMS:I = 0x5

.field private static final MENU_SET_WIDGET_ACTION:I = 0x8

.field private static final MailDataMapKey_Data_Id:Ljava/lang/String; = "data_id"

.field private static final MailDataMapKey_Is_Facebook:Ljava/lang/String; = "is_facebook"

.field private static final MailDataMapKey_Mail:Ljava/lang/String; = "mail_mail"

.field private static final PhoneDataMapKey_Data_Id:Ljava/lang/String; = "data_id"

.field private static final PhoneDataMapKey_Is_Facebook:Ljava/lang/String; = "is_facebook"

.field private static final PhoneDataMapKey_Number:Ljava/lang/String; = "phone_number"

.field private static final PhoneDataMapKey_Type:Ljava/lang/String; = "phone_type"

.field private static final QUICK_EDIT_SIM_MAIL:I = 0x38

.field private static final QUICK_EDIT_SIM_PHONE:I = 0x37

.field private static final REQUEST_EDITED_RAW_CONTACT:I = 0x1f4

.field private static final REQUEST_QUICK_EDIT_MAIL:I = 0x1f7

.field private static final REQUEST_QUICK_EDIT_PHONE:I = 0x1f6

.field private static final RINGTONE_PICKED:I = 0x1f5

.field private static final SAVE_TO_SIM_RESULT_CODE_EMAIL_FULL:I = 0x5

.field private static final SAVE_TO_SIM_RESULT_CODE_EXISTED:I = 0x2

.field private static final SAVE_TO_SIM_RESULT_CODE_OK:I = 0x1

.field private static final SAVE_TO_SIM_RESULT_CODE_SIM_ERROR:I = 0x4

.field private static final SAVE_TO_SIM_RESULT_CODE_SIM_FULL:I = 0x3

.field private static final SIM_NAME_LIMIT:I = 0xe

.field private static final SIM_NAME_NUMBER_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "HtcViewContactDetailActivity"

.field public static final TOKEN_QUERY_STATUSES:I = 0x3e8

.field private static final sDefaultMaxAlphaTagLength:I = 0xf


# instance fields
.field private final UPDATE_TOKEN_RINGTONE:I

.field private final UPDATE_TOKEN_SEND_VOICEMAIL:I

.field volatile bForceReBuildEntry:Z

.field private mAllMailData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllPhoneData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompositeSendMsgDialogData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCustomNumberLabel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtStatuses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupCursor:Landroid/database/Cursor;

.field private mHasEntities:Z

.field private mHasStatuses:Z

.field private mIpDialList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsDirty:Z

.field private mIsSendToVoiceMail:Z

.field private mNoFreeSIMEmailFields:Z

.field private mObjectLock:Ljava/lang/Object;

.field private mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

.field mQueryIPDialHandler:Lcom/android/htccontacts/HtcViewContactDetailActivity$QueryIPDialHandler;

.field public mRingtonePath:Ljava/lang/String;

.field private mStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htccontacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateHandler:Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;

.field private mbCanAddToFavorite:Z

.field private mbDestroy:Z

.field private mbFirstTimeBuildEntriesDone:Z

.field private mbInGroup:Z

.field private mmapRawContactId_Version:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private saveToSimContactProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "content://contacts/simsearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->SIM_NAME_NUMBER_CONTENT_URI:Landroid/net/Uri;

    .line 242
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetail;-><init>()V

    .line 154
    iput v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->UPDATE_TOKEN_RINGTONE:I

    .line 155
    iput v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->UPDATE_TOKEN_SEND_VOICEMAIL:I

    .line 161
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbInGroup:Z

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mmapRawContactId_Version:Ljava/util/HashMap;

    .line 165
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbFirstTimeBuildEntriesDone:Z

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCustomNumberLabel:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    .line 187
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->bForceReBuildEntry:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mHasEntities:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mHasStatuses:Z

    .line 210
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mStatuses:Ljava/util/HashMap;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mObjectLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    .line 4886
    return-void
.end method

.method private IsDuplicateYomiganaEntries(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter "yomiFirstName"
    .parameter "yomiLastName"
    .parameter "firstName"
    .parameter "lastName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2096
    const/4 v1, 0x0

    .line 2097
    .local v1, isDuplicated:Z
    const/4 v6, 0x0

    .line 2103
    .local v6, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-static {p2, p3, v8}, Lcom/android/htccontacts/util/NameUtuls;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2104
    .local v5, strYomiGivenNameFirst:Ljava/lang/String;
    invoke-static {p2, p3, v7}, Lcom/android/htccontacts/util/NameUtuls;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 2105
    .local v4, strYomiFamilyNameFirst:Ljava/lang/String;
    invoke-static {p4, p5, v8}, Lcom/android/htccontacts/util/NameUtuls;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2106
    .local v3, strGivenNameFirst:Ljava/lang/String;
    invoke-static {p4, p5, v7}, Lcom/android/htccontacts/util/NameUtuls;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2107
    .local v2, strFamilyNameFirst:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index1:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 2109
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v6, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 2110
    .restart local v6       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v7, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2112
    :cond_0
    iget-object v7, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2114
    :cond_1
    const/4 v1, 0x1

    .line 2119
    :cond_2
    return v1

    .line 2107
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->considerBindData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateSendVoicemail()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateVIP()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/HtcViewContactDetailActivity;I)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getCompositeSendMsgRunnable(I)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/HtcViewContactDetailActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateDefaultCompositeSendMsgNumber(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/HtcViewContactDetailActivity;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateDefaultCompositeSendMsgNumber(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/HtcViewContactDetailActivity;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->setPrimaryNumber(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/HtcViewContactDetailActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->showSaveToSIMInformationDialog(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mNoFreeSIMEmailFields:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/htccontacts/HtcViewContactDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mNoFreeSIMEmailFields:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->createCompositeSendMsgDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->readStatuses(Landroid/database/Cursor;)V

    return-void
.end method

.method private addInfoIntoPhoneIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 5
    .parameter "intent"
    .parameter "number"
    .parameter "numType"

    .prologue
    const/4 v4, 0x1

    .line 3417
    if-eqz p1, :cond_1

    .line 3418
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 3419
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, "personId"

    iget-wide v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3420
    const-string v1, "number"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3421
    const-string v1, "name"

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3422
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->hasPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3423
    const-string v1, "hasPhoto"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3425
    :cond_0
    const-string v1, "numberType"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3427
    const-string v1, "fromDialer"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3429
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_1
    return-void
.end method

.method private addSkypeInfoIntoPhoneIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "number"

    .prologue
    .line 3432
    if-eqz p1, :cond_0

    .line 3433
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3434
    invoke-static {p2}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3436
    :cond_0
    return-void
.end method

.method public static buildActionString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "kind"
    .parameter "values"
    .parameter "lowerCase"

    .prologue
    const/4 v1, 0x0

    .line 3319
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 3326
    :cond_0
    :goto_0
    return-object v1

    .line 3322
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    invoke-interface {v2, p0, p2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3323
    .local v0, actionHeader:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 3326
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildAllMailData(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3806
    .local p1, mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3807
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 3808
    .local v2, ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3809
    .local v1, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "data_id"

    iget-wide v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    const-string v3, "mail_mail"

    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3811
    const-string v3, "is_facebook"

    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3812
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3814
    .end local v1           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_0
    return-void
.end method

.method private buildAllPhoneData(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3795
    .local p1, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3796
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 3797
    .local v2, ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3798
    .local v1, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "data_id"

    iget-wide v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3799
    const-string v3, "phone_type"

    iget v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3800
    const-string v3, "phone_number"

    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3801
    const-string v3, "is_facebook"

    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3802
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3804
    .end local v1           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_0
    return-void
.end method

.method private buildCompositeSendMessageEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v7, 0x0

    .line 3338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v3, v7

    .line 3390
    :cond_1
    :goto_0
    return-object v3

    .line 3339
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v6, v8, :cond_3

    .line 3340
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildSendMessageEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 3342
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3343
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v4, 0x0

    .line 3344
    .local v4, sDefaultNumber:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3346
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 3347
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    iget-boolean v6, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->defaultMsgNumberOfPhoneType:Z

    if-eqz v6, :cond_7

    .line 3348
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    iget-object v4, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3352
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3354
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    .line 3355
    const/4 v8, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    iget v6, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    if-ne v8, v6, :cond_8

    .line 3356
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    iget-object v4, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3361
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3363
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    iget-object v4, v6, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3365
    :cond_6
    new-instance v5, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v5}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 3366
    .local v5, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v5, :cond_1

    .line 3367
    const v6, 0x7f020078

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 3368
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getMoreRestButtonResoureceId(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 3369
    const v6, 0x7f0a0173

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 3370
    iput-object v4, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3371
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    const-string v9, "smsto"

    invoke-static {v9, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, v5, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 3374
    const/16 v6, 0x1b

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 3375
    new-instance v2, Lcom/android/htccontacts/HtcViewContactDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$3;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 3387
    .local v2, onClickListenerSendMsg:Landroid/view/View$OnClickListener;
    iput-object v2, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->data:Ljava/lang/Object;

    .line 3388
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3346
    .end local v2           #onClickListenerSendMsg:Landroid/view/View$OnClickListener;
    .end local v5           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3354
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private buildCompositeSendMsgDialogData(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3843
    .local p1, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3844
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 3845
    .local v4, ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3846
    .local v1, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    if-nez v5, :cond_0

    .line 3847
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCustomNumberLabel:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3849
    .local v3, sKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCustomNumberLabel:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3850
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCustomNumberLabel:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3851
    .local v2, sCustomLabel:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3852
    const-string v5, "type_label"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3857
    .end local v2           #sCustomLabel:Ljava/lang/String;
    .end local v3           #sKey:Ljava/lang/String;
    :cond_0
    const-string v5, "type_label"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3858
    const-string v5, "type_label"

    iget v6, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsUtils;->getPhoneTypeResource(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3860
    :cond_1
    const-string v5, "number"

    iget-object v6, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3861
    const-string v5, "type"

    iget v6, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3862
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3864
    .end local v1           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_2
    return-void
.end method

.method public static buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "kind"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 3330
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 3334
    :cond_0
    :goto_0
    return-object v1

    .line 3333
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    invoke-interface {v2, p0, p2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3334
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildEditEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2

    .prologue
    .line 3544
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 3545
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v1, 0x7f0a013b

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 3546
    const v1, 0x7f0a0131

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3547
    const/16 v1, 0x18

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 3548
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 3549
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 3552
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3557
    :cond_0
    return-object v0
.end method

.method private buildGroupEntries()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 5

    .prologue
    .line 2640
    const/4 v0, 0x0

    .line 2641
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2645
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mGroupCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2647
    .local v2, gname:Ljava/lang/String;
    const-string v3, "Starred in Android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2655
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2658
    .end local v2           #gname:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2659
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newGroupEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    .line 2660
    .local v1, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v1, :cond_4

    .line 2665
    .end local v1           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :goto_1
    return-object v1

    .line 2651
    .restart local v2       #gname:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2653
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2665
    .end local v2           #gname:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private buildGroupsEntries()Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3439
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v5

    .line 3440
    .local v5, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 3441
    .local v22, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-virtual {v5}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v8

    .line 3442
    .local v8, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v8, :cond_1

    .line 3540
    :cond_0
    :goto_0
    return-object v22

    .line 3443
    :cond_1
    const/16 v24, 0x0

    .line 3444
    .local v24, sGroupLabel:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3445
    .local v11, groupNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, v5, Lcom/android/htccontacts/HtcContactInfo;->mIsFavorite:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 3447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/htc/util/contacts/ContactsUtility;->getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3450
    :cond_2
    const/16 v17, 0x0

    .line 3452
    .local v17, myGoogleContactCount:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;

    .line 3453
    .local v9, entity:Landroid/content/Entity;
    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 3454
    .local v7, entValues:Landroid/content/ContentValues;
    const-string v31, "account_type"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3455
    .local v3, accountType:Ljava/lang/String;
    const-string v31, "_id"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 3456
    .local v20, rawContactId:J
    const-string v31, "data_set"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3458
    .local v6, dataSet:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/Entity$NamedContentValues;

    .line 3459
    .local v29, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v29

    iget-object v10, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 3460
    .local v10, entryValues:Landroid/content/ContentValues;
    const-string v31, "raw_contact_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3462
    const-string v31, "mimetype"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3463
    .local v16, mimetype:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v28

    .line 3467
    .local v28, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v6, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v15

    .line 3470
    .local v15, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v15, :cond_4

    .line 3472
    const-string v31, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 3473
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v15, v10, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildActionString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v25

    .line 3474
    .local v25, sLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v0, v15, v10}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v23

    .line 3477
    .local v23, sData:Ljava/lang/String;
    move-object/from16 v24, v25

    .line 3478
    iget-object v0, v5, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    iget-object v0, v5, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v31

    if-lez v31, :cond_4

    .line 3479
    iget-object v0, v5, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 3480
    iget-object v0, v5, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 3481
    .local v26, sTitle:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 3483
    const-string v31, "Starred in Android"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 3486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/htc/util/contacts/ContactsUtility;->getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v26

    .end local v26           #sTitle:Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 3491
    .restart local v26       #sTitle:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .line 3492
    .local v4, bDuplicate:Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3493
    .local v18, nCurrentCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v12, v0, :cond_6

    .line 3494
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 3495
    const/4 v4, 0x1

    .line 3500
    :cond_6
    const-string v31, "My Contacts"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    const-string v31, "com.google"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 3501
    add-int/lit8 v17, v17, 0x1

    .line 3502
    const/16 v31, 0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-le v0, v1, :cond_4

    .line 3506
    :cond_7
    if-nez v4, :cond_4

    .line 3508
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3493
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3516
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #bDuplicate:Z
    .end local v6           #dataSet:Ljava/lang/String;
    .end local v7           #entValues:Landroid/content/ContentValues;
    .end local v9           #entity:Landroid/content/Entity;
    .end local v10           #entryValues:Landroid/content/ContentValues;
    .end local v12           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v16           #mimetype:Ljava/lang/String;
    .end local v18           #nCurrentCount:I
    .end local v20           #rawContactId:J
    .end local v23           #sData:Ljava/lang/String;
    .end local v25           #sLabel:Ljava/lang/String;
    .end local v26           #sTitle:Ljava/lang/String;
    .end local v28           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v29           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_9
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 3517
    .local v27, sbGroups:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3518
    .local v19, nGroupNameSize:I
    if-lez v19, :cond_a

    .line 3519
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    move/from16 v0, v19

    if-ge v12, v0, :cond_a

    .line 3520
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    const-string v31, ", "

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3519
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3524
    .end local v12           #i:I
    :cond_a
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v31

    if-lez v31, :cond_0

    .line 3525
    const-string v31, ", "

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3527
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_b

    iget-boolean v0, v5, Lcom/android/htccontacts/HtcContactInfo;->mIsFavorite:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 3528
    const v31, 0x7f0a01b9

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 3530
    :cond_b
    new-instance v30, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v30 .. v30}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 3531
    .local v30, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 3532
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3533
    const/16 v31, 0x12

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 3534
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 3535
    if-eqz v30, :cond_0

    .line 3536
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private buildRingToneEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 4

    .prologue
    .line 2126
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 2127
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_0

    .line 2128
    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfo;->mRingtonePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newRingToneEntry(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    .line 2136
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildSendMessageEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3394
    .local p1, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3396
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3397
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3398
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    iget-object v3, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3399
    .local v3, sNumber:Ljava/lang/String;
    new-instance v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v4}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 3400
    .local v4, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v5, 0x7f020078

    iput v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 3401
    const v5, 0x7f0a0173

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 3402
    iput-object v3, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3403
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "smsto"

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 3406
    if-eqz v4, :cond_0

    .line 3407
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3397
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3411
    .end local v3           #sNumber:Ljava/lang/String;
    .end local v4           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1
    return-object v2
.end method

.method private buildSendToVoiceMailEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 4

    .prologue
    .line 2169
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 2170
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->isSDNSIM()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2171
    :cond_0
    iget-boolean v2, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newSendToVoiceMailEntry(ZLandroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    .line 2176
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildSetWidgetEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 8

    .prologue
    const v7, 0x7f0a03a7

    .line 3562
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 3563
    .local v3, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v4, 0x7f0a0138

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 3564
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3566
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/htccontacts/HtcContactInfoBase;->mDefaultAction:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/util/contacts/ContactsUtility;->parseContactDefaultAction(Landroid/content/ContentResolver;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 3568
    .local v0, bundles:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 3569
    const-string v4, "action_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3570
    .local v2, defaultActionTag:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3571
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3572
    .local v1, defaultAction:Ljava/lang/String;
    const-string v4, "SendMSG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3573
    const v4, 0x7f0a0141

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3586
    :cond_0
    :goto_0
    iput-object v1, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 3590
    .end local v1           #defaultAction:Ljava/lang/String;
    .end local v2           #defaultActionTag:Ljava/lang/String;
    :cond_1
    const/16 v4, 0x28

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 3591
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 3592
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getSetWidgetIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 3593
    return-object v3

    .line 3574
    .restart local v1       #defaultAction:Ljava/lang/String;
    .restart local v2       #defaultActionTag:Ljava/lang/String;
    :cond_2
    const-string v4, "ViewContact"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3575
    const v4, 0x7f0a0135

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3576
    :cond_3
    const-string v4, "Dialing"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3582
    const v4, 0x7f0a0171

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3583
    :cond_4
    const-string v4, "SendMail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3584
    const v4, 0x7f0a0174

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildSetWidgetEntry2(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 7
    .parameter "iDefaultAction"

    .prologue
    const v6, 0x7f0a03a7

    .line 4851
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 4852
    .local v3, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v4, 0x7f0a0138

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 4853
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 4855
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/htc/util/contacts/ContactsUtility;->parseContactDefaultAction(Landroid/content/ContentResolver;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 4857
    .local v0, bundles:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 4858
    const-string v4, "action_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4859
    .local v2, defaultActionTag:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4860
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4861
    .local v1, defaultAction:Ljava/lang/String;
    const-string v4, "SendMSG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4862
    const v4, 0x7f0a0141

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4875
    :cond_0
    :goto_0
    iput-object v1, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 4879
    .end local v1           #defaultAction:Ljava/lang/String;
    .end local v2           #defaultActionTag:Ljava/lang/String;
    :cond_1
    const/16 v4, 0x28

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 4880
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 4881
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getSetWidgetIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 4882
    return-object v3

    .line 4863
    .restart local v1       #defaultAction:Ljava/lang/String;
    .restart local v2       #defaultActionTag:Ljava/lang/String;
    :cond_2
    const-string v4, "ViewContact"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4864
    const v4, 0x7f0a0135

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4865
    :cond_3
    const-string v4, "Dialing"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4871
    const v4, 0x7f0a0171

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4872
    :cond_4
    const-string v4, "SendMail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4873
    const v4, 0x7f0a0174

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildVIPEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 4

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 2201
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    sget-boolean v2, Lcom/htc/provider/HtcContactsContract;->enableManageCalls:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 2202
    iget-boolean v2, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsVIP:Z

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newVIPEntry(ZLandroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    .line 2207
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildYomiganaName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "yomiFirstName"
    .parameter "yomiLastName"
    .parameter "isGivenNameFirst"

    .prologue
    .line 2075
    const-string v0, " "

    .line 2076
    .local v0, diliem:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2077
    .local v1, name:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2079
    if-eqz p3, :cond_1

    .line 2080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2089
    :cond_0
    :goto_0
    return-object v1

    .line 2082
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2084
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2085
    move-object v1, p2

    goto :goto_0

    .line 2086
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2087
    move-object v1, p1

    goto :goto_0
.end method

.method private build_RawContactId_Version()Z
    .locals 19

    .prologue
    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v5

    .line 1221
    .local v5, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v2, 0x1

    .line 1222
    .local v2, bReBuild:Z
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1223
    .local v10, mapRawContactId_Version:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {v5}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v7

    .line 1224
    .local v7, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v7, :cond_0

    .line 1225
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity;

    .line 1226
    .local v8, entity:Landroid/content/Entity;
    invoke-virtual {v8}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 1227
    .local v6, entValues:Landroid/content/ContentValues;
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1228
    .local v11, rawContactId:J
    const-string v17, "version"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1231
    .local v15, version:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1235
    .end local v6           #entValues:Landroid/content/ContentValues;
    .end local v8           #entity:Landroid/content/Entity;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #rawContactId:J
    .end local v15           #version:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mmapRawContactId_Version:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mmapRawContactId_Version:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 1252
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1253
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mmapRawContactId_Version:Ljava/util/HashMap;

    .line 1256
    :cond_2
    return v2

    .line 1239
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mmapRawContactId_Version:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mmapRawContactId_Version:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 1241
    .local v14, setOriginal:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 1242
    .local v13, setNew:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v17

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-interface {v14, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mmapRawContactId_Version:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1244
    .local v4, collectionOriginal:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1245
    .local v3, collectionNew:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-interface {v4, v3}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1247
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private considerBindData()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1284
    iget-boolean v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbDestroy:Z

    if-eqz v9, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mExtStatuses:Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1289
    .local v2, extStatuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;>;"
    iget-boolean v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mHasEntities:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mHasStatuses:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 1290
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1291
    .local v8, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;

    .line 1292
    .local v1, extStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    const/4 v7, 0x0

    .line 1293
    .local v7, toBindStatus:Z
    iget-object v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eq v13, v9, :cond_3

    iget-object v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1298
    iget-object v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->uid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->uid:Ljava/lang/String;

    iget-object v10, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1299
    const/4 v7, 0x1

    .line 1304
    :cond_4
    :goto_2
    if-ne v13, v7, :cond_3

    .line 1305
    iget-object v9, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    invoke-virtual {v9}, Lcom/android/htccontacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1306
    .local v6, status:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eq v13, v9, :cond_3

    .line 1309
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1310
    iget-object v9, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    invoke-virtual {v9, p0}, Lcom/android/htccontacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 1311
    iget-object v9, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    invoke-virtual {v9}, Lcom/android/htccontacts/util/DataStatus;->getResPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1312
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v9

    iget-object v10, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    invoke-virtual {v10}, Lcom/android/htccontacts/util/DataStatus;->getIconRes()I

    move-result v10

    iget-object v11, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    invoke-virtual {v11}, Lcom/android/htccontacts/util/DataStatus;->getResPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/htccontacts/HtcContactInfo;->getPackageIconDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1313
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    iput-object v5, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->customDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1321
    .end local v1           #extStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    .end local v2           #extStatuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #status:Ljava/lang/CharSequence;
    .end local v7           #toBindStatus:Z
    .end local v8           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :catch_0
    move-exception v0

    .line 1322
    .local v0, e:Ljava/util/ConcurrentModificationException;
    const-string v9, "HtcViewContactDetailActivity"

    const-string v10, "ConccurentModificationException handled for considerBindData()!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1301
    .end local v0           #e:Ljava/util/ConcurrentModificationException;
    .restart local v1       #extStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    .restart local v2       #extStatuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #toBindStatus:Z
    .restart local v8       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_5
    :try_start_1
    iget-wide v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    iget-wide v11, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->dataId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    .line 1302
    const/4 v7, 0x1

    goto :goto_2

    .line 1318
    .end local v1           #extStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #toBindStatus:Z
    .end local v8           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_6
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {v9}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private createCompositeSendMsgDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 3868
    const/4 v7, 0x0

    .line 3869
    .local v7, compositeSendMsgDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/android/htccontacts/HtcViewContactDetailActivity$6;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$6;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 3884
    .local v6, clCompositeSendMsgDialog:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    const v3, 0x209004b

    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "type_label"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "number"

    aput-object v5, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v8, v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .line 3889
    return-object v7

    .line 3884
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x2t
        0x14t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method private createPickPhonesDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 2932
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 2934
    .local v0, creator:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->create()Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method private createProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 799
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 800
    .local v0, htcProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 801
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 802
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 803
    return-object v0
.end method

.method private createSetDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 3748
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 3749
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v2, v1, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    .line 3750
    .local v2, isEnable:Z
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3751
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    sget-boolean v4, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_0

    const v3, 0x7f0a030b

    .line 3754
    .local v3, stringRes:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3756
    if-eqz v2, :cond_1

    .line 3757
    const v4, 0x7f0a02e0

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3762
    :goto_1
    const v4, 0x104000a

    new-instance v5, Lcom/android/htccontacts/HtcViewContactDetailActivity$4;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$4;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3767
    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3768
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3769
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    return-object v4

    .line 3751
    .end local v3           #stringRes:I
    :cond_0
    const v3, 0x7f0a02dc

    goto :goto_0

    .line 3759
    .restart local v3       #stringRes:I
    :cond_1
    const v4, 0x7f0a02df

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method private createSetVIPDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 3773
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 3774
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v2, v1, Lcom/android/htccontacts/HtcContactInfo;->mIsVIP:Z

    .line 3775
    .local v2, isEnable:Z
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3776
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0a0354

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3778
    if-eqz v2, :cond_0

    .line 3779
    const v3, 0x7f0a02e0

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3784
    :goto_0
    const v3, 0x104000a

    new-instance v4, Lcom/android/htccontacts/HtcViewContactDetailActivity$5;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$5;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3789
    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3790
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3791
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 3781
    :cond_0
    const v3, 0x7f0a02df

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private createTmoImChatDialog(Ljava/util/ArrayList;)Landroid/app/Dialog;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 4283
    .local p1, tmoImChatData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v2, 0x0

    .line 4285
    .local v2, tmoImChatDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$10;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/util/ArrayList;)V

    .line 4298
    .local v0, clTmoImChatDialog:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/htccontacts/widget/TmoImAdapter;

    const v3, 0x7f030041

    const v4, 0x7f07003b

    invoke-direct {v1, p0, v3, v4, p1}, Lcom/android/htccontacts/widget/TmoImAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 4299
    .local v1, tiAdapter:Lcom/android/htccontacts/widget/TmoImAdapter;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0371

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 4303
    return-object v2
.end method

.method private createUriForSim()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 1005
    const/4 v2, 0x0

    .line 1006
    .local v2, result:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 1007
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, accountParameter:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 1018
    .end local v0           #accountParameter:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private decideYomiganaDisplayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "givenName"
    .parameter "familyName"
    .parameter "displayName"

    .prologue
    const/4 v4, 0x0

    .line 2043
    const/4 v0, 0x0

    .line 2044
    .local v0, isGivenNameFirst:Z
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v0

    .line 2069
    .end local v0           #isGivenNameFirst:Z
    .local v1, isGivenNameFirst:I
    :goto_0
    return v1

    .line 2047
    .end local v1           #isGivenNameFirst:I
    .restart local v0       #isGivenNameFirst:Z
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2048
    .local v3, nGivenNameLength:I
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2051
    .local v2, nFamilyNameLength:I
    :goto_2
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2052
    const/4 v0, 0x1

    :cond_1
    :goto_3
    move v1, v0

    .line 2069
    .restart local v1       #isGivenNameFirst:I
    goto :goto_0

    .end local v1           #isGivenNameFirst:I
    .end local v2           #nFamilyNameLength:I
    .end local v3           #nGivenNameLength:I
    :cond_2
    move v3, v4

    .line 2047
    goto :goto_1

    .restart local v3       #nGivenNameLength:I
    :cond_3
    move v2, v4

    .line 2048
    goto :goto_2

    .line 2053
    .restart local v2       #nFamilyNameLength:I
    :cond_4
    invoke-virtual {p3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2054
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private editNumberWithIpDialPrefix(Ljava/lang/String;)V
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    .line 275
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 324
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 288
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    .local v3, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, ipDialNumber:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v2           #ipDialNumber:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$1;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/lang/String;)V

    .line 307
    .local v0, OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, title:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v4, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x2090007

    invoke-direct {v7, p0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 324
    .local v1, d:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method private getAddSpeedDialIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 984
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getAddSpeedDialIntent(JI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getAddSpeedDialIntent(JI)Landroid/content/Intent;
    .locals 4
    .parameter "defaultNumberId"
    .parameter "defaultNumberType"

    .prologue
    .line 988
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 989
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->createUriForSim()Landroid/net/Uri;

    move-result-object v1

    .line 991
    .local v1, simUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 992
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 996
    :goto_0
    const-string v2, "com.android.htccontacts.action.EDIT_SPEED_DIAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v2, "number_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1001
    return-object v0

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getAllPhoneDataIdString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 3817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3818
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 3819
    .local v1, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "data_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3822
    .end local v1           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v4, v3, :cond_1

    .line 3823
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3825
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getCharsLength([CI)I
    .locals 5
    .parameter "chars"
    .parameter "specialCharsLength"

    .prologue
    .line 3276
    const/4 v0, 0x0

    .line 3277
    .local v0, count:I
    const/4 v2, 0x0

    .line 3278
    .local v2, normalCharsLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 3279
    aget-char v4, p0, v1

    invoke-static {v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getSpecialCharLength(C)I

    move-result v3

    .line 3280
    .local v3, specialCharLength:I
    sub-int v4, p1, v3

    if-gt v0, v4, :cond_0

    .line 3281
    add-int/2addr v0, v3

    .line 3282
    add-int/lit8 v2, v2, 0x1

    .line 3278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3287
    .end local v3           #specialCharLength:I
    :cond_0
    return v2
.end method

.method private getCompositeSendMsgRunnable(I)Ljava/lang/Runnable;
    .locals 1
    .parameter "which"

    .prologue
    .line 3892
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$7;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;I)V

    return-object v0
.end method

.method private getIntentToAddFavorite(JI)Landroid/content/Intent;
    .locals 3
    .parameter "userId"
    .parameter "type"

    .prologue
    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 974
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 975
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 976
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.ContactGlanceSelectDefaultActionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 980
    :cond_0
    return-object v0
.end method

.method private getIpDialItemCount()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLableString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 4811
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4813
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v1, -0x1

    .line 4814
    .local v1, labelRes:I
    if-nez p1, :cond_0

    .line 4815
    const v1, 0x7f0a0171

    .line 4817
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v1

    .line 4818
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4819
    .local v2, typeString:Ljava/lang/String;
    return-object v2
.end method

.method private getPhoneNumberDataIdString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "nPhoneType"
    .parameter "sPhoneNumber"

    .prologue
    const/16 v5, 0x2c

    .line 3828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3829
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3830
    .local v2, sPhoneType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 3831
    .local v1, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "phone_type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "phone_number"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3832
    const-string v4, "data_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3836
    .end local v1           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v5, v4, :cond_2

    .line 3837
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3839
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getPickRingtoneIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter "ringtoneUri"

    .prologue
    .line 3622
    if-nez p1, :cond_0

    .line 3623
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 3625
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3626
    .local v1, data:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3628
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SDMPickerType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3632
    const-string v2, "SDMDefStrUri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3637
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3638
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3639
    return-object v1
.end method

.method private getSaveToSimResultString(I)Ljava/lang/String;
    .locals 3
    .parameter "saveToSimResultCode"

    .prologue
    .line 3212
    const/4 v0, -0x1

    .line 3213
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 3225
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3226
    .local v1, result:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 3215
    .end local v1           #result:Ljava/lang/String;
    :pswitch_0
    const v0, 0x7f0a024e

    .line 3216
    goto :goto_0

    .line 3218
    :pswitch_1
    const v0, 0x7f0a024f

    .line 3219
    goto :goto_0

    .line 3221
    :pswitch_2
    const v0, 0x7f0a0250

    .line 3222
    goto :goto_0

    .line 3225
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 3213
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSendMethodDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 4

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getSendMethodList()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2848
    .local v1, list:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 2849
    :cond_0
    const/4 v2, 0x0

    .line 2855
    :goto_0
    return-object v2

    .line 2851
    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2852
    .local v2, result:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0a0149

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2853
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SendContactMethodOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SendContactMethodOnClickListener;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;[Ljava/lang/CharSequence;)V

    .line 2854
    .local v0, clickListener:Lcom/android/htccontacts/HtcViewContactDetailActivity$SendContactMethodOnClickListener;
    invoke-virtual {v2, v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private static getSpecialCharLength(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 3291
    invoke-static {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3292
    const/4 v0, 0x1

    .line 3294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getTmoImChatData()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4306
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 4307
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->getImDatas()Ljava/util/ArrayList;

    move-result-object v3

    .line 4308
    .local v3, imDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4309
    .local v4, tmoImChatData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ImData;

    .line 4310
    .local v1, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isValidTmoImChat(Lcom/android/htccontacts/util/ImData;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4311
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v5

    if-lez v5, :cond_0

    .line 4312
    sget v5, Lcom/android/htccontacts/util/ImData;->IM_CHAT:I

    invoke-virtual {v1, v5}, Lcom/android/htccontacts/util/ImData;->setType(I)V

    .line 4313
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4317
    .end local v1           #data:Lcom/android/htccontacts/util/ImData;
    :cond_1
    return-object v4
.end method

.method private getTmoVideoCallData()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4321
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 4322
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->getImDatas()Ljava/util/ArrayList;

    move-result-object v3

    .line 4323
    .local v3, imDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4324
    .local v4, tmoVideoCallData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ImData;

    .line 4325
    .local v1, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isValidTmoVideoCall(Lcom/android/htccontacts/util/ImData;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4326
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v5

    if-lez v5, :cond_0

    .line 4327
    sget v5, Lcom/android/htccontacts/util/ImData;->VIDEO_CALL:I

    invoke-virtual {v1, v5}, Lcom/android/htccontacts/util/ImData;->setType(I)V

    .line 4328
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4332
    .end local v1           #data:Lcom/android/htccontacts/util/ImData;
    :cond_1
    return-object v4
.end method

.method protected static getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a006b

    .line 4823
    if-nez p0, :cond_0

    .line 4845
    :goto_0
    :pswitch_0
    return v0

    .line 4824
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4845
    const v0, 0x7f0a007a

    goto :goto_0

    .line 4825
    :pswitch_1
    const v0, 0x7f0a0079

    goto :goto_0

    .line 4826
    :pswitch_2
    const v0, 0x7f0a0078

    goto :goto_0

    .line 4827
    :pswitch_3
    const v0, 0x7f0a0067

    goto :goto_0

    .line 4828
    :pswitch_4
    const v0, 0x7f0a0068

    goto :goto_0

    .line 4829
    :pswitch_5
    const v0, 0x7f0a0069

    goto :goto_0

    .line 4830
    :pswitch_6
    const v0, 0x7f0a006a

    goto :goto_0

    .line 4832
    :pswitch_7
    const v0, 0x7f0a006c

    goto :goto_0

    .line 4833
    :pswitch_8
    const v0, 0x7f0a006d

    goto :goto_0

    .line 4834
    :pswitch_9
    const v0, 0x7f0a006e

    goto :goto_0

    .line 4835
    :pswitch_a
    const v0, 0x7f0a006f

    goto :goto_0

    .line 4836
    :pswitch_b
    const v0, 0x7f0a0070

    goto :goto_0

    .line 4837
    :pswitch_c
    const v0, 0x7f0a0071

    goto :goto_0

    .line 4838
    :pswitch_d
    const v0, 0x7f0a0072

    goto :goto_0

    .line 4839
    :pswitch_e
    const v0, 0x7f0a0073

    goto :goto_0

    .line 4840
    :pswitch_f
    const v0, 0x7f0a0074

    goto :goto_0

    .line 4841
    :pswitch_10
    const v0, 0x7f0a0075

    goto :goto_0

    .line 4842
    :pswitch_11
    const v0, 0x7f0a0076

    goto :goto_0

    .line 4843
    :pswitch_12
    const v0, 0x7f0a007b

    goto :goto_0

    .line 4844
    :pswitch_13
    const v0, 0x7f0a0077

    goto :goto_0

    .line 4824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private hasPhoneNumber()Z
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 757
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_0

    .line 758
    iget-object v1, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 759
    .local v1, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 760
    const/4 v2, 0x1

    .line 764
    .end local v1           #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private haveContactMethods()Z
    .locals 2

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->hasPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 823
    .local v0, result:Z
    :goto_0
    return v0

    .line 821
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContainDoubleByteChars(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 4548
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 4549
    .local v3, utf8Bytes:[B
    array-length v4, v3

    .line 4550
    .local v4, utf8Length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4551
    .local v2, originalLength:I
    if-eq v2, v4, :cond_1

    .line 4553
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 4554
    aget-byte v0, v3, v1

    .line 4555
    .local v0, check:B
    and-int/lit8 v5, v0, 0x7f

    int-to-byte v0, v5

    .line 4556
    aget-byte v5, v3, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v5, :cond_0

    .line 4565
    .end local v0           #check:B
    .end local v1           #i:I
    .end local v2           #originalLength:I
    .end local v3           #utf8Bytes:[B
    .end local v4           #utf8Length:I
    :goto_1
    return v1

    .line 4553
    .restart local v0       #check:B
    .restart local v1       #i:I
    .restart local v2       #originalLength:I
    .restart local v3       #utf8Bytes:[B
    .restart local v4       #utf8Length:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4561
    .end local v0           #check:B
    .end local v1           #i:I
    .end local v2           #originalLength:I
    .end local v3           #utf8Bytes:[B
    .end local v4           #utf8Length:I
    :catch_0
    move-exception v5

    .line 4565
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isFavorite()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 769
    const/4 v8, 0x0

    .line 770
    .local v8, result:Z
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 771
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v7, :cond_1

    .line 772
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v7, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 773
    .local v1, uri:Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v9, selectionString:Ljava/lang/StringBuilder;
    const-string v0, "starred"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v0, "="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "starred"

    aput-object v5, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 781
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v10, v0, :cond_0

    .line 783
    const/4 v8, 0x1

    .line 788
    :cond_0
    if-eqz v6, :cond_1

    .line 790
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 794
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #selectionString:Ljava/lang/StringBuilder;
    :cond_1
    return v8

    .line 788
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #selectionString:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 790
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_2
    throw v0
.end method

.method private static isLetter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 3299
    const/16 v0, 0x80

    .line 3300
    .local v0, k:I
    div-int v1, p0, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchEditIPDialActivity()V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method public static length(Ljava/lang/String;)I
    .locals 4
    .parameter "s"

    .prologue
    .line 3304
    if-nez p0, :cond_1

    .line 3305
    const/4 v2, 0x0

    .line 3314
    :cond_0
    return v2

    .line 3306
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3307
    .local v0, c:[C
    const/4 v2, 0x0

    .line 3308
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 3309
    add-int/lit8 v2, v2, 0x1

    .line 3310
    aget-char v3, v0, v1

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3311
    add-int/lit8 v2, v2, 0x1

    .line 3308
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private newCompanyEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 5
    .parameter "type"
    .parameter "label"
    .parameter "companename"
    .parameter "title"
    .parameter "id"
    .parameter "uri"

    .prologue
    .line 2229
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 2231
    .local v1, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Landroid/provider/Contacts$Organizations;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2233
    .local v2, localLabel:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a01b7

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2238
    .local v0, detailBuilder:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 2240
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    :cond_0
    if-eqz p4, :cond_1

    .line 2246
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 2255
    iput-wide p5, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 2256
    iput-object p7, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2257
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 2258
    const/4 v3, 0x4

    iput v3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 2259
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 2260
    const/16 v3, 0x14

    iput v3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 2261
    return-object v1

    .end local v0           #detailBuilder:Ljava/lang/StringBuilder;
    .end local v2           #localLabel:Ljava/lang/String;
    :cond_2
    move-object v2, p2

    .line 2231
    goto :goto_0
.end method

.method private newRingToneEntry(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 4
    .parameter "ringtoneStr"
    .parameter "uri"

    .prologue
    .line 2144
    new-instance v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 2146
    .local v2, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2147
    const v3, 0x7f0a0169

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 2158
    :cond_0
    :goto_0
    const v3, 0x7f0a0056

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 2159
    iput-object p2, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2160
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 2161
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getMoreRestButtonResoureceId(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 2162
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 2163
    const/16 v3, 0x11

    iput v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 2164
    iget-object v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getPickRingtoneIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 2165
    return-object v2

    .line 2149
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2150
    .local v1, ringtoneUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2151
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 2152
    .local v0, ringtone:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 2153
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 2154
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0
.end method

.method private newSendToVoiceMailEntry(ZLandroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "isEnable"
    .parameter "uri"

    .prologue
    .line 2181
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 2183
    .local v1, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    sget-boolean v2, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0a030b

    .line 2186
    .local v0, stringRes:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 2187
    if-eqz p1, :cond_1

    const v2, 0x7f0a02dd

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 2189
    iput-object p2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2190
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 2191
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getMoreRestButtonResoureceId(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 2192
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 2193
    const/16 v2, 0x15

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 2195
    return-object v1

    .line 2183
    .end local v0           #stringRes:I
    :cond_0
    const v0, 0x7f0a02dc

    goto :goto_0

    .line 2187
    .restart local v0       #stringRes:I
    :cond_1
    const v2, 0x7f0a02de

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private newVIPEntry(ZLandroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "isEnable"
    .parameter "uri"

    .prologue
    .line 2212
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 2214
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v1, 0x7f0a0354

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 2215
    if-eqz p1, :cond_0

    const v1, 0x7f0a02dd

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 2217
    iput-object p2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2218
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 2219
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getMoreRestButtonResoureceId(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 2220
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 2221
    const/16 v1, 0x1e

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 2223
    return-object v0

    .line 2215
    :cond_0
    const v1, 0x7f0a02de

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private okToSaveSim()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4385
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isCdma()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 4386
    .local v0, isUMTS:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isCanReadWriteSIM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0           #isUMTS:Z
    :cond_0
    move v0, v2

    .line 4385
    goto :goto_0

    .restart local v0       #isUMTS:Z
    :cond_1
    move v1, v2

    .line 4386
    goto :goto_1
.end method

.method private postalAction(Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V
    .locals 11
    .parameter "entry"

    .prologue
    .line 4338
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    .line 4339
    iget-object v5, p1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 4340
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_1

    .line 4342
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4382
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 4344
    .restart local v5       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 4345
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v8, "HtcViewContactDetailActivity"

    const-string v9, "Trying to launch the action intent but activity handler cannot be found"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4350
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 4351
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsUtils;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4353
    const/4 v6, 0x0

    .line 4354
    .local v6, telNumber:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 4355
    iget-object v8, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 4356
    .local v7, ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v8, 0x5

    iget v9, v7, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v8, v9, :cond_2

    iget-boolean v8, v7, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-eqz v8, :cond_2

    .line 4357
    iget-object v6, v7, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 4362
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #ve:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4363
    .local v0, b:Landroid/os/Bundle;
    const-string v8, "contactId"

    iget-wide v9, v2, Lcom/android/htccontacts/HtcContactInfoBase;->mContactId:J

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4364
    const-string v8, "address"

    iget-object v9, p1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4365
    const-string v8, "number"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4366
    iget-object v8, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v8}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getCachedInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    .line 4368
    .local v1, cachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;
    if-eqz v1, :cond_4

    .line 4369
    const-string v8, "Name"

    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4371
    :cond_4
    new-instance v8, Lcom/android/htccontacts/widget/PrepareLaputaIntentTask;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/widget/PrepareLaputaIntentTask;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/os/Bundle;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/widget/PrepareLaputaIntentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 4373
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #cachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;
    .end local v6           #telNumber:Ljava/lang/String;
    :cond_5
    iget-object v5, p1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 4374
    .restart local v5       #intent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 4376
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4377
    :catch_1
    move-exception v3

    .line 4378
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    const-string v8, "HtcViewContactDetailActivity"

    const-string v9, "Trying to launch the action intent but activity handler cannot be found"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private printContact()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4604
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 4606
    .local v1, contactUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4616
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.westtek.jcp"

    const-string v6, "com.westtek.jcp.JCPRINT"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4617
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4618
    const-string v5, "text/android.provider.contacts"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4620
    const-string v4, "display_name ASC"

    .line 4622
    .local v4, sortOrder:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4623
    .local v2, extras:Landroid/os/Bundle;
    const-string v5, "projection"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4624
    const-string v5, "selection"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4625
    const-string v5, "selectionArgs"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4626
    const-string v5, "sortOrder"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4628
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4630
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4635
    :goto_0
    return-void

    .line 4632
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private queryIpDialCursor()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 249
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$QueryIPDialHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$QueryIPDialHandler;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/HtcViewContactDetailActivity$QueryIPDialHandler;

    .line 250
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/HtcViewContactDetailActivity$QueryIPDialHandler;

    const/16 v1, 0x7da

    const-string v3, "content://com.android.contacts/ip_dial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/HtcViewContactDetailActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity$QueryIPDialHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private quickEditMail(Landroid/os/Bundle;)V
    .locals 13
    .parameter "b"

    .prologue
    const/16 v10, 0x2c

    .line 4199
    if-nez p1, :cond_1

    .line 4235
    :cond_0
    :goto_0
    return-void

    .line 4200
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 4201
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4202
    const/16 v9, 0x38

    invoke-direct {p0, p1, v9}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->quickEditSim(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 4205
    :cond_2
    const-string v9, "Mail"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4206
    .local v5, sTargetOriginalMail:Ljava/lang/String;
    const-string v9, "NewMail"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4207
    .local v4, sTargetNewMail:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4208
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4209
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 4210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4211
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 4212
    .local v2, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "is_facebook"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "mail_mail"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4214
    const-string v9, "data_id"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4215
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4218
    .end local v2           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v10, v9, :cond_5

    .line 4219
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4223
    :cond_5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 4224
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "data1"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4226
    .local v7, sbWhere:Ljava/lang/StringBuilder;
    const-string v9, "_id"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4227
    const-string v9, " IN "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4228
    const-string v9, "( "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4230
    const-string v9, " )"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4231
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 4232
    .local v3, nUpdates:I
    if-lez v3, :cond_0

    if-eqz v0, :cond_0

    .line 4233
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-wide v10, v0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v9, v10, v11}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    goto/16 :goto_0
.end method

.method private quickEditPhone(Landroid/os/Bundle;)V
    .locals 18
    .parameter "b"

    .prologue
    .line 4153
    if-nez p1, :cond_1

    .line 4196
    :cond_0
    :goto_0
    return-void

    .line 4154
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 4155
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4156
    const/16 v14, 0x37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->quickEditSim(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 4159
    :cond_2
    const-string v14, "Type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4160
    .local v10, sTargetOriginalType:Ljava/lang/String;
    const-string v14, "Number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4161
    .local v9, sTargetOriginalNumber:Ljava/lang/String;
    const-string v14, "NewNumber"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4162
    .local v8, sTargetNewNumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 4163
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 4164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 4165
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 4166
    .local v11, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 4167
    .local v5, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "is_facebook"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "phone_type"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v10, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "phone_number"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v9, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 4169
    const-string v14, "data_id"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4170
    const/16 v14, 0x2c

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4173
    .end local v5           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_5

    const/16 v14, 0x2c

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    if-ne v14, v15, :cond_5

    .line 4174
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4178
    :cond_5
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 4179
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "data1"

    invoke-virtual {v13, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4180
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 4181
    .local v12, sbWhere:Ljava/lang/StringBuilder;
    const-string v14, "_id"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4182
    const-string v14, " IN "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4183
    const-string v14, "( "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    const-string v14, " )"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v13, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 4187
    .local v7, nUpdates:I
    if-lez v7, :cond_0

    if-eqz v2, :cond_0

    .line 4188
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityEnabled()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 4189
    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->getMyPhonebookRawContactIds()Ljava/util/ArrayList;

    move-result-object v6

    .line 4190
    .local v6, myPhonebookRawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4191
    .local v4, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/htc/util/contacts/TMOClient;->getInstance(Landroid/content/Context;)Lcom/htc/util/contacts/TMOClient;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/htc/util/contacts/TMOClient;->updateMyCommunityGroupMembers(Ljava/lang/String;)V

    goto :goto_2

    .line 4194
    .end local v4           #id:Ljava/lang/String;
    .end local v6           #myPhonebookRawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-wide v15, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static/range {v14 .. v16}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    goto/16 :goto_0
.end method

.method private quickEditSim(Landroid/os/Bundle;I)V
    .locals 44
    .parameter "b"
    .parameter "type"

    .prologue
    .line 4032
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 4033
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v41

    if-eqz v41, :cond_0

    .line 4036
    const/16 v35, 0x0

    .line 4037
    .local v35, sTargetOriginalType:Ljava/lang/String;
    const/16 v34, 0x0

    .line 4038
    .local v34, sTargetOriginalNumber:Ljava/lang/String;
    const/16 v32, 0x0

    .line 4039
    .local v32, sTargetNewNumber:Ljava/lang/String;
    const/16 v41, 0x37

    move/from16 v0, v41

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 4040
    const-string v41, "Type"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 4041
    const-string v41, "Number"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 4042
    const-string v41, "NewNumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 4043
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_0

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 4151
    .end local v32           #sTargetNewNumber:Ljava/lang/String;
    .end local v34           #sTargetOriginalNumber:Ljava/lang/String;
    .end local v35           #sTargetOriginalType:Ljava/lang/String;
    :cond_0
    return-void

    .line 4044
    .restart local v32       #sTargetNewNumber:Ljava/lang/String;
    .restart local v34       #sTargetOriginalNumber:Ljava/lang/String;
    .restart local v35       #sTargetOriginalType:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 4046
    :cond_2
    const/16 v33, 0x0

    .line 4047
    .local v33, sTargetOriginalMail:Ljava/lang/String;
    const/16 v31, 0x0

    .line 4048
    .local v31, sTargetNewMail:Ljava/lang/String;
    const/16 v41, 0x38

    move/from16 v0, v41

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 4049
    const-string v41, "Mail"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 4050
    const-string v41, "NewMail"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 4051
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 4052
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 4055
    :cond_3
    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v16

    .line 4056
    .local v16, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v16, :cond_0

    const/16 v41, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 4057
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity;

    .line 4058
    .local v17, entity:Landroid/content/Entity;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v15

    .line 4059
    .local v15, entValues:Landroid/content/ContentValues;
    const-string v41, "account_type"

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4060
    .local v5, accountType:Ljava/lang/String;
    const-string v41, "_id"

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 4061
    .local v27, rawContactId:J
    const-string v41, "sourceid"

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 4062
    .local v30, sSourceId:Ljava/lang/String;
    const-string v41, "data_set"

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4064
    .local v10, dataSet:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_4

    .line 4066
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 4067
    .local v37, simvalues:Landroid/content/ContentValues;
    const-string v41, "recordNumber"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    const/16 v26, 0x0

    .line 4069
    .local v26, numberIndex:I
    const/4 v12, 0x0

    .line 4071
    .local v12, displayName:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 4072
    .local v39, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 4073
    .local v18, entryValues:Landroid/content/ContentValues;
    const-string v41, "mimetype"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4074
    .local v22, mimetype:Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 4075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v38

    .line 4076
    .local v38, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v10, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v11

    .line 4078
    .local v11, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v11, :cond_5

    .line 4079
    const-string v41, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 4080
    const-string v41, "data1"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4082
    .local v9, data:Ljava/lang/String;
    const/16 v25, 0x0

    .line 4083
    .local v25, number:Ljava/lang/String;
    const/16 v41, 0x37

    move/from16 v0, v41

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v34

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 4084
    move-object/from16 v25, v32

    .line 4088
    :goto_2
    const-string v21, "number"

    .line 4089
    .local v21, keyName:Ljava/lang/String;
    const/16 v41, 0x1

    move/from16 v0, v26

    move/from16 v1, v41

    if-lt v0, v1, :cond_6

    .line 4090
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4092
    :cond_6
    move-object/from16 v0, v37

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    add-int/lit8 v26, v26, 0x1

    .line 4095
    goto/16 :goto_1

    .line 4086
    .end local v21           #keyName:Ljava/lang/String;
    :cond_7
    move-object/from16 v25, v9

    goto :goto_2

    .line 4095
    .end local v9           #data:Ljava/lang/String;
    .end local v25           #number:Ljava/lang/String;
    :cond_8
    const-string v41, "vnd.android.cursor.item/name"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 4096
    const-string v41, "data1"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 4097
    :cond_9
    const-string v41, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 4098
    const-string v41, "data1"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4100
    .restart local v9       #data:Ljava/lang/String;
    const/4 v14, 0x0

    .line 4101
    .local v14, email:Ljava/lang/String;
    const/16 v41, 0x38

    move/from16 v0, v41

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v33

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 4102
    move-object/from16 v14, v31

    .line 4106
    :goto_3
    const-string v41, "emails"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4104
    :cond_a
    move-object v14, v9

    goto :goto_3

    .line 4111
    .end local v9           #data:Ljava/lang/String;
    .end local v11           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v14           #email:Ljava/lang/String;
    .end local v18           #entryValues:Landroid/content/ContentValues;
    .end local v22           #mimetype:Ljava/lang/String;
    .end local v38           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v39           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 4112
    const-string v41, "number"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4113
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 4114
    const-string v41, "number1"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4117
    :cond_c
    if-nez v12, :cond_d

    const-string v12, ""

    .line 4119
    :cond_d
    const-string v41, "name"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    const-string v41, "content://icc/phonebook"

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    .line 4122
    .local v36, simUri:Landroid/net/Uri;
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    .line 4123
    const/16 v29, 0x0

    .line 4125
    .local v29, result:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 4126
    .local v8, counts:I
    if-lez v8, :cond_10

    move-object/from16 v29, v36

    .line 4137
    .end local v8           #counts:I
    :cond_e
    :goto_4
    invoke-static/range {v29 .. v29}, Lcom/android/htccontacts/util/UpdateSIMStatus;->processSIMUpdateErrorUri(Landroid/net/Uri;)I

    move-result v6

    .line 4138
    .local v6, code:I
    const/16 v41, 0x1

    move/from16 v0, v41

    if-eq v6, v0, :cond_f

    .line 4139
    invoke-static {v6}, Lcom/android/htccontacts/util/UpdateSIMStatus;->getSIMErrorDescirptionResource(I)I

    move-result v40

    .line 4140
    .local v40, textRes:I
    if-lez v40, :cond_f

    .line 4141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v40

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 4145
    .end local v40           #textRes:I
    :cond_f
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v6, v0, :cond_4

    if-eqz v29, :cond_4

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v41, v0

    iget-wide v0, v7, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    move-wide/from16 v42, v0

    invoke-static/range {v41 .. v43}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 4126
    .end local v6           #code:I
    .restart local v8       #counts:I
    :cond_10
    const/16 v29, 0x0

    goto :goto_4

    .line 4127
    .end local v8           #counts:I
    :catch_0
    move-exception v24

    .line 4128
    .local v24, npe:Ljava/lang/NullPointerException;
    const-string v41, "HtcViewContactDetailActivity"

    const-string v42, "quickEditSim"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 4129
    .end local v24           #npe:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v13

    .line 4130
    .local v13, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v13}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v23

    .line 4131
    .local v23, msg:Ljava/lang/String;
    const-string v41, "MemoryFull"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_11

    const-string v41, "AdnFull"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_11

    const-string v41, "Error"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 4133
    :cond_11
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    goto :goto_4
.end method

.method private readStatuses(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1329
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mStatuses:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1332
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1333
    new-instance v2, Lcom/android/htccontacts/util/DataStatus;

    invoke-direct {v2, p1}, Lcom/android/htccontacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 1334
    .local v2, status:Lcom/android/htccontacts/util/DataStatus;
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1335
    .local v0, dataId:J
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mStatuses:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1338
    .end local v0           #dataId:J
    .end local v2           #status:Lcom/android/htccontacts/util/DataStatus;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mHasStatuses:Z

    .line 1339
    return-void
.end method

.method private rebuildContactInfo()Z
    .locals 4

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 1266
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v0, 0x0

    .line 1267
    .local v0, bReBuild:Z
    if-eqz v1, :cond_1

    .line 1268
    iget-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbFirstTimeBuildEntriesDone:Z

    if-nez v2, :cond_2

    .line 1269
    const/4 v0, 0x1

    .line 1276
    :cond_0
    :goto_0
    iget-boolean v2, v1, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsSendToVoiceMail:Z

    .line 1277
    iget-object v2, v1, Lcom/android/htccontacts/HtcContactInfo;->mRingtonePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mRingtonePath:Ljava/lang/String;

    .line 1280
    :cond_1
    return v0

    .line 1271
    :cond_2
    iget-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsSendToVoiceMail:Z

    iget-boolean v3, v1, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mRingtonePath:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/htccontacts/HtcContactInfo;->mRingtonePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1273
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveAllContactPhonesEmailsToSIM()V
    .locals 34

    .prologue
    .line 2939
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2940
    .local v19, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2941
    .local v16, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2942
    .local v22, phonesIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2944
    .local v7, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 2945
    .local v21, phoneCount:I
    const/16 v17, 0x0

    .line 2946
    .local v17, mailCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    .line 2947
    .local v3, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v3}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v9

    .line 2948
    .local v9, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/16 v23, -0x1

    .line 2949
    .local v23, primary_index:I
    if-nez v9, :cond_1

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 2951
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity;

    .line 2952
    .local v10, entity:Landroid/content/Entity;
    invoke-virtual {v10}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 2953
    .local v8, entValues:Landroid/content/ContentValues;
    const-string v32, "account_type"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2954
    .local v2, accountType:Ljava/lang/String;
    const-string v32, "data_set"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2955
    .local v5, dataSet:Ljava/lang/String;
    const-string v32, "_id"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 2956
    .local v25, rawContactId:J
    invoke-virtual {v10}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Entity$NamedContentValues;

    .line 2957
    .local v28, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v28

    iget-object v11, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 2958
    .local v11, entryValues:Landroid/content/ContentValues;
    const-string v32, "raw_contact_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2960
    const-string v32, "mimetype"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2961
    .local v18, mimetype:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 2963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v27

    .line 2964
    .local v27, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v5, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 2967
    .local v6, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v6, :cond_3

    .line 2968
    const-string v32, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 2969
    const-string v32, "data1"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2970
    .local v4, data:Ljava/lang/String;
    const-string v32, "_id"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2971
    .local v14, id:I
    const-string v32, "is_super_primary"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 2972
    .local v24, primary_value:I
    const-string v32, "data2"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 2973
    .local v31, type:I
    const-string v32, "data3"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2974
    .local v15, label:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2975
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1, v15}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2976
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2977
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2978
    if-lez v24, :cond_4

    .line 2979
    move/from16 v23, v21

    .line 2981
    :cond_4
    add-int/lit8 v21, v21, 0x1

    .line 2983
    .end local v4           #data:Ljava/lang/String;
    .end local v14           #id:I
    .end local v15           #label:Ljava/lang/String;
    .end local v24           #primary_value:I
    .end local v31           #type:I
    :cond_5
    const-string v32, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 2984
    const-string v32, "data1"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2985
    .restart local v4       #data:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2986
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 2991
    .end local v2           #accountType:Ljava/lang/String;
    .end local v4           #data:Ljava/lang/String;
    .end local v5           #dataSet:Ljava/lang/String;
    .end local v6           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v8           #entValues:Landroid/content/ContentValues;
    .end local v10           #entity:Landroid/content/Entity;
    .end local v11           #entryValues:Landroid/content/ContentValues;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v18           #mimetype:Ljava/lang/String;
    .end local v25           #rawContactId:J
    .end local v27           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v28           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    if-eqz v21, :cond_0

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportEmailNum(Landroid/content/Context;)I

    move-result v29

    .line 2996
    .local v29, supportEmailNum:I
    if-gtz v29, :cond_7

    .line 2998
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3001
    :cond_7
    new-instance v20, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;

    const/16 v32, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$1;)V

    .line 3002
    .local v20, pack:Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->phones:Ljava/util/ArrayList;

    .line 3003
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->labels:Ljava/util/ArrayList;

    .line 3004
    move-object/from16 v0, v20

    iput-object v7, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->emails:Ljava/util/ArrayList;

    .line 3005
    new-instance v30, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 3006
    .local v30, task:Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v20, v32, v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private saveToSim(Ljava/lang/String;)I
    .locals 6
    .parameter "number"

    .prologue
    .line 1156
    const/4 v1, 0x1

    .line 1158
    .local v1, resultCode:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1159
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v4, "number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v4, "number1"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v4, "number2"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const-string v4, "emails"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1166
    .local v2, resultUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/htccontacts/util/UpdateSIMStatus;->processSIMUpdateErrorUri(Landroid/net/Uri;)I

    move-result v0

    .line 1167
    .local v0, code:I
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 1168
    const/4 v1, 0x4

    .line 1180
    :cond_0
    :goto_0
    return v1

    .line 1170
    :cond_1
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    .line 1171
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private saveToSim(Ljava/lang/String;I)I
    .locals 1
    .parameter "number"
    .parameter "type"

    .prologue
    .line 1022
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private saveToSim(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "number"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 1026
    if-nez p3, :cond_0

    .line 1027
    const-string p3, ""

    .line 1030
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private saveToSim(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "number"
    .parameter "label"

    .prologue
    .line 1034
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "label"

    .prologue
    .line 1038
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 18
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "label"
    .parameter "appendEmail"

    .prologue
    .line 1056
    const/4 v12, 0x1

    .line 1057
    .local v12, resultCode:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v9

    .line 1058
    .local v9, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const-string v2, " "

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1059
    const/4 v11, 0x0

    .line 1060
    .local v11, name:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 1061
    iget-object v11, v9, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 1068
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    move-object/from16 v11, p1

    .line 1071
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1075
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->trimSIMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1076
    .local v15, trimedName:Ljava/lang/String;
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1077
    const/4 v10, 0x0

    .line 1078
    .local v10, displayName:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1079
    iget-object v10, v9, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 1085
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1087
    move-object/from16 v11, p1

    .line 1104
    .end local v10           #displayName:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-ne v12, v2, :cond_3

    .line 1105
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1106
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v2, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v2, "number1"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v2, "number2"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v2, "emails"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 1114
    .local v14, resultUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/htccontacts/util/UpdateSIMStatus;->processSIMUpdateErrorUri(Landroid/net/Uri;)I

    move-result v8

    .line 1116
    .local v8, code:I
    const/4 v2, 0x5

    if-ne v8, v2, :cond_8

    .line 1117
    const/4 v12, 0x3

    .end local v8           #code:I
    .end local v14           #resultUri:Landroid/net/Uri;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    move v13, v12

    .line 1152
    .end local v12           #resultCode:I
    .end local v15           #trimedName:Ljava/lang/String;
    .local v13, resultCode:I
    :goto_2
    return v13

    .line 1063
    .end local v13           #resultCode:I
    .restart local v12       #resultCode:I
    :cond_4
    const-string v2, "HtcViewContactDetailActivity"

    const-string v3, "saveToSim contactInfo null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v12, 0x4

    move v13, v12

    .line 1065
    .end local v12           #resultCode:I
    .restart local v13       #resultCode:I
    goto :goto_2

    .line 1081
    .end local v13           #resultCode:I
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v12       #resultCode:I
    .restart local v15       #trimedName:Ljava/lang/String;
    :cond_5
    const-string v2, "HtcViewContactDetailActivity"

    const-string v3, "saveToSim contactInfo null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v12, 0x4

    move v13, v12

    .line 1083
    .end local v12           #resultCode:I
    .restart local v13       #resultCode:I
    goto :goto_2

    .line 1089
    .end local v13           #resultCode:I
    .restart local v12       #resultCode:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->trimSIMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1090
    .local v16, trimedName1:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1092
    move-object/from16 v11, v16

    goto :goto_0

    .line 1095
    :cond_7
    move-object v11, v10

    goto :goto_0

    .line 1119
    .end local v10           #displayName:Ljava/lang/String;
    .end local v16           #trimedName1:Ljava/lang/String;
    .restart local v8       #code:I
    .restart local v14       #resultUri:Landroid/net/Uri;
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_8
    const/4 v2, 0x6

    if-ne v8, v2, :cond_a

    .line 1120
    if-eqz p5, :cond_9

    .line 1121
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 1123
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 1126
    :cond_a
    const/16 v2, 0x8

    if-ne v8, v2, :cond_3

    .line 1127
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mNoFreeSIMEmailFields:Z

    .line 1128
    if-nez p6, :cond_b

    .line 1129
    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 1132
    :cond_b
    const/4 v12, 0x5

    goto :goto_1
.end method

.method private sendContactVcard()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method private setPrimaryNumber(JLjava/lang/String;)V
    .locals 4
    .parameter "phoneId"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3900
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3901
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_super_primary"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3902
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3903
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/HtcContactInfo;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 3904
    return-void
.end method

.method private setPrimaryNumberProcess(JILjava/lang/String;)V
    .locals 8
    .parameter "phoneId"
    .parameter "type"
    .parameter "number"

    .prologue
    .line 3910
    const/4 v0, 0x2

    if-ne v0, p3, :cond_0

    .line 3911
    invoke-direct {p0, p3, p4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateDefaultCompositeSendMsgNumber(ILjava/lang/String;)V

    .line 3912
    invoke-direct {p0, p1, p2, p4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->setPrimaryNumber(JLjava/lang/String;)V

    .line 3933
    :goto_0
    return-void

    .line 3914
    :cond_0
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3916
    .local v6, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3917
    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3918
    const v7, 0x104000a

    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;ILjava/lang/String;J)V

    invoke-virtual {v6, v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3925
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetailActivity$9;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/htccontacts/HtcViewContactDetailActivity$9;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;JLjava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3931
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private showCatchInfoFromDialerService()V
    .locals 45

    .prologue
    .line 4641
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4808
    :cond_0
    :goto_0
    return-void

    .line 4645
    :cond_1
    const/16 v22, 0x0

    .line 4646
    .local v22, cData:Lcom/htc/service/dialer/ContactData;
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v19

    .line 4647
    .local v19, app:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    .line 4648
    .local v30, intent:Landroid/content/Intent;
    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 4649
    .local v21, bundle:Landroid/os/Bundle;
    if-eqz v21, :cond_0

    .line 4650
    const-string v3, "CONTACT_ID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 4651
    .local v28, id:J
    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/PeopleApp;->getDialerSrvContactInfo(J)Lcom/htc/service/dialer/ContactData;

    move-result-object v22

    .line 4652
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v28

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v43

    .line 4653
    .local v43, uri:Landroid/net/Uri;
    if-eqz v22, :cond_0

    .line 4656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 4659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4662
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4665
    .local v17, sDisplayName:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    move-object/from16 v35, v0

    .line 4666
    .local v35, phoneNumbers:[Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    move-object/from16 v36, v0

    .line 4667
    .local v36, phoneTypes:[I
    const/16 v34, 0x0

    .line 4668
    .local v34, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    if-eqz v35, :cond_5

    move-object/from16 v0, v35

    array-length v3, v0

    if-lez v3, :cond_5

    .line 4669
    new-instance v34, Ljava/util/ArrayList;

    .end local v34           #phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 4670
    .restart local v34       #phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/16 v26, 0x0

    .local v26, i:I
    :goto_1
    move-object/from16 v0, v35

    array-length v3, v0

    move/from16 v0, v26

    if-ge v0, v3, :cond_4

    .line 4671
    const/4 v10, 0x0

    .line 4672
    .local v10, isPrimary:Z
    if-nez v26, :cond_3

    .line 4674
    const/4 v10, 0x1

    .line 4678
    :goto_2
    aget v3, v36, v26

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getLableString(I)Ljava/lang/String;

    move-result-object v4

    .line 4680
    .local v4, label:Ljava/lang/String;
    const-string v3, "tel"

    aget-object v5, v35, v26

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 4682
    .local v8, phoneUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    aget-object v5, v35, v26

    const-wide/16 v6, -0x1

    aget v9, v36, v26

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v44

    .line 4683
    .local v44, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 4684
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v5, "personId"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4685
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v5, "number"

    aget-object v6, v35, v26

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4686
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v5, "name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4687
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v5, "numberType"

    aget v6, v36, v26

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4688
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v5, "fromDialer"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4690
    :cond_2
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v44

    iput-object v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 4692
    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4670
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 4676
    .end local v4           #label:Ljava/lang/String;
    .end local v8           #phoneUri:Landroid/net/Uri;
    .end local v44           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 4695
    .end local v10           #isPrimary:Z
    :cond_4
    invoke-static/range {v34 .. v34}, Lcom/android/htccontacts/HtcViewContactDetail;->DeDuplicatePhoneEntries(Ljava/util/ArrayList;)V

    .line 4696
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 4697
    .local v24, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4704
    .end local v24           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v26           #i:I
    .end local v27           #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz v34, :cond_6

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 4705
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildCompositeSendMessageEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v40

    .line 4706
    .local v40, sendMessageEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    if-eqz v40, :cond_6

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4708
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbCanAddToFavorite:Z

    .line 4709
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 4710
    .restart local v24       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4717
    .end local v24           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v40           #sendMessageEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    :cond_6
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    move-object/from16 v23, v0

    .line 4718
    .local v23, emailAddresses:[Ljava/lang/String;
    const/16 v33, 0x0

    .line 4719
    .local v33, mailViewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v32, 0x0

    .line 4721
    .local v32, mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    array-length v3, v0

    if-lez v3, :cond_b

    .line 4722
    new-instance v32, Ljava/util/ArrayList;

    .end local v32           #mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 4723
    .restart local v32       #mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_5
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v26

    if-ge v0, v3, :cond_9

    .line 4724
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x7f0a0174

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v23, v26

    if-nez v26, :cond_8

    const/4 v14, 0x1

    :goto_6
    const-wide/16 v15, -0x1

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v33

    .line 4729
    if-eqz v33, :cond_7

    .line 4731
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4723
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 4724
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 4735
    :cond_9
    if-eqz v32, :cond_b

    .line 4736
    invoke-static/range {v32 .. v32}, Lcom/android/htccontacts/HtcViewContactDetail;->DeDuplicateMailEntries(Ljava/util/ArrayList;)V

    .line 4737
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 4738
    .restart local v24       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v24, :cond_a

    .line 4739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 4747
    .end local v24           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v26           #i:I
    .end local v27           #i$:Ljava/util/Iterator;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/htc/service/dialer/ContactData;->isBlocked()Z

    move-result v31

    .line 4750
    .local v31, isSendToVoiceMail:Z
    invoke-virtual/range {v22 .. v22}, Lcom/htc/service/dialer/ContactData;->getRingtonePath()Ljava/lang/String;

    move-result-object v38

    .line 4753
    .local v38, ringTonePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 4754
    const v3, 0x7f0a01b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->addSeparatorHeader(I)V

    .line 4758
    :cond_c
    const-string v39, "ViewContact"

    .line 4759
    .local v39, sdefaultAction:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newRingToneEntry(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v37

    .line 4760
    .local v37, ringToneEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newSendToVoiceMailEntry(ZLandroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v41

    .line 4761
    .local v41, sendToVoiceMailEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v20, 0x1

    .line 4762
    .local v20, bEditable:Z
    const/16 v25, 0x0

    .line 4764
    .local v25, entryEdit:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildEditEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v25

    .line 4766
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildSetWidgetEntry2(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v42

    .line 4767
    .local v42, setWidgetEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-nez v37, :cond_d

    if-nez v41, :cond_d

    if-nez v25, :cond_d

    if-eqz v42, :cond_11

    .line 4772
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->hasSeparatorHeader()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    const v5, 0x7f0a01b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4778
    :goto_8
    if-eqz v25, :cond_e

    .line 4779
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 4780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4784
    :cond_e
    if-eqz v37, :cond_f

    if-eqz v34, :cond_f

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 4785
    const/4 v3, 0x0

    move-object/from16 v0, v37

    iput-boolean v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 4786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4789
    :cond_f
    if-eqz v41, :cond_10

    if-eqz v34, :cond_10

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 4790
    const/4 v3, 0x0

    move-object/from16 v0, v41

    iput-boolean v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 4791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4794
    :cond_10
    if-eqz v42, :cond_11

    .line 4795
    const/4 v3, 0x0

    move-object/from16 v0, v42

    iput-boolean v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 4796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4801
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-nez v3, :cond_13

    .line 4802
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {v3, v5, v6}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 4806
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 4807
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->invalidate()V

    goto/16 :goto_0

    .line 4775
    :cond_12
    const v3, 0x7f0a01b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->addSeparatorHeader(I)V

    goto/16 :goto_8

    .line 4804
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->setSections(Ljava/util/ArrayList;)V

    goto :goto_9
.end method

.method private showSaveToSIMInformationDialog(II)V
    .locals 8
    .parameter "saveToSimResultCode"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    .line 3230
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3232
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3233
    const v5, 0x7f0a022b

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3240
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3241
    .local v2, message:Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getSaveToSimResultString(I)Ljava/lang/String;

    move-result-object v3

    .line 3242
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3244
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    :cond_0
    if-le p2, v6, :cond_3

    .line 3247
    const v5, 0x7f0a024b

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3248
    .local v4, temp:Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    .end local v4           #temp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3258
    const v5, 0x7f0a014f

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3260
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 3261
    .local v1, d:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3262
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 3263
    return-void

    .line 3234
    .end local v1           #d:Landroid/app/Dialog;
    .end local v2           #message:Ljava/lang/StringBuilder;
    .end local v3           #result:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3235
    const v5, 0x7f0a022c

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 3237
    :cond_2
    const v5, 0x7f0a022a

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 3250
    .restart local v2       #message:Ljava/lang/StringBuilder;
    .restart local v3       #result:Ljava/lang/String;
    :cond_3
    if-ne p2, v6, :cond_4

    .line 3251
    const v5, 0x7f0a024c

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3254
    :cond_4
    const v5, 0x7f0a024d

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private syncEASContacts()V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.eas.syncContacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 375
    return-void
.end method

.method private tmoImChat()V
    .locals 7

    .prologue
    .line 4238
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getTmoImChatData()Ljava/util/ArrayList;

    move-result-object v3

    .line 4239
    .local v3, tmoImChatData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4255
    :cond_0
    :goto_0
    return-void

    .line 4240
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 4241
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/util/ImData;

    invoke-virtual {v4}, Lcom/android/htccontacts/util/ImData;->getIntentIm()Landroid/content/Intent;

    move-result-object v2

    .line 4242
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 4244
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4245
    :catch_0
    move-exception v1

    .line 4246
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "HtcViewContactDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmoImChat No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4249
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->createTmoImChatDialog(Ljava/util/ArrayList;)Landroid/app/Dialog;

    move-result-object v0

    .line 4250
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 4251
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4252
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method private tmoVideoCall()V
    .locals 8

    .prologue
    .line 4257
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getTmoVideoCallData()Ljava/util/ArrayList;

    move-result-object v4

    .line 4258
    .local v4, tmoVideoCallData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4280
    :cond_0
    :goto_0
    return-void

    .line 4259
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 4260
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/util/ImData;

    .line 4261
    .local v2, imData:Lcom/android/htccontacts/util/ImData;
    const/4 v3, 0x0

    .line 4262
    .local v3, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 4263
    invoke-virtual {v2}, Lcom/android/htccontacts/util/ImData;->getIntentYahooVideoCall()Landroid/content/Intent;

    move-result-object v3

    .line 4267
    :goto_1
    if-eqz v3, :cond_0

    .line 4269
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4270
    :catch_0
    move-exception v1

    .line 4271
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "HtcViewContactDetailActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmoVideoCall No activity found for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4265
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-virtual {v2}, Lcom/android/htccontacts/util/ImData;->getIntentIm()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    .line 4274
    .end local v2           #imData:Lcom/android/htccontacts/util/ImData;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {p0, v4}, Lcom/android/htccontacts/util/ContactsUtils;->createTmoVideoCallDialog(Landroid/app/Activity;Ljava/util/ArrayList;)Landroid/app/Dialog;

    move-result-object v0

    .line 4275
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 4276
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4277
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "specialCharsLength"

    .prologue
    .line 3266
    const-string v2, ""

    .line 3267
    .local v2, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez p1, :cond_0

    .line 3268
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3269
    .local v0, chars:[C
    invoke-static {v0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getCharsLength([CI)I

    move-result v1

    .line 3270
    .local v1, charsLength:I
    new-instance v2, Ljava/lang/String;

    .end local v2           #result:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 3272
    .end local v0           #chars:[C
    .end local v1           #charsLength:I
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private trimSIMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 4569
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getSIMMaxAlphaTagLength()I

    move-result v0

    .line 4570
    .local v0, maxAlphaTagLength:I
    invoke-static {p1, v0}, Lcom/android/htccontacts/util/ContactsUtils;->trimSIMText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4571
    .local v1, trimName:Ljava/lang/String;
    return-object v1
.end method

.method private updateDefaultCompositeSendMsgNumber(I)V
    .locals 13
    .parameter "which"

    .prologue
    .line 3954
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 3955
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-nez v1, :cond_0

    .line 4023
    :goto_0
    return-void

    .line 3956
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3957
    .local v4, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .line 3958
    .local v3, operation:Landroid/content/ContentProviderOperation;
    const/4 v0, 0x0

    .line 3959
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 3960
    .local v8, values:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 3963
    .local v9, where:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #where:Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3964
    .restart local v9       #where:Ljava/lang/StringBuilder;
    const-string v10, "raw_contact_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    const-string v10, " IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3966
    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3967
    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->getRawContactIdsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3969
    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3970
    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    const-string v10, " IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3972
    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3973
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getAllPhoneDataIdString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3974
    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3975
    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    const-string v10, "data7"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    const-string v10, " NOT NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3978
    const-string v10, "data7"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3979
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3980
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3981
    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 3982
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 3983
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3985
    const/4 v3, 0x0

    .line 3986
    const/4 v0, 0x0

    .line 3987
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 3988
    .restart local v8       #values:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 3990
    iget-object v10, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "number"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3992
    .local v6, sChosenNumber:Ljava/lang/String;
    new-instance v11, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v12, "type"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10, v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getPhoneNumberDataIdString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3996
    .local v7, sChosenNumberIds:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #where:Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3997
    .restart local v9       #where:Ljava/lang/StringBuilder;
    const-string v10, "raw_contact_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3998
    const-string v10, " IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4000
    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->getRawContactIdsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4001
    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4002
    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4003
    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4004
    const-string v10, " IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4006
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4008
    const-string v10, "data7"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4009
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 4010
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 4011
    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 4012
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 4013
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4016
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 4017
    :catch_0
    move-exception v5

    .line 4018
    .local v5, re:Landroid/os/RemoteException;
    const-string v10, "HtcViewContactDetailActivity"

    const-string v11, "applyBatch"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4019
    .end local v5           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 4020
    .local v2, oae:Landroid/content/OperationApplicationException;
    const-string v10, "HtcViewContactDetailActivity"

    const-string v11, "applyBatch"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateDefaultCompositeSendMsgNumber(ILjava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "number"

    .prologue
    .line 3936
    const/4 v3, -0x1

    .line 3937
    .local v3, which:I
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3938
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3939
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3940
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3941
    .local v0, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "number"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3942
    move v3, v1

    .line 3948
    .end local v0           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    if-ltz v3, :cond_1

    .line 3949
    invoke-direct {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateDefaultCompositeSendMsgNumber(I)V

    .line 3951
    :cond_1
    return-void

    .line 3939
    .restart local v0       #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateRingTone(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 3644
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3650
    :goto_0
    return-void

    .line 3645
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3646
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "custom_ringtone"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3648
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mUpdateHandler:Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSendVoicemail()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3653
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 3654
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    if-eqz v4, :cond_1

    move v1, v2

    .line 3657
    .local v1, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3676
    :cond_0
    :goto_1
    return-void

    .end local v1           #value:I
    :cond_1
    move v1, v3

    .line 3654
    goto :goto_0

    .line 3666
    .restart local v1       #value:I
    :cond_2
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3667
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    invoke-static {p0, v4, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 3672
    :goto_2
    if-nez v1, :cond_6

    const v2, 0x7f0a030d

    :goto_3
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3673
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3674
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dataChanged()V

    goto :goto_1

    .line 3669
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    if-nez v5, :cond_5

    move v2, v3

    :cond_5
    invoke-static {p0, v4, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_2

    .line 3672
    :cond_6
    const v2, 0x7f0a030c

    goto :goto_3
.end method

.method private updateVIP()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3679
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 3680
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsVIP:Z

    if-eqz v4, :cond_1

    move v1, v2

    .line 3683
    .local v1, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3702
    :cond_0
    :goto_1
    return-void

    .end local v1           #value:I
    :cond_1
    move v1, v3

    .line 3680
    goto :goto_0

    .line 3692
    .restart local v1       #value:I
    :cond_2
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3693
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsVIP:Z

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    invoke-static {p0, v4, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifyVIPForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 3698
    :goto_2
    if-nez v1, :cond_6

    const v2, 0x7f0a0357

    :goto_3
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3699
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3700
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dataChanged()V

    goto :goto_1

    .line 3695
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsVIP:Z

    if-nez v5, :cond_5

    move v2, v3

    :cond_5
    invoke-static {p0, v4, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifyVIP(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_2

    .line 3698
    :cond_6
    const v2, 0x7f0a0356

    goto :goto_3
.end method

.method private valid(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 2267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    const/4 v0, 0x1

    .line 2270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterDelete(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 4390
    return-void
.end method

.method public beforeDelete()V
    .locals 0

    .prologue
    .line 4394
    return-void
.end method

.method protected buildEntries()V
    .locals 109

    .prologue
    .line 1347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 2037
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1350
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbCanAddToFavorite:Z

    .line 1355
    new-instance v79, Ljava/util/ArrayList;

    invoke-direct/range {v79 .. v79}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    .local v79, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v86, Ljava/util/ArrayList;

    invoke-direct/range {v86 .. v86}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v86, sendMessageEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v73, Ljava/util/ArrayList;

    invoke-direct/range {v73 .. v73}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .local v73, mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v81, Ljava/util/ArrayList;

    invoke-direct/range {v81 .. v81}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v81, postalEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCustomNumberLabel:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1361
    const/16 v97, 0x0

    .line 1362
    .local v97, tmoVideoCall:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v96, 0x0

    .line 1366
    .local v96, tmoImChat:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    new-instance v92, Ljava/util/ArrayList;

    invoke-direct/range {v92 .. v92}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v92, skypeVideoCallEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v90, Ljava/util/ArrayList;

    invoke-direct/range {v90 .. v90}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .local v90, skypeCallEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v91, Ljava/util/ArrayList;

    invoke-direct/range {v91 .. v91}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v91, skypeMessageEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v69, Ljava/util/ArrayList;

    invoke-direct/range {v69 .. v69}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    .local v69, imEnableEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    .local v89, sipAddressEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v70, Ljava/util/ArrayList;

    invoke-direct/range {v70 .. v70}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    .local v70, imEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildVIPEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v105

    .line 1378
    .local v105, vipEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    .local v76, noteEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v77, Ljava/util/ArrayList;

    invoke-direct/range {v77 .. v77}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    .local v77, organizationEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v75, Ljava/util/ArrayList;

    invoke-direct/range {v75 .. v75}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v75, nicknameEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v107, Ljava/util/ArrayList;

    invoke-direct/range {v107 .. v107}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    .local v107, websiteEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    .local v54, eventEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildGroupsEntries()Ljava/util/ArrayList;

    move-result-object v61

    .line 1385
    .local v61, groupsEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v108, Ljava/util/ArrayList;

    invoke-direct/range {v108 .. v108}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v108, yomiganaEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v43, customEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildRingToneEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v83

    .line 1393
    .local v83, ringToneEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildSendToVoiceMailEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v87

    .line 1394
    .local v87, sendToVoiceMailEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v52, 0x0

    .line 1396
    .local v52, entryEdit:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v42

    .line 1398
    .local v42, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v42, :cond_5

    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v38, 0x1

    .line 1399
    .local v38, bEditable:Z
    :goto_1
    if-eqz v38, :cond_2

    .line 1400
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildEditEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v52

    .line 1403
    :cond_2
    if-eqz v61, :cond_6

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1404
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbInGroup:Z

    .line 1410
    :goto_2
    const/16 v88, 0x0

    .line 1412
    .local v88, setWidgetEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildSetWidgetEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v88

    .line 1417
    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v49

    .line 1418
    .local v49, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v49, :cond_0

    .line 1419
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :cond_3
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/Entity;

    .line 1420
    .local v50, entity:Landroid/content/Entity;
    invoke-virtual/range {v50 .. v50}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v48

    .line 1421
    .local v48, entValues:Landroid/content/ContentValues;
    const-string v4, "account_type"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1422
    .local v37, accountType:Ljava/lang/String;
    const-string v4, "data_set"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1423
    .local v45, dataSet:Ljava/lang/String;
    const-string v4, "_id"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1425
    .local v25, rawContactId:J
    invoke-virtual/range {v50 .. v50}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :cond_4
    :goto_3
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/content/Entity$NamedContentValues;

    .line 1426
    .local v95, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v53, v0

    .line 1427
    .local v53, entryValues:Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1429
    const-string v4, "mimetype"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1430
    .local v28, mimetype:Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 1433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v93

    .line 1434
    .local v93, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v93

    move-object/from16 v1, v37

    move-object/from16 v2, v45

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v46

    .line 1436
    .local v46, datakind:Lcom/android/htccontacts/model/DataKind;
    const-string v4, "bla"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getKindOrFallback - accountType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mimeType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    if-nez v46, :cond_7

    .line 1438
    const-string v4, "HtcViewContactDetailActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DataKind is null - accountType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1398
    .end local v25           #rawContactId:J
    .end local v28           #mimetype:Ljava/lang/String;
    .end local v37           #accountType:Ljava/lang/String;
    .end local v38           #bEditable:Z
    .end local v45           #dataSet:Ljava/lang/String;
    .end local v46           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v48           #entValues:Landroid/content/ContentValues;
    .end local v49           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v50           #entity:Landroid/content/Entity;
    .end local v53           #entryValues:Landroid/content/ContentValues;
    .end local v88           #setWidgetEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v93           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v95           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_5
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 1406
    .restart local v38       #bEditable:Z
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbInGroup:Z

    goto/16 :goto_2

    .line 1441
    .restart local v25       #rawContactId:J
    .restart local v28       #mimetype:Ljava/lang/String;
    .restart local v37       #accountType:Ljava/lang/String;
    .restart local v45       #dataSet:Ljava/lang/String;
    .restart local v46       #datakind:Lcom/android/htccontacts/model/DataKind;
    .restart local v48       #entValues:Landroid/content/ContentValues;
    .restart local v49       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v50       #entity:Landroid/content/Entity;
    .restart local v53       #entryValues:Landroid/content/ContentValues;
    .restart local v88       #setWidgetEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .restart local v93       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .restart local v95       #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_7
    const-string v4, "bla"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DataKind: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v46

    iget-object v14, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v12, 0x0

    .line 1444
    .local v12, bFacebook:Z
    const-string v4, "com.htc.android.myphonebook"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v39, 0x1

    .line 1446
    .local v39, bMyPhonebook:Z
    :goto_4
    const-string v4, "_id"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1447
    .local v7, id:J
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1449
    .local v9, uri:Landroid/net/Uri;
    const-string v4, "is_super_primary"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v11, 0x1

    .line 1452
    .local v11, isSuperPrimary:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v13, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v53

    invoke-static {v4, v0, v1, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildActionString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v5

    .line 1453
    .local v5, sLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    move-object/from16 v0, v46

    move-object/from16 v1, v53

    invoke-static {v4, v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v6

    .line 1457
    .local v6, sData:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1458
    const/4 v10, -0x1

    .line 1459
    .local v10, nType:I
    const-string v4, "data2"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1462
    :try_start_0
    const-string v4, "data2"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1463
    if-nez v10, :cond_9

    .line 1464
    const-string v4, "data3"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 1465
    .local v84, sCustomLabel:Ljava/lang/String;
    invoke-static/range {v84 .. v84}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v13, 0x7f0a008f

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 1467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v13, 0x7f0a007a

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v17, 0x7f0a0066

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1469
    :cond_8
    invoke-static/range {v84 .. v84}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCustomNumberLabel:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v84

    invoke-virtual {v4, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    .end local v84           #sCustomLabel:Ljava/lang/String;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static/range {v4 .. v12}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    .line 1480
    .local v99, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v39, :cond_d

    .line 1481
    const/4 v4, 0x1

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromMyPhonebook:Z

    .line 1482
    const-string v4, "data14"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1483
    .local v58, groupID:Ljava/lang/String;
    if-eqz v58, :cond_d

    .line 1484
    const/16 v60, 0x0

    .line 1485
    .local v60, groupTypeIcon:[B
    const/16 v59, 0x0

    .line 1486
    .local v59, groupType:Ljava/lang/String;
    const-string v16, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\'"

    .line 1488
    .local v16, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v58

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 1491
    .local v40, c:Landroid/database/Cursor;
    if-eqz v40, :cond_a

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    .line 1492
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToNext()Z

    .line 1493
    const-string v4, "system_id"

    move-object/from16 v0, v40

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v40

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 1494
    const-string v4, "notes"

    move-object/from16 v0, v40

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v40

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v60

    .line 1495
    const-string v4, "HtcViewContactDetailActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "grouop Type of number "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v59

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_a
    if-eqz v40, :cond_b

    .line 1498
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 1500
    :cond_b
    const-string v4, "CTG"

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1501
    const v4, 0x208006a

    move-object/from16 v0, v99

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1505
    :cond_c
    :goto_7
    if-eqz v60, :cond_d

    .line 1506
    move-object/from16 v0, v60

    move-object/from16 v1, v99

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->groupTypeIcon:[B

    .line 1510
    .end local v16           #where:Ljava/lang/String;
    .end local v40           #c:Landroid/database/Cursor;
    .end local v58           #groupID:Ljava/lang/String;
    .end local v59           #groupType:Ljava/lang/String;
    .end local v60           #groupTypeIcon:[B
    :cond_d
    move-object/from16 v0, v99

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v10}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->addInfoIntoPhoneIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1511
    move-object/from16 v0, v28

    move-object/from16 v1, v99

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 1513
    const-string v4, "data7"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    const-string v13, "data7"

    move-object/from16 v0, v53

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v4, v13, :cond_e

    .line 1515
    const/4 v4, 0x1

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->defaultMsgNumberOfPhoneType:Z

    .line 1518
    :cond_e
    if-eqz v99, :cond_4

    .line 1519
    move-object/from16 v0, v79

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1444
    .end local v5           #sLabel:Ljava/lang/String;
    .end local v6           #sData:Ljava/lang/String;
    .end local v7           #id:J
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #nType:I
    .end local v11           #isSuperPrimary:Z
    .end local v39           #bMyPhonebook:Z
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_f
    const/16 v39, 0x0

    goto/16 :goto_4

    .line 1449
    .restart local v7       #id:J
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v39       #bMyPhonebook:Z
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 1473
    .restart local v5       #sLabel:Ljava/lang/String;
    .restart local v6       #sData:Ljava/lang/String;
    .restart local v10       #nType:I
    .restart local v11       #isSuperPrimary:Z
    :catch_0
    move-exception v47

    .line 1474
    .local v47, e:Ljava/lang/Exception;
    const-string v4, "HtcViewContactDetailActivity"

    const-string v13, "buildEntries e: "

    move-object/from16 v0, v47

    invoke-static {v4, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1475
    const/4 v10, -0x1

    goto/16 :goto_6

    .line 1502
    .end local v47           #e:Ljava/lang/Exception;
    .restart local v16       #where:Ljava/lang/String;
    .restart local v40       #c:Landroid/database/Cursor;
    .restart local v58       #groupID:Ljava/lang/String;
    .restart local v59       #groupType:Ljava/lang/String;
    .restart local v60       #groupTypeIcon:[B
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_11
    const-string v4, "OTG"

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1503
    const v4, 0x208006a

    move-object/from16 v0, v99

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    goto :goto_7

    .line 1521
    .end local v10           #nType:I
    .end local v16           #where:Ljava/lang/String;
    .end local v40           #c:Landroid/database/Cursor;
    .end local v58           #groupID:Ljava/lang/String;
    .end local v59           #groupType:Ljava/lang/String;
    .end local v60           #groupTypeIcon:[B
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_12
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1522
    const/16 v99, 0x0

    .line 1523
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v42, :cond_13

    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v4, 0x7f0a0174

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v19, v6

    move/from16 v20, v11

    move-wide/from16 v21, v7

    move/from16 v24, v12

    invoke-static/range {v17 .. v24}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    .line 1530
    :goto_8
    if-eqz v99, :cond_4

    .line 1531
    move-object/from16 v0, v73

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1527
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v4, 0x7f0a0174

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v23, 0x0

    move-object/from16 v19, v6

    move/from16 v20, v11

    move-wide/from16 v21, v7

    move/from16 v24, v12

    invoke-static/range {v17 .. v24}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    goto :goto_8

    .line 1533
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_14
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1534
    const v20, 0x7f020076

    const/16 v23, -0x1

    move-object/from16 v17, v9

    move-wide/from16 v18, v7

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-static/range {v17 .. v23}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newFindPostalEntry(Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    .line 1535
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v99, :cond_4

    .line 1536
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v78

    .line 1537
    .local v78, peopleApp:Lcom/android/htccontacts/PeopleApp;
    move-object/from16 v0, v99

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v0, v78

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lcom/android/htccontacts/PeopleApp;->isIntentSupported(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1538
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    if-nez v4, :cond_15

    .line 1539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1540
    const/4 v4, 0x1

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1543
    :cond_15
    move-object/from16 v0, v81

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1545
    .end local v78           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_16
    const-string v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v53

    invoke-static {v4, v5, v6, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newImEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    .line 1548
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v99, :cond_4

    .line 1549
    const/16 v4, 0x25

    move-object/from16 v0, v99

    iget v13, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v4, v13, :cond_17

    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    if-eqz v4, :cond_17

    .line 1550
    move-object/from16 v0, v69

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1552
    :cond_17
    move-object/from16 v0, v70

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1555
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_18
    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1556
    invoke-static {v6}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1557
    .local v56, filterText:Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1558
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x1

    if-ne v4, v13, :cond_19

    const/4 v4, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v13, 0xa

    if-eq v4, v13, :cond_4

    .line 1561
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v56

    invoke-static {v4, v0, v9}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    .line 1562
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v99, :cond_4

    .line 1563
    move-object/from16 v0, v76

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1565
    .end local v56           #filterText:Ljava/lang/String;
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1a
    const-string v4, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1566
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1567
    :cond_1b
    const/16 v4, 0x16

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newOrganizationEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    .line 1568
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v99, :cond_4

    .line 1569
    move-object/from16 v0, v77

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1572
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1c
    const-string v4, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1574
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1575
    new-instance v99, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v99 .. v99}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1576
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v99

    iput-object v5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1577
    move-object/from16 v0, v99

    iput-object v6, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1578
    const/4 v4, 0x0

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1579
    const/16 v4, 0x1a

    move-object/from16 v0, v99

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1580
    if-eqz v99, :cond_4

    .line 1581
    move-object/from16 v0, v75

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1584
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1d
    const-string v4, "vnd.android.cursor.item/website"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1585
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xda

    if-eq v4, v13, :cond_4

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x1b

    if-eq v4, v13, :cond_4

    .line 1589
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1590
    new-instance v99, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v99 .. v99}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1591
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v99

    iput-object v5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1592
    move-object/from16 v0, v99

    iput-object v6, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1593
    const/4 v4, 0x0

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1594
    const/16 v4, 0x17

    move-object/from16 v0, v99

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1596
    :try_start_1
    new-instance v106, Landroid/net/WebAddress;

    move-object/from16 v0, v99

    iget-object v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v106, webAddress:Landroid/net/WebAddress;
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual/range {v106 .. v106}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v99

    iput-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1599
    const/4 v4, 0x1

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1603
    .end local v106           #webAddress:Landroid/net/WebAddress;
    :goto_9
    move-object/from16 v0, v107

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1600
    :catch_1
    move-exception v47

    .line 1601
    .local v47, e:Landroid/net/ParseException;
    const-string v4, "HtcViewContactDetailActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t parse website: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v99

    iget-object v14, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1604
    .end local v47           #e:Landroid/net/ParseException;
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1e
    const-string v4, "vnd.android.cursor.item/htc_event_v2"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1611
    const-string v4, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "com.facebook.auth.login"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    const/4 v12, 0x1

    .line 1614
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v53

    invoke-static {v4, v5, v0, v12}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newHtcEventEntry(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v99

    .line 1616
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v99, :cond_4

    .line 1617
    move-object/from16 v0, v54

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1611
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_20
    const/4 v12, 0x0

    goto :goto_a

    .line 1619
    :cond_21
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1620
    const-string v4, "sourceid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 1625
    .local v85, sSourceId:Ljava/lang/String;
    sget-boolean v4, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v4, :cond_4

    .line 1627
    const-string v4, "data7"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1628
    .local v19, yomiFirstName:Ljava/lang/String;
    const-string v4, "data9"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1629
    .local v20, yomiLastName:Ljava/lang/String;
    const-string v4, "data2"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1630
    .local v21, firstName:Ljava/lang/String;
    const-string v4, "data3"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1632
    .local v22, lastName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1634
    :cond_22
    if-eqz v108, :cond_4

    .line 1636
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_23
    move-object/from16 v17, p0

    move-object/from16 v18, v108

    .line 1638
    invoke-direct/range {v17 .. v22}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->IsDuplicateYomiganaEntries(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1640
    new-instance v104, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v104 .. v104}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1641
    .local v104, viewEntryYomigana:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v104, :cond_4

    .line 1644
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/android/htccontacts/util/NameUtuls;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v104

    iput-object v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1645
    move-object/from16 v0, v104

    iget-object v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->decideYomiganaDisplayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v71

    .line 1646
    .local v71, isGivenNameFirst:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v71

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildYomiganaName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v104

    iput-object v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1647
    move-object/from16 v0, v104

    iget-object v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v104

    iget-object v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1649
    const/4 v4, 0x0

    move-object/from16 v0, v104

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1650
    const/16 v4, 0x13

    move-object/from16 v0, v104

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1651
    move-object/from16 v0, v108

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1657
    .end local v19           #yomiFirstName:Ljava/lang/String;
    .end local v20           #yomiLastName:Ljava/lang/String;
    .end local v21           #firstName:Ljava/lang/String;
    .end local v22           #lastName:Ljava/lang/String;
    .end local v71           #isGivenNameFirst:Z
    .end local v85           #sSourceId:Ljava/lang/String;
    .end local v104           #viewEntryYomigana:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_24
    const-string v4, "vnd.android.cursor.item/com.skype.android.videocall.action"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->getImDatas()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v27, v9

    invoke-static/range {v23 .. v28}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newSkypeVideoCallEntry(Landroid/content/Context;Ljava/util/ArrayList;JLandroid/net/Uri;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v103

    .line 1659
    .local v103, viewEntrySkypeVideoCall:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v103, :cond_4

    .line 1660
    move-object/from16 v0, v92

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1662
    .end local v103           #viewEntrySkypeVideoCall:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_25
    const-string v4, "vnd.android.cursor.item/com.skype.android.skypecall.action"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->getImDatas()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v27, v9

    invoke-static/range {v23 .. v28}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newSkypeCallEntry(Landroid/content/Context;Ljava/util/ArrayList;JLandroid/net/Uri;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v101

    .line 1664
    .local v101, viewEntrySkypeCall:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v101, :cond_4

    .line 1665
    move-object/from16 v0, v90

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1667
    .end local v101           #viewEntrySkypeCall:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_26
    const-string v4, "vnd.android.cursor.item/com.skype.android.chat.action"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->getImDatas()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v27, v9

    invoke-static/range {v23 .. v28}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newSkypeImEntry(Landroid/content/Context;Ljava/util/ArrayList;JLandroid/net/Uri;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v102

    .line 1669
    .local v102, viewEntrySkypeIm:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v102, :cond_4

    .line 1670
    move-object/from16 v0, v91

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1672
    .end local v102           #viewEntrySkypeIm:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_27
    const-string v4, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1673
    const-string v4, "data2"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1674
    .local v10, nType:Ljava/lang/Integer;
    if-eqz v10, :cond_28

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 1675
    .local v35, sipType:I
    :goto_b
    const v4, 0x7f0a039b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-wide/from16 v32, v7

    move-object/from16 v34, v9

    move/from16 v36, v11

    invoke-static/range {v29 .. v36}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newSipAddressEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v100

    .line 1677
    .local v100, viewEntrySipAddress:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v89, :cond_4

    .line 1678
    move-object/from16 v0, v89

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1674
    .end local v35           #sipType:I
    .end local v100           #viewEntrySipAddress:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_28
    const/16 v35, -0x1

    goto :goto_b

    .line 1681
    .end local v10           #nType:Ljava/lang/Integer;
    :cond_29
    const/16 v94, 0x0

    .line 1682
    .local v94, status:Lcom/android/htccontacts/util/DataStatus;
    const-string v4, "data1"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1683
    .local v98, uid:Ljava/lang/String;
    const-string v74, "none"

    .line 1684
    .local v74, matchBaseOn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mObjectLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1687
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mExtStatuses:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2e

    .line 1689
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mExtStatuses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v67

    .local v67, i$:Ljava/util/Iterator;
    :cond_2a
    :goto_c
    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;

    .line 1691
    .local v55, extStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    const/16 v80, 0x0

    .line 1692
    .local v80, possibleStatus:Lcom/android/htccontacts/util/DataStatus;
    if-eqz v98, :cond_2d

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->uid:Ljava/lang/String;

    move-object/from16 v0, v98

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1693
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    move-object/from16 v80, v0

    .line 1694
    const-string v74, "uid"

    .line 1700
    :cond_2b
    :goto_d
    if-eqz v80, :cond_2c

    if-eqz v94, :cond_2c

    .line 1701
    invoke-virtual/range {v80 .. v80}, Lcom/android/htccontacts/util/DataStatus;->getTimestamp()J

    move-result-wide v14

    invoke-virtual/range {v94 .. v94}, Lcom/android/htccontacts/util/DataStatus;->getTimestamp()J

    move-result-wide v17

    cmp-long v4, v14, v17

    if-lez v4, :cond_2c

    .line 1702
    move-object/from16 v94, v80

    .line 1705
    :cond_2c
    if-nez v94, :cond_2a

    .line 1706
    move-object/from16 v94, v80

    goto :goto_c

    .line 1696
    :cond_2d
    move-object/from16 v0, v55

    iget-wide v14, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->dataId:J

    cmp-long v4, v7, v14

    if-nez v4, :cond_2b

    .line 1697
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    move-object/from16 v80, v0

    .line 1698
    const-string v74, "dataId"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    .line 1709
    .end local v55           #extStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    .end local v67           #i$:Ljava/util/Iterator;
    .end local v80           #possibleStatus:Lcom/android/htccontacts/util/DataStatus;
    :catch_2
    move-exception v41

    .line 1710
    .local v41, cme:Ljava/util/ConcurrentModificationException;
    :try_start_4
    const-string v4, "HtcViewContactDetailActivity"

    const-string v14, "buildEntries"

    move-object/from16 v0, v41

    invoke-static {v4, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    const/16 v94, 0x0

    .line 1717
    .end local v41           #cme:Ljava/util/ConcurrentModificationException;
    :cond_2e
    :goto_e
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1719
    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/htccontacts/model/DataKind;->actionBodySocial:Z

    if-eqz v4, :cond_34

    if-eqz v94, :cond_34

    const/16 v63, 0x1

    .line 1720
    .local v63, hasSocial:Z
    :goto_f
    const/16 v44, 0x0

    .line 1721
    .local v44, data:Ljava/lang/String;
    const/16 v57, 0x0

    .line 1722
    .local v57, footerLine:Ljava/lang/String;
    const/16 v68, 0x0

    .line 1723
    .local v68, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v63, :cond_2f

    .line 1724
    invoke-virtual/range {v94 .. v94}, Lcom/android/htccontacts/util/DataStatus;->getPresence()I

    move-result v82

    .line 1725
    .local v82, presence:I
    invoke-virtual/range {v94 .. v94}, Lcom/android/htccontacts/util/DataStatus;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1726
    invoke-virtual/range {v94 .. v94}, Lcom/android/htccontacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    .line 1727
    move-object/from16 v0, v94

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1731
    .end local v82           #presence:I
    :cond_2f
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/htccontacts/model/DataKind;->resPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1732
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/htccontacts/model/DataKind;->resPackageName:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcContactInfo;->getPackageIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v68

    .line 1737
    :cond_30
    if-nez v44, :cond_31

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/htccontacts/model/DataKind;->actionBodySocial:Z

    if-eqz v4, :cond_4

    .line 1738
    :cond_31
    new-instance v99, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v99 .. v99}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1739
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v99

    iput-wide v7, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 1740
    move-object/from16 v0, v98

    move-object/from16 v1, v99

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uid:Ljava/lang/String;

    .line 1741
    move-object/from16 v0, v99

    iput-object v5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1742
    if-eqz v44, :cond_35

    .end local v44           #data:Ljava/lang/String;
    :goto_10
    move-object/from16 v0, v44

    move-object/from16 v1, v99

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1743
    move-object/from16 v0, v57

    move-object/from16 v1, v99

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 1744
    move-object/from16 v0, v99

    iput-object v9, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1745
    const/4 v4, 0x1

    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1746
    const/16 v4, 0x1d

    move-object/from16 v0, v99

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1747
    move-object/from16 v0, v28

    move-object/from16 v1, v99

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 1748
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v4, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v99

    iput-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1749
    const/4 v4, -0x1

    move-object/from16 v0, v99

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1750
    const/4 v4, -0x1

    move-object/from16 v0, v99

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1751
    move-object/from16 v0, v68

    move-object/from16 v1, v99

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->customDrawable:Landroid/graphics/drawable/Drawable;

    .line 1754
    const-string v4, "vnd.android.cursor.item/vnd.facebook.profile"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1756
    const/16 v62, 0x0

    .line 1757
    .local v62, hasHtc:Z
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v72

    .local v72, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    :cond_32
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1758
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1759
    .local v47, e:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const-string v4, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    move-object/from16 v0, v47

    iget-object v13, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1760
    const/16 v62, 0x1

    .line 1764
    .end local v47           #e:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_33
    if-nez v62, :cond_4

    .line 1766
    move-object/from16 v0, v43

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1712
    .end local v57           #footerLine:Ljava/lang/String;
    .end local v62           #hasHtc:Z
    .end local v63           #hasSocial:Z
    .end local v68           #icon:Landroid/graphics/drawable/Drawable;
    .end local v72           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :catch_3
    move-exception v47

    .line 1713
    .local v47, e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "HtcViewContactDetailActivity"

    const-string v14, "buildEntries"

    move-object/from16 v0, v47

    invoke-static {v4, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    const/16 v94, 0x0

    goto/16 :goto_e

    .line 1717
    .end local v47           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 1719
    :cond_34
    const/16 v63, 0x0

    goto/16 :goto_f

    .restart local v44       #data:Ljava/lang/String;
    .restart local v57       #footerLine:Ljava/lang/String;
    .restart local v63       #hasSocial:Z
    .restart local v68       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v99       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_35
    move-object/from16 v44, v6

    .line 1742
    goto/16 :goto_10

    .line 1769
    .end local v44           #data:Ljava/lang/String;
    :cond_36
    const-string v4, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1771
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v72

    .restart local v72       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    :cond_37
    :goto_11
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1772
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1773
    .local v47, e:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const-string v4, "vnd.android.cursor.item/vnd.facebook.profile"

    move-object/from16 v0, v47

    iget-object v13, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1774
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 1777
    .end local v47           #e:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_38
    move-object/from16 v0, v43

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1780
    .end local v72           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    :cond_39
    move-object/from16 v0, v43

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1789
    .end local v5           #sLabel:Ljava/lang/String;
    .end local v6           #sData:Ljava/lang/String;
    .end local v7           #id:J
    .end local v9           #uri:Landroid/net/Uri;
    .end local v11           #isSuperPrimary:Z
    .end local v12           #bFacebook:Z
    .end local v25           #rawContactId:J
    .end local v28           #mimetype:Ljava/lang/String;
    .end local v37           #accountType:Ljava/lang/String;
    .end local v39           #bMyPhonebook:Z
    .end local v45           #dataSet:Ljava/lang/String;
    .end local v46           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v48           #entValues:Landroid/content/ContentValues;
    .end local v50           #entity:Landroid/content/Entity;
    .end local v53           #entryValues:Landroid/content/ContentValues;
    .end local v57           #footerLine:Ljava/lang/String;
    .end local v63           #hasSocial:Z
    .end local v68           #icon:Landroid/graphics/drawable/Drawable;
    .end local v74           #matchBaseOn:Ljava/lang/String;
    .end local v93           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v94           #status:Lcom/android/htccontacts/util/DataStatus;
    .end local v95           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v98           #uid:Ljava/lang/String;
    .end local v99           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_3a
    const/4 v4, 0x1

    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportContactCardTmoIm()Z

    move-result v13

    if-ne v4, v13, :cond_3b

    .line 1790
    const v4, 0x7f0a036e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->getImDatas()Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newTmoVideoCallEntry(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v97

    .line 1791
    const v4, 0x7f0a036f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->getImDatas()Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newTmoImChatEntry(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v96

    .line 1796
    :cond_3b
    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->isSkypeSignIn()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1798
    if-eqz v92, :cond_3c

    .line 1799
    invoke-virtual/range {v92 .. v92}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .local v65, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1800
    .local v51, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1807
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1809
    if-eqz v79, :cond_3d

    invoke-virtual/range {v79 .. v79}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1810
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildAllPhoneData(Ljava/util/ArrayList;)V

    .line 1811
    invoke-static/range {v79 .. v79}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicatePhoneEntries(Ljava/util/ArrayList;)V

    .line 1812
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildCompositeSendMsgDialogData(Ljava/util/ArrayList;)V

    .line 1813
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbCanAddToFavorite:Z

    .line 1814
    invoke-virtual/range {v79 .. v79}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1815
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1820
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_3d
    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/HtcContactInfo;->isSkypeSignIn()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1829
    if-eqz v90, :cond_3e

    .line 1830
    invoke-virtual/range {v90 .. v90}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1831
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1834
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_3e
    if-eqz v91, :cond_3f

    .line 1835
    invoke-virtual/range {v91 .. v91}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1836
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1843
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_3f
    const/4 v4, 0x1

    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportContactCardTmoIm()Z

    move-result v13

    if-ne v4, v13, :cond_40

    .line 1844
    if-eqz v97, :cond_40

    .line 1845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v97

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1850
    :cond_40
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildCompositeSendMessageEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v86

    .line 1851
    if-eqz v86, :cond_41

    invoke-virtual/range {v86 .. v86}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 1852
    invoke-static/range {v86 .. v86}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1853
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbCanAddToFavorite:Z

    .line 1854
    invoke-virtual/range {v86 .. v86}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1855
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1858
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1859
    if-eqz v73, :cond_42

    invoke-virtual/range {v73 .. v73}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 1860
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildAllMailData(Ljava/util/ArrayList;)V

    .line 1861
    invoke-static/range {v73 .. v73}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateMailEntries(Ljava/util/ArrayList;)V

    .line 1862
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbCanAddToFavorite:Z

    .line 1863
    invoke-virtual/range {v73 .. v73}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1864
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1869
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_42
    if-eqz v89, :cond_43

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isTmiProject()Z

    move-result v4

    if-nez v4, :cond_43

    .line 1871
    invoke-static/range {v89 .. v89}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateMailEntries(Ljava/util/ArrayList;)V

    .line 1872
    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1873
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1880
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_43
    if-eqz v81, :cond_44

    invoke-virtual/range {v81 .. v81}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1881
    invoke-static/range {v81 .. v81}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1882
    invoke-virtual/range {v81 .. v81}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1883
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1887
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_44
    if-eqz v43, :cond_45

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_45

    .line 1888
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1889
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1894
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_45
    const/4 v4, 0x1

    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportContactCardTmoIm()Z

    move-result v13

    if-ne v4, v13, :cond_46

    .line 1895
    if-eqz v96, :cond_46

    .line 1896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v96

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1902
    :cond_46
    if-eqz v69, :cond_47

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    .line 1903
    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1904
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1910
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_47
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1911
    if-eqz v52, :cond_48

    .line 1912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    const/16 v52, 0x0

    .line 1918
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_52

    const/16 v64, 0x1

    .line 1919
    .local v64, haveCommunicationItem:Z
    :goto_1c
    if-eqz v64, :cond_49

    .line 1920
    const v4, 0x7f0a01b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->addSeparatorHeader(I)V

    .line 1924
    :cond_49
    invoke-static/range {v54 .. v54}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateHtcEventEntries(Ljava/util/ArrayList;)V

    .line 1925
    if-nez v105, :cond_51

    if-eqz v76, :cond_4a

    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4a
    if-eqz v77, :cond_4b

    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4b
    if-eqz v75, :cond_4c

    invoke-virtual/range {v75 .. v75}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4c
    if-eqz v107, :cond_4d

    invoke-virtual/range {v107 .. v107}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4d
    if-eqz v54, :cond_4e

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4e
    if-eqz v61, :cond_4f

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4f
    if-eqz v108, :cond_50

    invoke-virtual/range {v108 .. v108}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_50
    if-eqz v70, :cond_5c

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 1936
    :cond_51
    if-eqz v64, :cond_53

    .line 1937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    const v13, 0x7f0a01b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    :goto_1d
    sget-boolean v4, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v4, :cond_54

    .line 1947
    if-eqz v108, :cond_54

    invoke-virtual/range {v108 .. v108}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_54

    .line 1949
    invoke-static/range {v108 .. v108}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1950
    invoke-virtual/range {v108 .. v108}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1951
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1918
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v64           #haveCommunicationItem:Z
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_52
    const/16 v64, 0x0

    goto/16 :goto_1c

    .line 1939
    .restart local v64       #haveCommunicationItem:Z
    :cond_53
    const v4, 0x7f0a01b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->addSeparatorHeader(I)V

    goto :goto_1d

    .line 1957
    :cond_54
    if-eqz v70, :cond_55

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_55

    .line 1958
    invoke-static/range {v70 .. v70}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1959
    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1960
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1963
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_55
    if-eqz v76, :cond_56

    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_56

    .line 1964
    invoke-static/range {v76 .. v76}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1965
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1966
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1969
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_56
    if-eqz v77, :cond_57

    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    .line 1970
    invoke-static/range {v77 .. v77}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1971
    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1972
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1975
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_57
    if-eqz v75, :cond_58

    invoke-virtual/range {v75 .. v75}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_58

    .line 1976
    invoke-static/range {v75 .. v75}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1977
    invoke-virtual/range {v75 .. v75}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1978
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1981
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_58
    if-eqz v107, :cond_59

    invoke-virtual/range {v107 .. v107}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_59

    .line 1982
    invoke-static/range {v107 .. v107}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 1983
    invoke-virtual/range {v107 .. v107}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1984
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1987
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_59
    if-eqz v54, :cond_5a

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 1988
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1989
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1992
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_5a
    if-eqz v61, :cond_5b

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 1993
    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1994
    .restart local v51       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 2002
    .end local v51           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v65           #i$:Ljava/util/Iterator;
    :cond_5b
    if-eqz v105, :cond_5c

    .line 2003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    :cond_5c
    if-nez v83, :cond_5d

    if-nez v87, :cond_5d

    if-nez v52, :cond_5d

    if-eqz v88, :cond_61

    .line 2013
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->hasSeparatorHeader()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    const v13, 0x7f0a01b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    :goto_26
    if-eqz v52, :cond_5e

    .line 2019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    :cond_5e
    if-eqz v83, :cond_5f

    invoke-virtual/range {v79 .. v79}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 2022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    :cond_5f
    if-eqz v87, :cond_60

    invoke-virtual/range {v79 .. v79}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_60

    .line 2025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    :cond_60
    if-eqz v88, :cond_61

    .line 2028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, v88

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->setDefaultItemIfNeeded()V

    .line 2034
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbFirstTimeBuildEntriesDone:Z

    if-nez v4, :cond_0

    .line 2035
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbFirstTimeBuildEntriesDone:Z

    goto/16 :goto_0

    .line 2016
    :cond_62
    const v4, 0x7f0a01b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->addSeparatorHeader(I)V

    goto :goto_26
.end method

.method public callDefaultNumber()Z
    .locals 17

    .prologue
    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v8

    .line 2775
    .local v8, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-object v12, v8, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 2776
    .local v12, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2777
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 2778
    .local v9, defaultPhoneEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v11, v9, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 2779
    .local v11, number:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 2780
    const/16 v16, 0x0

    .line 2781
    .local v16, uri:Landroid/net/Uri;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "number"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2782
    .local v15, selection:Ljava/lang/StringBuilder;
    const-string v1, "=?"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v8, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2784
    .local v14, personUrl:Landroid/net/Uri;
    const-string v1, "phones"

    invoke-static {v14, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2785
    .local v2, phoneUrl:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2786
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2787
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2788
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 2790
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2792
    :cond_1
    if-eqz v16, :cond_2

    .line 2793
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v16

    invoke-direct {v10, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2794
    .local v10, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2795
    const-string v1, "number"

    invoke-virtual {v10, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2796
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2797
    const/4 v1, 0x1

    .line 2810
    .end local v2           #phoneUrl:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #defaultPhoneEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #number:Ljava/lang/String;
    .end local v14           #personUrl:Landroid/net/Uri;
    .end local v15           #selection:Ljava/lang/StringBuilder;
    .end local v16           #uri:Landroid/net/Uri;
    :goto_0
    return v1

    .line 2800
    .restart local v9       #defaultPhoneEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .restart local v11       #number:Ljava/lang/String;
    :cond_2
    iget-object v13, v9, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mUri:Landroid/net/Uri;

    .line 2801
    .local v13, numberUri:Landroid/net/Uri;
    if-eqz v13, :cond_3

    .line 2802
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v10, v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2803
    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2804
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2805
    const/4 v1, 0x1

    goto :goto_0

    .line 2808
    .end local v10           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2810
    .end local v9           #defaultPhoneEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v11           #number:Ljava/lang/String;
    .end local v13           #numberUri:Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dataChanged()V
    .locals 5

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->build_RawContactId_Version()Z

    move-result v1

    .line 1188
    .local v1, bReBuildRawContact:Z
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->rebuildContactInfo()Z

    move-result v0

    .line 1191
    .local v0, bReBuildContact:Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->bForceReBuildEntry:Z

    if-eqz v2, :cond_3

    .line 1192
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1193
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1195
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-eqz v2, :cond_2

    .line 1196
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1198
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildEntries()V

    .line 1199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mHasEntities:Z

    .line 1200
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-nez v2, :cond_5

    .line 1201
    new-instance v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 1205
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 1208
    :cond_3
    iget-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->bForceReBuildEntry:Z

    if-eqz v2, :cond_4

    .line 1209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->bForceReBuildEntry:Z

    .line 1212
    :cond_4
    return-void

    .line 1203
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->setSections(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 809
    const/16 v0, 0x1010

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dismissDialog(I)V

    .line 810
    return-void
.end method

.method dismissSaveToSimContactProgress()V
    .locals 2

    .prologue
    .line 4408
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSimContactProgress:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 4409
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSimContactProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 4410
    .local v0, pd:Lcom/htc/app/HtcProgressDialog;
    if-eqz v0, :cond_0

    .line 4411
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 4414
    .end local v0           #pd:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSimContactProgress:Ljava/lang/ref/WeakReference;

    .line 4415
    return-void
.end method

.method editNumberBeforeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->getRawContactIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 747
    .local v0, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 748
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 749
    .local v1, rawContactUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 751
    .end local v1           #rawContactUri:Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSendMethodList()[Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2814
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->haveContactMethods()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2841
    :cond_0
    :goto_0
    return-object v4

    .line 2816
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 2817
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v0, 0x0

    .line 2818
    .local v0, arraySize:I
    iget-object v7, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    move v3, v6

    .line 2819
    .local v3, phoneIndex:I
    :goto_1
    if-eq v5, v3, :cond_2

    .line 2820
    add-int/lit8 v0, v0, 0x1

    .line 2824
    :cond_2
    iget-object v7, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    add-int/lit8 v2, v3, 0x1

    .line 2825
    .local v2, emailIndex:I
    :goto_2
    if-eq v5, v2, :cond_3

    .line 2826
    add-int/lit8 v0, v0, 0x1

    .line 2828
    :cond_3
    if-lez v0, :cond_0

    .line 2829
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 2830
    .local v4, result:[Ljava/lang/CharSequence;
    if-eq v5, v3, :cond_4

    .line 2831
    const v7, 0x7f0a0172

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 2836
    :cond_4
    if-eq v5, v2, :cond_0

    .line 2837
    const v5, 0x7f0a0174

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_0

    .end local v2           #emailIndex:I
    .end local v3           #phoneIndex:I
    .end local v4           #result:[Ljava/lang/CharSequence;
    :cond_5
    move v3, v5

    .line 2818
    goto :goto_1

    .restart local v3       #phoneIndex:I
    :cond_6
    move v2, v5

    .line 2824
    goto :goto_2
.end method

.method protected getSetWidgetIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 3597
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getIntentToAddFavorite(JI)Landroid/content/Intent;

    move-result-object v0

    .line 3598
    .local v0, intentFavorites:Landroid/content/Intent;
    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public launchIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 813
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "HtcViewContactDetailActivity"

    const-string v2, "Trying to launch the action intent but activity handler cannot be found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchProgressDialog()V
    .locals 1

    .prologue
    .line 806
    const/16 v0, 0x1010

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->showDialog(I)V

    .line 807
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 705
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v7, -0x1

    if-ne v7, p2, :cond_0

    .line 706
    const/16 v7, 0x1f4

    if-ne p1, v7, :cond_1

    .line 707
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 708
    .local v4, raw_contact_uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v3, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 709
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 740
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #raw_contact_uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    const/16 v7, 0x1f5

    if-ne v7, p1, :cond_2

    .line 711
    const-string v7, "HtcViewContactDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-eqz p3, :cond_0

    .line 715
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 716
    .local v5, uri:Landroid/net/Uri;
    const-string v7, "HtcViewContactDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " data.getParcelable   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-eqz v5, :cond_0

    .line 718
    invoke-direct {p0, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateRingTone(Landroid/net/Uri;)V

    goto :goto_0

    .line 721
    .end local v5           #uri:Landroid/net/Uri;
    :cond_2
    const/16 v7, 0x2f1

    if-ne v7, p1, :cond_4

    .line 723
    const-string v7, "pure_flickr"

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 725
    .local v0, bPureFlickr:Z
    const-string v7, "rollback_contact"

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 727
    .local v1, bShouldRollBack:Z
    if-eq v9, v0, :cond_3

    if-ne v9, v1, :cond_0

    .line 728
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 729
    .local v6, uriFixed:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 731
    invoke-virtual {v2, v6}, Lcom/android/htccontacts/HtcContactInfo;->forceContactChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 734
    .end local v0           #bPureFlickr:Z
    .end local v1           #bShouldRollBack:Z
    .end local v6           #uriFixed:Landroid/net/Uri;
    :cond_4
    const/16 v7, 0x1f6

    if-ne v7, p1, :cond_5

    .line 735
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->quickEditPhone(Landroid/os/Bundle;)V

    goto :goto_0

    .line 736
    :cond_5
    const/16 v7, 0x1f7

    if-ne v7, p1, :cond_0

    .line 737
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->quickEditMail(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onContactChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "infoReadyType"

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    .line 415
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 416
    const-string v0, "ENTITY_QUERY_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dataChanged()V

    .line 419
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    .line 422
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 34
    .parameter "item"

    .prologue
    .line 2378
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2384
    .local v19, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 2385
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v31

    sub-int v16, v30, v31

    .line 2386
    .local v16, itemPos:I
    if-ltz v16, :cond_1

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v12

    check-cast v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 2388
    .local v12, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v12, :cond_1

    .line 2389
    iget v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 2390
    iget-object v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2391
    .local v20, number:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_0

    const/16 v30, 0x1

    .line 2517
    .end local v7           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .end local v12           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v16           #itemPos:I
    .end local v19           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v20           #number:Ljava/lang/String;
    :goto_0
    return v30

    .line 2380
    :catch_0
    move-exception v9

    .line 2381
    .local v9, e:Ljava/lang/ClassCastException;
    const-string v30, "HtcViewContactDetailActivity"

    const-string v31, "bad menuInfo"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2382
    const/16 v30, 0x0

    goto :goto_0

    .line 2392
    .end local v9           #e:Ljava/lang/ClassCastException;
    .restart local v7       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .restart local v12       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .restart local v16       #itemPos:I
    .restart local v19       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v20       #number:Ljava/lang/String;
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 2517
    .end local v12           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v20           #number:Ljava/lang/String;
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v30, 0x0

    goto :goto_0

    .line 2394
    .restart local v12       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .restart local v20       #number:Ljava/lang/String;
    :pswitch_1
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 2395
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "personId"

    iget-wide v0, v7, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2396
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "hasPhoto"

    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->hasPhoto()Z

    move-result v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2397
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "name"

    iget-object v0, v7, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2398
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2400
    :cond_2
    const/16 v30, 0x1

    goto :goto_0

    .line 2402
    :pswitch_2
    if-eqz v20, :cond_3

    .line 2403
    new-instance v14, Landroid/content/Intent;

    const-string v30, "android.intent.action.SENDTO"

    const-string v31, "smsto"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2405
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2407
    .end local v14           #intent:Landroid/content/Intent;
    :cond_3
    const/16 v30, 0x1

    goto :goto_0

    .line 2409
    :pswitch_3
    iget-wide v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    move-wide/from16 v23, v0

    .line 2410
    .local v23, phoneId:J
    const-wide/high16 v30, 0x4008

    invoke-static/range {v30 .. v31}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 2411
    iget v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move/from16 v3, v30

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->setPrimaryNumberProcess(JILjava/lang/String;)V

    .line 2415
    :goto_2
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2413
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->setPrimaryNumber(JLjava/lang/String;)V

    goto :goto_2

    .line 2417
    .end local v23           #phoneId:J
    :pswitch_4
    iget-wide v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    move-wide/from16 v30, v0

    iget v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getAddSpeedDialIntent(JI)Landroid/content/Intent;

    move-result-object v14

    .line 2418
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2419
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2421
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_5
    const/16 v17, 0x0

    .line 2422
    .local v17, label:Ljava/lang/String;
    iget-object v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2423
    .local v28, temp:Ljava/lang/String;
    const-string v30, " "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 2424
    .local v13, index:I
    if-ltz v13, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_5

    .line 2425
    add-int/lit8 v30, v13, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 2427
    :cond_5
    iget v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v30

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;ILjava/lang/String;)I

    move-result v25

    .line 2428
    .local v25, resultCode:I
    const/16 v30, 0x1

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const/4 v8, 0x1

    .line 2429
    .local v8, count:I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v8}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->showSaveToSIMInformationDialog(II)V

    .line 2430
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2428
    .end local v8           #count:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 2432
    .end local v13           #index:I
    .end local v17           #label:Ljava/lang/String;
    .end local v25           #resultCode:I
    .end local v28           #temp:Ljava/lang/String;
    :pswitch_6
    iget v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    .line 2433
    .local v27, sTargetOriginalType:Ljava/lang/String;
    move-object/from16 v26, v20

    .line 2436
    .local v26, sTargetOriginalNumber:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2437
    .local v5, b:Landroid/os/Bundle;
    const-string v30, "Type"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    const-string v30, "Number"

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 2440
    const-string v30, "SimType"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2442
    :cond_7
    new-instance v15, Landroid/content/Intent;

    const-string v30, "com.android.htccontacts.ACTION_QUICK_EDIT_PHONE"

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2443
    .local v15, intentQuickEdit:Landroid/content/Intent;
    invoke-virtual {v15, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2444
    const/16 v30, 0x1f6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2445
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2448
    .end local v5           #b:Landroid/os/Bundle;
    .end local v15           #intentQuickEdit:Landroid/content/Intent;
    .end local v26           #sTargetOriginalNumber:Ljava/lang/String;
    .end local v27           #sTargetOriginalType:Ljava/lang/String;
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getIpDialItemCount()I

    move-result v30

    if-lez v30, :cond_8

    .line 2449
    if-eqz v20, :cond_1

    .line 2450
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2453
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->launchEditIPDialActivity()V

    goto/16 :goto_1

    .line 2461
    :pswitch_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/htccontacts/HtcContactInfo;

    .line 2462
    .local v18, mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    .line 2464
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 2465
    .local v6, cloneIntent:Landroid/content/Intent;
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Lcom/android/htccontacts/util/PhoneUtils;->attachExtra(Landroid/content/Intent;ZLcom/android/htccontacts/HtcContactInfo;)V

    .line 2466
    invoke-static {v6}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 2481
    .end local v6           #cloneIntent:Landroid/content/Intent;
    .end local v18           #mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :goto_4
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2472
    .restart local v18       #mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_9
    const-string v30, "HtcViewContactDetailActivity"

    const-string v31, "makeCall"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 2476
    .end local v18           #mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :catch_1
    move-exception v9

    .line 2478
    .local v9, e:Ljava/lang/Exception;
    const-string v30, "HtcViewContactDetailActivity"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2484
    .end local v9           #e:Ljava/lang/Exception;
    .end local v20           #number:Ljava/lang/String;
    :cond_a
    iget v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 2485
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v30

    packed-switch v30, :pswitch_data_1

    :pswitch_9
    goto/16 :goto_1

    .line 2502
    :pswitch_a
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2503
    .restart local v5       #b:Landroid/os/Bundle;
    const-string v30, "Mail"

    iget-object v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 2505
    const-string v30, "SimType"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2507
    :cond_b
    new-instance v15, Landroid/content/Intent;

    const-string v30, "com.android.htccontacts.ACTION_QUICK_EDIT_MAIL"

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2508
    .restart local v15       #intentQuickEdit:Landroid/content/Intent;
    invoke-virtual {v15, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2509
    const/16 v30, 0x1f7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2510
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2487
    .end local v5           #b:Landroid/os/Bundle;
    .end local v15           #intentQuickEdit:Landroid/content/Intent;
    :pswitch_b
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    .line 2488
    iget-object v0, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2490
    :cond_c
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2492
    :pswitch_c
    iget-wide v0, v7, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    move-wide/from16 v21, v0

    .line 2493
    .local v21, personId:J
    iget-wide v10, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 2494
    .local v10, emailId:J
    new-instance v29, Landroid/content/ContentValues;

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Landroid/content/ContentValues;-><init>(I)V

    .line 2495
    .local v29, values:Landroid/content/ContentValues;
    const-string v30, "is_super_primary"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2496
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    move-wide/from16 v32, v0

    invoke-static/range {v31 .. v33}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2500
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2485
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreate(Landroid/os/Bundle;)V

    .line 435
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbDestroy:Z

    .line 436
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getCarouselActivity()Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    move-result-object v0

    .line 438
    .local v0, ca:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
    instance-of v2, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v2, :cond_0

    .line 439
    check-cast v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .end local v0           #ca:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 441
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 451
    new-instance v2, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/content/ContentResolver;Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    iput-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mUpdateHandler:Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;

    .line 454
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 455
    .local v1, emptyView:Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->showCatchInfoFromDialerService()V

    .line 462
    :cond_1
    return-void

    .line 444
    .end local v1           #emptyView:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->setDefaultTitleVisibility(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 13
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x5

    const/4 v10, 0x7

    const/4 v9, 0x0

    .line 2290
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 2291
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-nez v1, :cond_1

    .line 2372
    :cond_0
    :goto_0
    return-void

    .line 2295
    :cond_1
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2303
    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 2305
    iget v6, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v5, v6, v7

    .line 2306
    .local v5, itemPos:I
    if-ltz v5, :cond_0

    .line 2307
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 2308
    .local v3, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v3, :cond_0

    .line 2309
    iget v6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v6, v11, :cond_9

    .line 2310
    const v6, 0x7f0a01b4

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 2311
    iget-boolean v6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2312
    const v6, 0x7f0a013b

    invoke-interface {p1, v9, v8, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2315
    :cond_2
    sget-boolean v6, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v6, :cond_3

    .line 2316
    const/16 v6, 0x9

    const/16 v7, 0x9

    const v8, 0x7f0a03ca

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2322
    :cond_3
    const/4 v6, 0x3

    const/4 v7, 0x3

    const v8, 0x7f0a0140

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2325
    const/4 v6, 0x4

    const/4 v7, 0x4

    const v8, 0x7f0a0141

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2328
    iget-boolean v6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-nez v6, :cond_4

    .line 2329
    const v6, 0x7f0a0143

    invoke-interface {p1, v9, v11, v11, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2332
    :cond_4
    const/4 v6, 0x6

    const/4 v7, 0x6

    const v8, 0x7f0a0145

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2334
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->okToSaveSim()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2335
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2336
    const v6, 0x7f0a022b

    invoke-interface {p1, v9, v10, v10, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2348
    :cond_5
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v6

    if-nez v6, :cond_6

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v6, v12, :cond_0

    .line 2351
    :cond_6
    const/16 v6, 0x8

    const/16 v7, 0x8

    const v8, 0x7f0a0391

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2297
    .end local v3           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v4           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v5           #itemPos:I
    :catch_0
    move-exception v2

    .line 2298
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v6, "HtcViewContactDetailActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2337
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v3       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .restart local v4       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v5       #itemPos:I
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2338
    const v6, 0x7f0a022c

    invoke-interface {p1, v9, v10, v10, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 2340
    :cond_8
    const v6, 0x7f0a022a

    invoke-interface {p1, v9, v10, v10, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 2355
    :cond_9
    iget v6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v6, v8, :cond_0

    .line 2360
    iget-boolean v6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-nez v6, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2361
    const v6, 0x7f0a01b4

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 2362
    const v6, 0x7f0a013b

    invoke-interface {p1, v9, v12, v12, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2364
    :cond_a
    iget-boolean v6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-nez v6, :cond_0

    .line 2365
    const v6, 0x7f0a01b4

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 2366
    const v6, 0x7f0a0144

    invoke-interface {p1, v9, v11, v11, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v1, 0x1000

    if-ne v1, p1, :cond_1

    .line 669
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->createSetDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 675
    :cond_0
    :goto_0
    return-object v0

    .line 670
    :cond_1
    const/16 v1, 0x1001

    if-ne v1, p1, :cond_2

    .line 671
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->createSetVIPDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 672
    :cond_2
    const/16 v1, 0x1010

    if-ne v1, p1, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->createProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const v10, 0x2080a68

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 559
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 560
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-nez v0, :cond_0

    .line 600
    :goto_0
    return v8

    .line 561
    :cond_0
    const v3, 0x7f0a013c

    invoke-interface {p1, v7, v8, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x2080324

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 563
    const/4 v3, 0x3

    const v4, 0x7f0a013d

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x2080323

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 567
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_icon_menu_link"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 568
    .local v2, resId:I
    const/4 v3, 0x4

    const v4, 0x7f0a02e1

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v2, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 573
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->isAllFacebookAccountType()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/android/htccontacts/HtcContactInfo;->mSingleIsRestricted:Z

    if-nez v3, :cond_1

    .line 574
    const/4 v3, 0x5

    const v4, 0x7f0a0268

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x2080a74

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 578
    :cond_1
    const/4 v3, 0x7

    const v4, 0x7f0a0145

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x2080a84

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 581
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 582
    const v3, 0x7f0a022b

    invoke-interface {p1, v7, v9, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 592
    :goto_2
    const-wide/high16 v3, 0x4008

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_icon_menu_print"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 594
    .local v1, printResId:I
    const/16 v3, 0x9

    const v4, 0x7f0a03ad

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 597
    .end local v1           #printResId:I
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f0a0138

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x2080a6f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 599
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto/16 :goto_0

    .line 568
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 584
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 585
    const v3, 0x7f0a022c

    invoke-interface {p1, v7, v9, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 588
    :cond_5
    const v3, 0x7f0a022a

    invoke-interface {p1, v7, v9, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 532
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onDestroy()V

    .line 533
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbDestroy:Z

    .line 534
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 535
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCustomNumberLabel:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 536
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 537
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mAllMailData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 538
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 541
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->beforeDelete()V

    .line 543
    iput-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 547
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dismissSaveToSimContactProgress()V

    .line 554
    const/16 v2, 0x1010

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->removeDialog(I)V

    .line 555
    return-void

    .line 549
    :catch_0
    move-exception v1

    .line 551
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcViewContactDetailActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetailInfoInit()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onDetailInfoInit()V

    .line 400
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dataChanged()V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    .line 407
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2729
    packed-switch p1, :pswitch_data_0

    .line 2733
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2731
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2729
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2672
    const/4 v5, 0x0

    .line 2674
    .local v5, result:Z
    packed-switch p1, :pswitch_data_0

    .line 2724
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    :goto_0
    return v6

    .line 2676
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2677
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 2680
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getSelectedItemPosition()I

    move-result v4

    .line 2682
    .local v4, pos:I
    if-lez v4, :cond_1

    .line 2683
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v4, v6

    .line 2684
    if-ltz v4, :cond_1

    .line 2685
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 2686
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget v6, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 2687
    iget-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->phoneIntent:Landroid/content/Intent;

    .line 2688
    .local v3, phoneIntent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 2689
    invoke-static {v3}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 2691
    const/4 v5, 0x1

    .line 2711
    .end local v0           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v3           #phoneIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 2713
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2714
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2715
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2718
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 2693
    .restart local v0       #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .restart local v3       #phoneIntent:Landroid/content/Intent;
    :cond_3
    iget-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2694
    .local v2, numberUri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 2695
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2697
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v6, 0x1080

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2699
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2701
    const/4 v5, 0x1

    goto :goto_1

    .line 2706
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #numberUri:Landroid/net/Uri;
    .end local v3           #phoneIntent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->callDefaultNumber()Z

    move-result v5

    goto :goto_1

    .line 2674
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 17
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2522
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 2523
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v5

    .line 2524
    .local v5, heraderViewCount:I
    sub-int p3, p3, v5

    .line 2525
    if-gez p3, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return-void

    .line 2528
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-static {v13, v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 2529
    .local v4, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v4, :cond_0

    .line 2530
    iget-object v6, v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 2532
    .local v6, intent:Landroid/content/Intent;
    const/4 v13, 0x5

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_3

    .line 2533
    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->isSkypeSignIn()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2534
    iget-object v9, v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 2535
    .local v9, intentSkype:Landroid/content/Intent;
    iget-object v13, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->addSkypeInfoIntoPhoneIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2537
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2538
    :catch_0
    move-exception v3

    .line 2539
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v13, "HtcViewContactDetailActivity"

    const-string v14, "Trying to launch the action intent but activity handler cannot be found"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2542
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v9           #intentSkype:Landroid/content/Intent;
    :cond_2
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/content/Intent;)V

    .line 2543
    .local v1, callThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2549
    .end local v1           #callThread:Ljava/lang/Thread;
    :cond_3
    sget-object v13, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_EDIT:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iget-object v14, v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    if-ne v13, v14, :cond_4

    .line 2550
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v7

    .line 2551
    .local v7, intentEdit:Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 2552
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2555
    .end local v7           #intentEdit:Landroid/content/Intent;
    :cond_4
    const/16 v13, 0x11

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_7

    .line 2567
    const/4 v11, 0x0

    .line 2569
    .local v11, ringtoneUri:Landroid/net/Uri;
    iget-object v13, v2, Lcom/android/htccontacts/HtcContactInfo;->mRingtonePath:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 2570
    iget-object v13, v2, Lcom/android/htccontacts/HtcContactInfo;->mRingtonePath:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v13, v11}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v10

    .line 2573
    .local v10, ringtone:Landroid/media/Ringtone;
    if-eqz v10, :cond_5

    .line 2574
    sget-object v13, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2575
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    .line 2582
    .end local v10           #ringtone:Landroid/media/Ringtone;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getPickRingtoneIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 2583
    .restart local v7       #intentEdit:Landroid/content/Intent;
    const/16 v13, 0x1f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2579
    .end local v7           #intentEdit:Landroid/content/Intent;
    :cond_6
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 2585
    .end local v11           #ringtoneUri:Landroid/net/Uri;
    :cond_7
    const/16 v13, 0x15

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_8

    .line 2586
    const/16 v13, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 2588
    :cond_8
    const/16 v13, 0x1e

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_9

    .line 2589
    const/16 v13, 0x1001

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 2591
    :cond_9
    const/16 v13, 0x19

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_a

    .line 2592
    iget-object v12, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->data:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 2593
    .local v12, sourceId:Ljava/lang/String;
    new-instance v13, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "facebook"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2594
    .end local v12           #sourceId:Ljava/lang/String;
    :cond_a
    const/16 v13, 0x18

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_b

    .line 2595
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v7

    .line 2596
    .restart local v7       #intentEdit:Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 2597
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2599
    .end local v7           #intentEdit:Landroid/content/Intent;
    :cond_b
    const/16 v13, 0x28

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_c

    .line 2600
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getSetWidgetIntent()Landroid/content/Intent;

    move-result-object v8

    .line 2601
    .local v8, intentSetWidget:Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 2602
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2604
    .end local v8           #intentSetWidget:Landroid/content/Intent;
    :cond_c
    const/16 v13, 0x20

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_d

    .line 2605
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->tmoImChat()V

    goto/16 :goto_0

    .line 2606
    :cond_d
    const/16 v13, 0x1f

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_e

    .line 2607
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->tmoVideoCall()V

    goto/16 :goto_0

    .line 2608
    :cond_e
    const/4 v13, 0x7

    iget v14, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v13, v14, :cond_f

    .line 2609
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->postalAction(Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    goto/16 :goto_0

    .line 2621
    :cond_f
    if-eqz v6, :cond_0

    .line 2623
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2625
    :catch_1
    move-exception v3

    .line 2626
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    const-string v13, "HtcViewContactDetailActivity"

    const-string v14, "Trying to launch the action intent but activity handler cannot be found"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 17
    .parameter "item"

    .prologue
    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v8

    .line 830
    .local v8, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 950
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 833
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Edit contact"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v11

    .line 835
    .local v11, intent:Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 836
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 838
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 842
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Delete contact"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v6}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    .line 849
    .local v7, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v7, :cond_1

    .line 850
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    .line 851
    .local v9, d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 854
    .end local v9           #d:Landroid/app/Dialog;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 857
    .end local v7           #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_3
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Add speed dial"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getAddSpeedDialIntent()Landroid/content/Intent;

    move-result-object v13

    .line 859
    .local v13, intentSpeedDial:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 860
    const/4 v1, 0x1

    goto :goto_0

    .line 863
    .end local v13           #intentSpeedDial:Landroid/content/Intent;
    :pswitch_4
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Save to SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v14, v8, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 865
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    iget-object v10, v8, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    .line 866
    .local v10, emaillist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    if-eqz v14, :cond_4

    .line 868
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 869
    .local v16, size:I
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 870
    .local v15, mailSize:I
    :goto_1
    if-nez v16, :cond_3

    .line 871
    const/4 v1, 0x1

    goto :goto_0

    .line 869
    .end local v15           #mailSize:I
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 876
    .restart local v15       #mailSize:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveAllContactPhonesEmailsToSIM()V

    .line 908
    .end local v15           #mailSize:I
    .end local v16           #size:I
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 913
    .end local v10           #emaillist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    :pswitch_5
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Send contact by MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_SEND_CONTACT"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/x-vCard"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 919
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 923
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_6
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Open linked contacts"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 925
    .restart local v11       #intent:Landroid/content/Intent;
    const-class v1, Lcom/android/htccontacts/link/ContactLinkActivity;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 926
    const-string v1, "contact_id"

    iget-wide v2, v8, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v11, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 929
    const/16 v1, 0x2f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 930
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 934
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_7
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Set widget action"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-wide v1, v8, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    iget v3, v8, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getIntentToAddFavorite(JI)Landroid/content/Intent;

    move-result-object v12

    .line 936
    .local v12, intentFavorites:Landroid/content/Intent;
    if-eqz v12, :cond_5

    .line 937
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 939
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 942
    .end local v12           #intentFavorites:Landroid/content/Intent;
    :pswitch_8
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcViewContactDetailActivity]Print"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->printContact()V

    .line 945
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 830
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 522
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onPause()V

    .line 523
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 524
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->setAllInfoDirty()V

    .line 527
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onPostCreate(Landroid/os/Bundle;)V

    .line 477
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const v3, 0x7f0a02e0

    const v4, 0x7f0a02df

    .line 680
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 681
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/16 v5, 0x1000

    if-ne v5, p1, :cond_2

    .line 682
    iget-boolean v2, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    .local v2, isEnable:Z
    move-object v1, p2

    .line 684
    check-cast v1, Lcom/htc/widget/HtcAlertDialog;

    .line 685
    .local v1, htcDialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v2, :cond_1

    .line 688
    .local v3, msgId:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 698
    .end local v1           #htcDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #isEnable:Z
    .end local v3           #msgId:I
    :cond_0
    :goto_1
    return-void

    .restart local v1       #htcDialog:Lcom/htc/widget/HtcAlertDialog;
    .restart local v2       #isEnable:Z
    :cond_1
    move v3, v4

    .line 685
    goto :goto_0

    .line 689
    .end local v1           #htcDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #isEnable:Z
    :cond_2
    const/16 v5, 0x1001

    if-ne v5, p1, :cond_0

    .line 690
    iget-boolean v2, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsVIP:Z

    .restart local v2       #isEnable:Z
    move-object v1, p2

    .line 692
    check-cast v1, Lcom/htc/widget/HtcAlertDialog;

    .line 693
    .restart local v1       #htcDialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v2, :cond_3

    .line 696
    .restart local v3       #msgId:I
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v3           #msgId:I
    :cond_3
    move v3, v4

    .line 693
    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 605
    iget-boolean v6, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    if-eqz v6, :cond_0

    .line 606
    const-string v4, "HtcViewContactDetailActivity"

    const-string v6, "onPrepareOptionsMenu mIsDirty return false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    return v5

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 610
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-nez v1, :cond_1

    .line 611
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    goto :goto_0

    .line 613
    :cond_1
    const/4 v3, 0x0

    .line 614
    .local v3, menuItem:Landroid/view/MenuItem;
    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 615
    if-eqz v3, :cond_2

    .line 616
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->hasPhoneNumber()Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 619
    :cond_2
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 620
    if-eqz v3, :cond_3

    .line 621
    iget-object v6, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    move v2, v4

    .line 623
    .local v2, hasNumber:Z
    :goto_1
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->okToSaveSim()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    move v6, v4

    :goto_2
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    .end local v2           #hasNumber:Z
    :cond_3
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_b

    move v0, v4

    .line 627
    .local v0, bEditable:Z
    :goto_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 628
    if-eqz v3, :cond_4

    .line 629
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 631
    :cond_4
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 632
    if-eqz v3, :cond_5

    .line 633
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 636
    :cond_5
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 637
    if-eqz v3, :cond_6

    .line 638
    iget-wide v6, v1, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_c

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v6

    if-nez v6, :cond_c

    .line 639
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 645
    :cond_6
    :goto_4
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 646
    if-eqz v3, :cond_7

    .line 647
    iget-boolean v6, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mbInGroup:Z

    if-eqz v6, :cond_d

    .line 648
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 654
    :cond_7
    :goto_5
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isWirelessPrintingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 655
    const/4 v3, 0x0

    .line 656
    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 657
    if-eqz v3, :cond_8

    .line 658
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    move v5, v4

    .line 662
    goto/16 :goto_0

    .end local v0           #bEditable:Z
    :cond_9
    move v2, v5

    .line 621
    goto :goto_1

    .restart local v2       #hasNumber:Z
    :cond_a
    move v6, v5

    .line 623
    goto :goto_2

    .end local v2           #hasNumber:Z
    :cond_b
    move v0, v5

    .line 626
    goto :goto_3

    .line 641
    .restart local v0       #bEditable:Z
    :cond_c
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 650
    :cond_d
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 482
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onResume()V

    .line 483
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-nez v0, :cond_1

    .line 484
    const-string v0, "HtcViewContactDetailActivity"

    const-string v1, "onResume mParent NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->finish()V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-nez v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->queryIpDialCursor()V

    .line 494
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getLatestStatus()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mExtStatuses:Ljava/util/ArrayList;

    .line 497
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dataChanged()V

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIsDirty:Z

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method showSaveToSimContactProgress(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4397
    .local p1, progress:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/app/HtcProgressDialog;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dismissSaveToSimContactProgress()V

    .line 4399
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSimContactProgress:Ljava/lang/ref/WeakReference;

    .line 4400
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSimContactProgress:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 4401
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSimContactProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 4402
    .local v0, pd:Lcom/htc/app/HtcProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4403
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 4406
    .end local v0           #pd:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    return-void
.end method

.method public updateStatusResult(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, status:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;>;"
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mExtStatuses:Ljava/util/ArrayList;

    .line 383
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mExtStatuses:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mExtStatuses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity;->mHasStatuses:Z

    .line 386
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$2;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void

    .line 386
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
